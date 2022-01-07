; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokeysnd.c_POKEYSND_UpdateProcessBuffer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokeysnd.c_POKEYSND_UpdateProcessBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POKEYSND_process_buffer_fill = common dso_local global i32 0, align 4
@POKEYSND_snd_flags = common dso_local global i32 0, align 4
@POKEYSND_BIT16 = common dso_local global i32 0, align 4
@POKEYSND_process_buffer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @POKEYSND_UpdateProcessBuffer() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @Update_synchronized_sound()
  %3 = load i32, i32* @POKEYSND_process_buffer_fill, align 4
  %4 = load i32, i32* @POKEYSND_snd_flags, align 4
  %5 = load i32, i32* @POKEYSND_BIT16, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 2, i32 1
  %10 = sdiv i32 %3, %9
  store i32 %10, i32* %1, align 4
  store i32 0, i32* @POKEYSND_process_buffer_fill, align 4
  %11 = load i64, i64* @POKEYSND_process_buffer, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @SndSave_WriteToSoundFile(i8* %12, i32 %13)
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @Update_synchronized_sound(...) #1

declare dso_local i32 @SndSave_WriteToSoundFile(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
