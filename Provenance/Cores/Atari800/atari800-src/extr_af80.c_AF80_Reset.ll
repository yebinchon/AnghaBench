; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_af80.c_AF80_Reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_af80.c_AF80_Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@af80_screen = common dso_local global i32 0, align 4
@af80_attrib = common dso_local global i32 0, align 4
@rom_bank_select = common dso_local global i64 0, align 8
@not_rom_output_enable = common dso_local global i64 0, align 8
@not_right_cartridge_rd4_control = common dso_local global i64 0, align 8
@not_enable_2k_character_ram = common dso_local global i64 0, align 8
@not_enable_2k_attribute_ram = common dso_local global i64 0, align 8
@not_enable_crtc_registers = common dso_local global i64 0, align 8
@not_enable_80_column_output = common dso_local global i64 0, align 8
@video_bank_select = common dso_local global i64 0, align 8
@crtreg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AF80_Reset() #0 {
  %1 = load i32, i32* @af80_screen, align 4
  %2 = call i32 @memset(i32 %1, i32 0, i32 2048)
  %3 = load i32, i32* @af80_attrib, align 4
  %4 = call i32 @memset(i32 %3, i32 0, i32 2048)
  store i64 0, i64* @rom_bank_select, align 8
  store i64 0, i64* @not_rom_output_enable, align 8
  store i64 0, i64* @not_right_cartridge_rd4_control, align 8
  store i64 0, i64* @not_enable_2k_character_ram, align 8
  store i64 0, i64* @not_enable_2k_attribute_ram, align 8
  store i64 0, i64* @not_enable_crtc_registers, align 8
  store i64 0, i64* @not_enable_80_column_output, align 8
  store i64 0, i64* @video_bank_select, align 8
  %5 = load i32, i32* @crtreg, align 4
  %6 = call i32 @memset(i32 %5, i32 0, i32 64)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
