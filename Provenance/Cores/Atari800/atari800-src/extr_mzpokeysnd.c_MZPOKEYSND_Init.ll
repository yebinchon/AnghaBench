; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_MZPOKEYSND_Init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_MZPOKEYSND_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@snd_quality = common dso_local global i32 0, align 4
@Update_pokey_sound_mz = common dso_local global i32 0, align 4
@POKEYSND_Update_ptr = common dso_local global i32 0, align 4
@POKEYSND_BIT16 = common dso_local global i32 0, align 4
@mzpokeysnd_process_16 = common dso_local global i32 0, align 4
@mzpokeysnd_process_8 = common dso_local global i32 0, align 4
@POKEYSND_Process_ptr = common dso_local global i32 0, align 4
@pokey_frq_ideal = common dso_local global i64 0, align 8
@POKEYSND_playback_freq = common dso_local global double 0.000000e+00, align 8
@pokey_frq = common dso_local global double 0.000000e+00, align 8
@filter_size = common dso_local global i32 0, align 4
@audible_frq = common dso_local global i32 0, align 4
@pokey_states = common dso_local global i64 0, align 8
@num_cur_pokeys = common dso_local global i32 0, align 4
@POKEYSND_UpdateConsol_ptr = common dso_local global i32 0, align 4
@POKEYSND_UpdateSerio = common dso_local global i32 0, align 4
@POKEYSND_UpdateVolOnly = common dso_local global i32 0, align 4
@POKEYSND_samp_freq = common dso_local global i32 0, align 4
@Update_consol_sound_mz = common dso_local global i32 0, align 4
@Update_serio_sound_mz = common dso_local global i32 0, align 4
@Update_vol_only_sound_mz = common dso_local global i32 0, align 4
@filter_11 = common dso_local global i32 0, align 4
@filter_11_8 = common dso_local global i32 0, align 4
@filter_22 = common dso_local global i32 0, align 4
@filter_22_8 = common dso_local global i32 0, align 4
@filter_44 = common dso_local global i32 0, align 4
@filter_44_8 = common dso_local global i32 0, align 4
@filter_48 = common dso_local global i32 0, align 4
@filter_48_8 = common dso_local global i32 0, align 4
@filter_8 = common dso_local global i32 0, align 4
@filter_8_8 = common dso_local global i32 0, align 4
@filter_data = common dso_local global i32 0, align 4
@filter_size_11 = common dso_local global i32 0, align 4
@filter_size_11_8 = common dso_local global i32 0, align 4
@filter_size_22 = common dso_local global i32 0, align 4
@filter_size_22_8 = common dso_local global i32 0, align 4
@filter_size_44 = common dso_local global i32 0, align 4
@filter_size_44_8 = common dso_local global i32 0, align 4
@filter_size_48 = common dso_local global i32 0, align 4
@filter_size_48_8 = common dso_local global i32 0, align 4
@filter_size_8 = common dso_local global i32 0, align 4
@filter_size_8_8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MZPOKEYSND_Init(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  store i32 %12, i32* @snd_quality, align 4
  %13 = load i32, i32* @Update_pokey_sound_mz, align 4
  store i32 %13, i32* @POKEYSND_Update_ptr, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @POKEYSND_BIT16, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @mzpokeysnd_process_16, align 4
  br label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @mzpokeysnd_process_8, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* @POKEYSND_Process_ptr, align 4
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %25 [
  ]

25:                                               ; preds = %22
  %26 = load i64, i64* @pokey_frq_ideal, align 8
  %27 = sitofp i64 %26 to double
  %28 = load double, double* @POKEYSND_playback_freq, align 8
  %29 = fdiv double %27, %28
  %30 = fadd double %29, 5.000000e-01
  %31 = fptosi double %30 to i32
  %32 = sitofp i32 %31 to double
  %33 = load double, double* @POKEYSND_playback_freq, align 8
  %34 = fmul double %32, %33
  store double %34, double* @pokey_frq, align 8
  %35 = load double, double* @POKEYSND_playback_freq, align 8
  %36 = load double, double* @pokey_frq, align 8
  %37 = fdiv double %35, %36
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @remez_filter_table(double %37, double* %11, i32 %38)
  store i32 %39, i32* @filter_size, align 4
  %40 = load double, double* %11, align 8
  %41 = load double, double* @pokey_frq, align 8
  %42 = fmul double %40, %41
  %43 = fptosi double %42 to i32
  store i32 %43, i32* @audible_frq, align 4
  br label %44

44:                                               ; preds = %25
  %45 = call i32 (...) @build_poly4()
  %46 = call i32 (...) @build_poly5()
  %47 = call i32 (...) @build_poly9()
  %48 = call i32 (...) @build_poly17()
  %49 = load i64, i64* @pokey_states, align 8
  %50 = call i32 @ResetPokeyState(i64 %49)
  %51 = load i64, i64* @pokey_states, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i32 @ResetPokeyState(i64 %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* @num_cur_pokeys, align 4
  ret i32 0
}

declare dso_local i32 @remez_filter_table(double, double*, i32) #1

declare dso_local i32 @build_poly4(...) #1

declare dso_local i32 @build_poly5(...) #1

declare dso_local i32 @build_poly9(...) #1

declare dso_local i32 @build_poly17(...) #1

declare dso_local i32 @ResetPokeyState(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
