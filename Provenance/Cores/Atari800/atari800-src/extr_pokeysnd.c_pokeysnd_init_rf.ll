; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokeysnd.c_pokeysnd_init_rf.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokeysnd.c_pokeysnd_init_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Update_pokey_sound_rf = common dso_local global i32 0, align 4
@POKEYSND_Update_ptr = common dso_local global i32 0, align 4
@POKEYSND_BIT16 = common dso_local global i32 0, align 4
@pokeysnd_process_16 = common dso_local global i32 0, align 4
@pokeysnd_process_8 = common dso_local global i32 0, align 4
@POKEYSND_Process_ptr = common dso_local global i32 0, align 4
@P4 = common dso_local global i64 0, align 8
@P5 = common dso_local global i64 0, align 8
@P9 = common dso_local global i64 0, align 8
@P17 = common dso_local global i64 0, align 8
@Samp_n_max = common dso_local global i32 0, align 4
@Samp_n_cnt = common dso_local global i64* null, align 8
@POKEY_MAXPOKEYS = common dso_local global i32 0, align 4
@Outvol = common dso_local global i64* null, align 8
@Outbit = common dso_local global i64* null, align 8
@Div_n_cnt = common dso_local global i64* null, align 8
@Div_n_max = common dso_local global i32* null, align 8
@pokeysnd_AUDV = common dso_local global i64* null, align 8
@Num_pokeys = common dso_local global i32 0, align 4
@POKEYSND_UpdateConsol_ptr = common dso_local global i32 0, align 4
@POKEYSND_UpdateSerio = common dso_local global i32 0, align 4
@POKEYSND_UpdateVolOnly = common dso_local global i32 0, align 4
@POKEYSND_samp_freq = common dso_local global i32 0, align 4
@POKEYSND_sampbuf_AUDV = common dso_local global i64* null, align 8
@Update_consol_sound_rf = common dso_local global i32 0, align 4
@Update_serio_sound_rf = common dso_local global i32 0, align 4
@Update_vol_only_sound_rf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @pokeysnd_init_rf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pokeysnd_init_rf(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @Update_pokey_sound_rf, align 4
  store i32 %10, i32* @POKEYSND_Update_ptr, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @POKEYSND_BIT16, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @pokeysnd_process_16, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @pokeysnd_process_8, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* @POKEYSND_Process_ptr, align 4
  store i64 0, i64* @P4, align 8
  store i64 0, i64* @P5, align 8
  store i64 0, i64* @P9, align 8
  store i64 0, i64* @P17, align 8
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 8
  %23 = load i32, i32* %6, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* @Samp_n_max, align 4
  %25 = load i64*, i64** @Samp_n_cnt, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 0, i64* %26, align 8
  %27 = load i64*, i64** @Samp_n_cnt, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  store i64 0, i64* %28, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %55, %19
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @POKEY_MAXPOKEYS, align 4
  %32 = mul nsw i32 %31, 4
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load i64*, i64** @Outvol, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  store i64 0, i64* %38, align 8
  %39 = load i64*, i64** @Outbit, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 0, i64* %42, align 8
  %43 = load i64*, i64** @Div_n_cnt, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 0, i64* %46, align 8
  %47 = load i32*, i32** @Div_n_max, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 2147483647, i32* %50, align 4
  %51 = load i64*, i64** @pokeysnd_AUDV, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %34
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %29

58:                                               ; preds = %29
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* @Num_pokeys, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
