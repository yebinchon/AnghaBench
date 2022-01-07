; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_paging_map_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_paging_map_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8* }

@vm_paging_base_address = common dso_local global i64 0, align 8
@kernel_map = common dso_local global i32 0, align 4
@VM_PAGING_NUM_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"vm_paging_map_init: kernel_map full\0A\00", align 1
@kernel_object = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_paging_map_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = load i64, i64* @vm_paging_base_address, align 8
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  store i64 0, i64* %2, align 8
  %8 = load i32, i32* @kernel_map, align 4
  %9 = load i32, i32* @VM_PAGING_NUM_PAGES, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = mul nsw i32 %9, %10
  %12 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %13 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %14 = call i64 @vm_map_find_space(i32 %8, i64* %2, i32 %11, i32 0, i32 0, i32 %12, i32 %13, %struct.TYPE_5__** %3)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @KERN_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = load i32, i32* @kernel_object, align 4
  %23 = call i32 @VME_OBJECT_SET(%struct.TYPE_5__* %21, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = load i64, i64* %2, align 8
  %26 = call i32 @VME_OFFSET_SET(%struct.TYPE_5__* %24, i64 %25)
  %27 = load i8*, i8** @VM_PROT_NONE, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @VM_PROT_NONE, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @kernel_object, align 4
  %37 = call i32 @vm_object_reference(i32 %36)
  %38 = load i32, i32* @kernel_map, align 4
  %39 = call i32 @vm_map_unlock(i32 %38)
  %40 = load i64, i64* @vm_paging_base_address, align 8
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i64, i64* %2, align 8
  store i64 %44, i64* @vm_paging_base_address, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vm_map_find_space(i32, i64*, i32, i32, i32, i32, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @VME_OBJECT_SET(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @VME_OFFSET_SET(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @vm_object_reference(i32) #1

declare dso_local i32 @vm_map_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
