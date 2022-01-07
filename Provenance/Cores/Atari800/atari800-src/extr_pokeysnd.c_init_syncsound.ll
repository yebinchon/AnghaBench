; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokeysnd.c_init_syncsound.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokeysnd.c_init_syncsound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POKEYSND_playback_freq = common dso_local global i64 0, align 8
@Atari800_tv_mode = common dso_local global i32 0, align 4
@Atari800_TV_PAL = common dso_local global i32 0, align 4
@Atari800_FPS_PAL = common dso_local global double 0.000000e+00, align 8
@Atari800_FPS_NTSC = common dso_local global double 0.000000e+00, align 8
@ticks_per_sample = common dso_local global double 0.000000e+00, align 8
@samp_pos = common dso_local global double 0.000000e+00, align 8
@Generate_sync_rf = common dso_local global i32 0, align 4
@POKEYSND_GenerateSync = common dso_local global i32 0, align 4
@speaker = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_syncsound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_syncsound() #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @POKEYSND_playback_freq, align 8
  %4 = sitofp i64 %3 to double
  %5 = load i32, i32* @Atari800_tv_mode, align 4
  %6 = load i32, i32* @Atari800_TV_PAL, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load double, double* @Atari800_FPS_PAL, align 8
  br label %12

10:                                               ; preds = %0
  %11 = load double, double* @Atari800_FPS_NTSC, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi double [ %9, %8 ], [ %11, %10 ]
  %14 = fdiv double %4, %13
  store double %14, double* %1, align 8
  %15 = load i32, i32* @Atari800_tv_mode, align 4
  %16 = mul nsw i32 %15, 114
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = uitofp i32 %17 to double
  %19 = load double, double* %1, align 8
  %20 = fdiv double %18, %19
  store double %20, double* @ticks_per_sample, align 8
  store double 0.000000e+00, double* @samp_pos, align 8
  %21 = load i32, i32* @Generate_sync_rf, align 4
  store i32 %21, i32* @POKEYSND_GenerateSync, align 4
  store i64 0, i64* @speaker, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
