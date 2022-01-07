; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_OSMalloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_OSMalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@OSMT_PAGEABLE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_KALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @OSMalloc(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = call i32 @OSMalloc_Tagref(%struct.TYPE_5__* %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @OSMT_PAGEABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @PAGE_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load i32, i32* @kernel_map, align 4
  %23 = bitcast i8** %5 to i32*
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @kmem_alloc_pageable_external(i32 %22, i32* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @KERN_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i8* null, i8** %5, align 8
  br label %29

29:                                               ; preds = %28, %21
  br label %34

30:                                               ; preds = %15, %2
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @VM_KERN_MEMORY_KALLOC, align 4
  %33 = call i8* @kalloc_tag_bt(i32 %31, i32 %32)
  store i8* %33, i8** %5, align 8
  br label %34

34:                                               ; preds = %30, %29
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = call i32 @OSMalloc_Tagrele(%struct.TYPE_5__* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i8*, i8** %5, align 8
  ret i8* %41
}

declare dso_local i32 @OSMalloc_Tagref(%struct.TYPE_5__*) #1

declare dso_local i32 @kmem_alloc_pageable_external(i32, i32*, i32) #1

declare dso_local i8* @kalloc_tag_bt(i32, i32) #1

declare dso_local i32 @OSMalloc_Tagrele(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
