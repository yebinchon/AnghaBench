; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_system.c_audio_set_equalizer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_system.c_audio_set_equalizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double, double }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@eq = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@snd = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audio_set_equalizer() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 4), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 3), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @snd, i32 0, i32 0), align 4
  %4 = call i32 @init_3band_state(%struct.TYPE_6__* @eq, i32 %1, i32 %2, i32 %3)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 2), align 8
  %6 = sitofp i64 %5 to double
  %7 = fdiv double %6, 1.000000e+02
  store double %7, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eq, i32 0, i32 0), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 1), align 8
  %9 = sitofp i64 %8 to double
  %10 = fdiv double %9, 1.000000e+02
  store double %10, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eq, i32 0, i32 1), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 8
  %12 = sitofp i64 %11 to double
  %13 = fdiv double %12, 1.000000e+02
  store double %13, double* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @eq, i32 0, i32 2), align 8
  ret void
}

declare dso_local i32 @init_3band_state(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
