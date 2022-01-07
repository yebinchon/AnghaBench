; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_recalc_step_based_on_length_of_action.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_recalc_step_based_on_length_of_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@_21_SECONDS = common dso_local global i64 0, align 8
@_18_SECONDS = common dso_local global i64 0, align 8
@_15_SECONDS = common dso_local global i64 0, align 8
@_12_SECONDS = common dso_local global i64 0, align 8
@_9_SECONDS = common dso_local global i64 0, align 8
@_6_SECONDS = common dso_local global i64 0, align 8
@_3_SECONDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_7__*)* @recalc_step_based_on_length_of_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @recalc_step_based_on_length_of_action(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca float, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load float, float* %6, align 4
  store float %7, float* %3, align 4
  %8 = call %struct.TYPE_8__* (...) @global_get_ptr()
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %106

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @_21_SECONDS, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = fmul float %21, 1.000000e+06
  store float %22, float* %3, align 4
  br label %105

23:                                               ; preds = %11
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @_18_SECONDS, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load float, float* %32, align 4
  %34 = fmul float %33, 1.000000e+05
  store float %34, float* %3, align 4
  br label %104

35:                                               ; preds = %23
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @_15_SECONDS, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load float, float* %44, align 4
  %46 = fmul float %45, 1.000000e+04
  store float %46, float* %3, align 4
  br label %103

47:                                               ; preds = %35
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @_12_SECONDS, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load float, float* %56, align 4
  %58 = fmul float %57, 1.000000e+03
  store float %58, float* %3, align 4
  br label %102

59:                                               ; preds = %47
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @_9_SECONDS, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load float, float* %68, align 4
  %70 = fmul float %69, 1.000000e+02
  store float %70, float* %3, align 4
  br label %101

71:                                               ; preds = %59
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @_6_SECONDS, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load float, float* %80, align 4
  %82 = fmul float %81, 1.000000e+01
  store float %82, float* %3, align 4
  br label %100

83:                                               ; preds = %71
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @_3_SECONDS, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load float, float* %92, align 4
  %94 = fmul float %93, 5.000000e+00
  store float %94, float* %3, align 4
  br label %99

95:                                               ; preds = %83
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load float, float* %97, align 4
  store float %98, float* %3, align 4
  br label %99

99:                                               ; preds = %95, %90
  br label %100

100:                                              ; preds = %99, %78
  br label %101

101:                                              ; preds = %100, %66
  br label %102

102:                                              ; preds = %101, %54
  br label %103

103:                                              ; preds = %102, %42
  br label %104

104:                                              ; preds = %103, %30
  br label %105

105:                                              ; preds = %104, %18
  br label %106

106:                                              ; preds = %105, %1
  %107 = load float, float* %3, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load float, float* %109, align 4
  %111 = fcmp olt float %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load float, float* %114, align 4
  br label %118

116:                                              ; preds = %106
  %117 = load float, float* %3, align 4
  br label %118

118:                                              ; preds = %116, %112
  %119 = phi float [ %115, %112 ], [ %117, %116 ]
  ret float %119
}

declare dso_local %struct.TYPE_8__* @global_get_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
