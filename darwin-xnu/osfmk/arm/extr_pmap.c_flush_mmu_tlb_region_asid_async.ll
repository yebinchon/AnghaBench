; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_flush_mmu_tlb_region_asid_async.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_flush_mmu_tlb_region_asid_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@ARM_TT_L3_SHIFT = common dso_local global i32 0, align 4
@ARM64_FULL_TLB_FLUSH_THRESHOLD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@TLBI_ASID_SHIFT = common dso_local global i32 0, align 4
@ARM_FULL_TLB_FLUSH_THRESHOLD = common dso_local global i32 0, align 4
@ARM_SMALL_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_3__*)* @flush_mmu_tlb_region_asid_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_mmu_tlb_region_asid_async(i32 %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ARM_TT_L3_SHIFT, align 4
  %18 = lshr i32 %16, %17
  %19 = load i32, i32* @ARM64_FULL_TLB_FLUSH_THRESHOLD, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %3
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TRUE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %21
  %32 = load i64, i64* @TRUE, align 8
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (...) @flush_mmu_tlb_async()
  br label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @TLBI_ASID_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = call i32 @flush_mmu_tlb_asid_async(i32 %41)
  br label %43

43:                                               ; preds = %38, %36
  br label %68

44:                                               ; preds = %3
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @tlbi_asid(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @tlbi_addr(i32 %47)
  %49 = or i32 %46, %48
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @tlbi_asid(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @tlbi_addr(i32 %52)
  %54 = or i32 %51, %53
  store i32 %54, i32* %7, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TRUE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %44
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @flush_mmu_tlb_allentries_async(i32 %61, i32 %62)
  br label %68

64:                                               ; preds = %44
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @flush_mmu_tlb_entries_async(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %43, %64, %60
  ret void
}

declare dso_local i32 @flush_mmu_tlb_async(...) #1

declare dso_local i32 @flush_mmu_tlb_asid_async(i32) #1

declare dso_local i32 @tlbi_asid(i32) #1

declare dso_local i32 @tlbi_addr(i32) #1

declare dso_local i32 @flush_mmu_tlb_allentries_async(i32, i32) #1

declare dso_local i32 @flush_mmu_tlb_entries_async(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
