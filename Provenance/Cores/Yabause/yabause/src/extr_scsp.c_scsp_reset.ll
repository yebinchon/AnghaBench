; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_scsp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@scsp_reg = common dso_local global %struct.TYPE_5__* null, align 8
@scsp = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SCSP_MIDI_IN_EMP = common dso_local global i32 0, align 4
@SCSP_MIDI_OUT_EMP = common dso_local global i32 0, align 4
@SCSP_ENV_DE = common dso_local global i32 0, align 4
@SCSP_ENV_RELEASE = common dso_local global i32 0, align 4
@scsp_lfo_sawt_f = common dso_local global i32 0, align 4
@scsp_lfo_sawt_e = common dso_local global i32 0, align 4
@new_scsp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsp_reset() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @scsp_reg, align 8
  %3 = call i32 @memset(%struct.TYPE_5__* %2, i32 0, i32 4096)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 27), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 26), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 25), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 24), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 23), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 22), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 21), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 20), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 19), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 18), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 17), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 16), align 8
  %4 = load i32, i32* @SCSP_MIDI_IN_EMP, align 4
  %5 = load i32, i32* @SCSP_MIDI_OUT_EMP, align 4
  %6 = or i32 %4, %5
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 15), align 8
  store i32 65280, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 1), align 4
  store i32 65280, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 2), align 8
  store i32 65280, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 3), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 14), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 13), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 12), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 11), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 10), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 9), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 5), align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 4), align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i64 0
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %1, align 8
  br label %9

9:                                                ; preds = %37, %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scsp, i32 0, i32 4), align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 32
  %13 = icmp ult %struct.TYPE_5__* %10, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = call i32 @memset(%struct.TYPE_5__* %15, i32 0, i32 32)
  %17 = load i32, i32* @SCSP_ENV_DE, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @SCSP_ENV_RELEASE, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 31, i32* %24, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 31, i32* %26, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i32 31, i32* %28, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i32 31, i32* %30, align 4
  %31 = load i32, i32* @scsp_lfo_sawt_f, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @scsp_lfo_sawt_e, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %14
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 1
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %1, align 8
  br label %9

40:                                               ; preds = %9
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
