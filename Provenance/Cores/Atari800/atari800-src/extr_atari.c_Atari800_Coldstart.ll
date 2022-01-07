; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_Coldstart.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_Coldstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GTIA_consol_override = common dso_local global i32 0, align 4
@AF80_enabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Atari800_Coldstart() #0 {
  %1 = call i32 (...) @PBI_Reset()
  %2 = call i32 (...) @PIA_Reset()
  %3 = call i32 (...) @ANTIC_Reset()
  %4 = call i32 (...) @CPU_Reset()
  %5 = call i32 (...) @CARTRIDGE_ColdStart()
  %6 = call i32 @MEMORY_dPutByte(i32 580, i32 1)
  store i32 2, i32* @GTIA_consol_override, align 4
  ret void
}

declare dso_local i32 @PBI_Reset(...) #1

declare dso_local i32 @PIA_Reset(...) #1

declare dso_local i32 @ANTIC_Reset(...) #1

declare dso_local i32 @CPU_Reset(...) #1

declare dso_local i32 @CARTRIDGE_ColdStart(...) #1

declare dso_local i32 @MEMORY_dPutByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
