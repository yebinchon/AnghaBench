; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_update_cache_attributes_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_update_cache_attributes_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@PHYS_CACHEABILITY_MASK = common dso_local global i32 0, align 4
@INTEL_PTE_NCACHE = common dso_local global i32 0, align 4
@INTEL_EPT_NCACHE = common dso_local global i32 0, align 4
@INTEL_EPT_WB = common dso_local global i32 0, align 4
@PMAP_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [99 x i8] c"pmap_update_cache_attributes_locked: Missing PTE, pmap: %p, pn: 0x%x vaddr: 0x%llx kernel_pmap: %p\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@INTEL_EPT_CACHE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_update_cache_attributes_locked(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @IS_MANAGED_PAGE(i32 %14)
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @PHYS_CACHEABILITY_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @INTEL_PTE_NCACHE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @INTEL_EPT_NCACHE, align 4
  store i32 %29, i32* %13, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @INTEL_EPT_WB, align 4
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* %3, align 4
  %34 = call %struct.TYPE_5__* @pai_to_pvh(i32 %33)
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %5, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PMAP_NULL, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %94

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %6, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = bitcast %struct.TYPE_5__* %42 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %7, align 8
  br label %44

44:                                               ; preds = %88, %40
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %10, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = call i64 @PVE_VA(%struct.TYPE_5__* %48)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32* @pmap_pte(i64 %50, i64 %51)
  store i32* %52, i32** %11, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = icmp eq i32* null, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* @kernel_pmap, align 4
  %60 = call i32 @panic(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i64 %56, i32 %57, i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %44
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @is_ept_pmap(i64 %62)
  store i32 %63, i32* %12, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = call i64 @queue_next(i32* %65)
  %67 = inttoptr i64 %66 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %8, align 8
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %61
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* @PHYS_CACHEABILITY_MASK, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @pmap_update_pte(i32* %71, i32 %72, i32 %73)
  br label %80

75:                                               ; preds = %61
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* @INTEL_EPT_CACHE_MASK, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @pmap_update_pte(i32* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @PMAP_UPDATE_TLBS(i64 %81, i64 %82, i64 %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %7, align 8
  br label %88

88:                                               ; preds = %80
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = bitcast %struct.TYPE_6__* %89 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %6, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = icmp ne %struct.TYPE_5__* %90, %91
  br i1 %92, label %44, label %93

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %32
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IS_MANAGED_PAGE(i32) #1

declare dso_local %struct.TYPE_5__* @pai_to_pvh(i32) #1

declare dso_local i64 @PVE_VA(%struct.TYPE_5__*) #1

declare dso_local i32* @pmap_pte(i64, i64) #1

declare dso_local i32 @panic(i8*, i64, i32, i64, i32) #1

declare dso_local i32 @is_ept_pmap(i64) #1

declare dso_local i64 @queue_next(i32*) #1

declare dso_local i32 @pmap_update_pte(i32*, i32, i32) #1

declare dso_local i32 @PMAP_UPDATE_TLBS(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
