; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_Update_consol_sound_mz.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_Update_consol_sound_mz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ANTIC_CPU_CLOCK = common dso_local global i32 0, align 4
@CONSOLE_VOL = common dso_local global i32 0, align 4
@GTIA_speaker = common dso_local global i32 0, align 4
@POKEYSND_SAMPBUF_MAX = common dso_local global i64 0, align 8
@POKEYSND_samp_consol_val = common dso_local global i32 0, align 4
@POKEYSND_samp_freq = common dso_local global i32 0, align 4
@POKEYSND_sampbuf_cnt = common dso_local global i32* null, align 8
@POKEYSND_sampbuf_last = common dso_local global i32 0, align 4
@POKEYSND_sampbuf_lastval = common dso_local global i32 0, align 4
@POKEYSND_sampbuf_ptr = common dso_local global i64 0, align 8
@POKEYSND_sampbuf_rptr = common dso_local global i64 0, align 8
@POKEYSND_sampbuf_val = common dso_local global i32* null, align 8
@pokey_states = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Update_consol_sound_mz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Update_consol_sound_mz(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
