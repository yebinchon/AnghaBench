; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_kalloc_bucket_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_kalloc_bucket_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@MAX_SIZE_ZDLUT = common dso_local global i64 0, align 8
@kalloc_max_prerounded = common dso_local global i64 0, align 8
@k_zindex_start = common dso_local global i32 0, align 4
@kalloc_kernmap_size = common dso_local global i64 0, align 8
@kernel_map = common dso_local global i32 0, align 4
@kalloc_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kalloc_bucket_size(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @MAX_SIZE_ZDLUT, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call %struct.TYPE_4__* @get_zone_dlut(i64 %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %2, align 8
  br label %39

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @kalloc_max_prerounded, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = load i32, i32* @k_zindex_start, align 4
  %22 = call %struct.TYPE_4__* @get_zone_search(i64 %20, i32 %21)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %2, align 8
  br label %39

26:                                               ; preds = %15
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @kalloc_kernmap_size, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @kernel_map, align 4
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @kalloc_map, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load i64, i64* %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @VM_MAP_PAGE_MASK(i32 %36)
  %38 = call i64 @vm_map_round_page(i64 %35, i32 %37)
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %34, %19, %9
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

declare dso_local %struct.TYPE_4__* @get_zone_dlut(i64) #1

declare dso_local %struct.TYPE_4__* @get_zone_search(i64, i32) #1

declare dso_local i64 @vm_map_round_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
