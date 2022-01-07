; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_phys_attribute_test.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_phys_attribute_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@vm_page_fictitious_addr = common dso_local global i64 0, align 8
@PHYS_MODIFIED = common dso_local global i32 0, align 4
@PHYS_REFERENCED = common dso_local global i32 0, align 4
@vm_page_guard_addr = common dso_local global i64 0, align 8
@pmap_phys_attributes = common dso_local global i32* null, align 8
@PMAP_NULL = common dso_local global i64 0, align 8
@INTEL_EPT_REF = common dso_local global i32 0, align 4
@INTEL_EPT_MOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phys_attribute_test(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %14 = call i32 (...) @pmap_intr_assert()
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @vm_page_fictitious_addr, align 8
  %17 = icmp ne i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PHYS_MODIFIED, align 4
  %22 = load i32, i32* @PHYS_REFERENCED, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @vm_page_guard_addr, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %138

33:                                               ; preds = %2
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @ppn_to_pai(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @IS_MANAGED_PAGE(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %138

40:                                               ; preds = %33
  %41 = load i32*, i32** @pmap_phys_attributes, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %3, align 4
  br label %138

52:                                               ; preds = %40
  %53 = load i32, i32* %9, align 4
  %54 = call %struct.TYPE_5__* @pai_to_pvh(i32 %53)
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @LOCK_PVH(i32 %55)
  %57 = load i32*, i32** @pmap_phys_attributes, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %127

67:                                               ; preds = %52
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PMAP_NULL, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %127

73:                                               ; preds = %67
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = bitcast %struct.TYPE_5__* %74 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %7, align 8
  br label %76

76:                                               ; preds = %124, %73
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @is_ept_pmap(i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = call i32 @PVE_VA(%struct.TYPE_6__* %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32* @pmap_pte(i32 %84, i32 %85)
  store i32* %86, i32** %8, align 8
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %76
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %110

96:                                               ; preds = %76
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @INTEL_EPT_REF, align 4
  %100 = load i32, i32* @INTEL_EPT_MOD, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = call i32 @ept_refmod_to_physmap(i32 %102)
  %104 = load i32, i32* @PHYS_MODIFIED, align 4
  %105 = load i32, i32* @PHYS_REFERENCED, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %96, %89
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = call i64 @queue_next(i32* %112)
  %114 = inttoptr i64 %113 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %7, align 8
  br label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = bitcast %struct.TYPE_5__* %121 to %struct.TYPE_6__*
  %123 = icmp ne %struct.TYPE_6__* %120, %122
  br label %124

124:                                              ; preds = %119, %115
  %125 = phi i1 [ false, %115 ], [ %123, %119 ]
  br i1 %125, label %76, label %126

126:                                              ; preds = %124
  br label %127

127:                                              ; preds = %126, %67, %52
  %128 = load i32, i32* %11, align 4
  %129 = load i32*, i32** @pmap_phys_attributes, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %128
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @UNLOCK_PVH(i32 %135)
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %127, %50, %39, %32
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @pmap_intr_assert(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ppn_to_pai(i64) #1

declare dso_local i32 @IS_MANAGED_PAGE(i32) #1

declare dso_local %struct.TYPE_5__* @pai_to_pvh(i32) #1

declare dso_local i32 @LOCK_PVH(i32) #1

declare dso_local i32 @is_ept_pmap(i32) #1

declare dso_local i32 @PVE_VA(%struct.TYPE_6__*) #1

declare dso_local i32* @pmap_pte(i32, i32) #1

declare dso_local i32 @ept_refmod_to_physmap(i32) #1

declare dso_local i64 @queue_next(i32*) #1

declare dso_local i32 @UNLOCK_PVH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
