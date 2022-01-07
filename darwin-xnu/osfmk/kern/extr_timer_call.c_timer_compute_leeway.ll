; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_compute_leeway.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_compute_leeway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i32, i32, i64, i32, i64, i32, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@TIMER_CALL_USER_MASK = common dso_local global i32 0, align 4
@BASEPRI_RTQUEUES = common dso_local global i64 0, align 8
@TIMER_CALL_USER_CRITICAL = common dso_local global i32 0, align 4
@tcoal_prio_params = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@rt_tcl = common dso_local global i32 0, align 4
@TASK_POLICY_DARWIN_BG = common dso_local global i32 0, align 4
@TIMER_CALL_USER_BACKGROUND = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bg_tcl = common dso_local global i32 0, align 4
@MINPRI_KERNEL = common dso_local global i64 0, align 8
@kt_tcl = common dso_local global i32 0, align 4
@TH_MODE_FIXED = common dso_local global i64 0, align 8
@fp_tcl = common dso_local global i32 0, align 4
@qos_tcl = common dso_local global i32 0, align 4
@TH_MODE_TIMESHARE = common dso_local global i64 0, align 8
@ts_tcl = common dso_local global i32 0, align 4
@nc_tcl = common dso_local global i32 0, align 4
@TIMER_CALL_SYS_BACKGROUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32*, i64*, i32*)* @timer_compute_leeway to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timer_compute_leeway(%struct.TYPE_6__* %0, i32 %1, i32* %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @TIMER_CALL_USER_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %123

19:                                               ; preds = %5
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @BASEPRI_RTQUEUES, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @TIMER_CALL_USER_CRITICAL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23, %19
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 0), align 8
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 1), align 8
  %31 = load i64*, i64** %9, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* @rt_tcl, align 4
  %33 = call i32 @TCOAL_PRIO_STAT(i32 %32)
  br label %122

34:                                               ; preds = %23
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = load i32, i32* @TASK_POLICY_DARWIN_BG, align 4
  %37 = call i64 @proc_get_effective_thread_policy(%struct.TYPE_6__* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @TIMER_CALL_USER_BACKGROUND, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %39, %34
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i64 @tcoal_qos_adjust(%struct.TYPE_6__* %44, i32* %45, i64* %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i64*, i64** %9, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 2), align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %142

56:                                               ; preds = %50
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 3), align 8
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 2), align 8
  %64 = load i64*, i64** %9, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i32, i32* @bg_tcl, align 4
  %66 = call i32 @TCOAL_PRIO_STAT(i32 %65)
  br label %121

67:                                               ; preds = %39
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @MINPRI_KERNEL, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 4), align 4
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 5), align 8
  %75 = load i64*, i64** %9, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i32, i32* @kt_tcl, align 4
  %77 = call i32 @TCOAL_PRIO_STAT(i32 %76)
  br label %120

78:                                               ; preds = %67
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TH_MODE_FIXED, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 6), align 8
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 7), align 8
  %88 = load i64*, i64** %9, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i32, i32* @fp_tcl, align 4
  %90 = call i32 @TCOAL_PRIO_STAT(i32 %89)
  br label %119

91:                                               ; preds = %78
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i64*, i64** %9, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = call i64 @tcoal_qos_adjust(%struct.TYPE_6__* %92, i32* %93, i64* %94, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @qos_tcl, align 4
  %100 = call i32 @TCOAL_PRIO_STAT(i32 %99)
  br label %118

101:                                              ; preds = %91
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TH_MODE_TIMESHARE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 8), align 8
  %109 = load i32*, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 9), align 8
  %111 = load i64*, i64** %9, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i32, i32* @ts_tcl, align 4
  %113 = call i32 @TCOAL_PRIO_STAT(i32 %112)
  br label %117

114:                                              ; preds = %101
  %115 = load i32, i32* @nc_tcl, align 4
  %116 = call i32 @TCOAL_PRIO_STAT(i32 %115)
  br label %117

117:                                              ; preds = %114, %107
  br label %118

118:                                              ; preds = %117, %98
  br label %119

119:                                              ; preds = %118, %84
  br label %120

120:                                              ; preds = %119, %71
  br label %121

121:                                              ; preds = %120, %60
  br label %122

122:                                              ; preds = %121, %27
  br label %142

123:                                              ; preds = %5
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @TIMER_CALL_SYS_BACKGROUND, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 3), align 8
  %129 = load i32*, i32** %8, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 2), align 8
  %131 = load i64*, i64** %9, align 8
  store i64 %130, i64* %131, align 8
  %132 = load i32, i32* @bg_tcl, align 4
  %133 = call i32 @TCOAL_PRIO_STAT(i32 %132)
  br label %141

134:                                              ; preds = %123
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 4), align 4
  %136 = load i32*, i32** %8, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tcoal_prio_params, i32 0, i32 5), align 8
  %138 = load i64*, i64** %9, align 8
  store i64 %137, i64* %138, align 8
  %139 = load i32, i32* @kt_tcl, align 4
  %140 = call i32 @TCOAL_PRIO_STAT(i32 %139)
  br label %141

141:                                              ; preds = %134, %127
  br label %142

142:                                              ; preds = %55, %141, %122
  ret void
}

declare dso_local i32 @TCOAL_PRIO_STAT(i32) #1

declare dso_local i64 @proc_get_effective_thread_policy(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @tcoal_qos_adjust(%struct.TYPE_6__*, i32*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
