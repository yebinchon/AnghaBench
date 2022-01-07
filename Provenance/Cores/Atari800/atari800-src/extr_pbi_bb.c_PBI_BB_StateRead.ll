; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_bb.c_PBI_BB_StateRead.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_bb.c_PBI_BB_StateRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PBI_BB_enabled = common dso_local global i64 0, align 8
@bb_scsi_disk_filename = common dso_local global i32 0, align 4
@bb_rom_filename = common dso_local global i32 0, align 4
@bb_ram_bank_offset = common dso_local global i64 0, align 8
@bb_ram = common dso_local global i32* null, align 8
@BB_RAM_SIZE = common dso_local global i32 0, align 4
@bb_rom_bank = common dso_local global i32 0, align 4
@bb_rom_high_bit = common dso_local global i64 0, align 8
@bb_PCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PBI_BB_StateRead() #0 {
  %1 = call i32 @StateSav_ReadINT(i64* @PBI_BB_enabled, i32 1)
  %2 = load i64, i64* @PBI_BB_enabled, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  %5 = load i32, i32* @bb_scsi_disk_filename, align 4
  %6 = call i32 @StateSav_ReadFNAME(i32 %5)
  %7 = load i32, i32* @bb_rom_filename, align 4
  %8 = call i32 @StateSav_ReadFNAME(i32 %7)
  %9 = call i32 (...) @init_bb()
  %10 = call i32 @StateSav_ReadINT(i64* @bb_ram_bank_offset, i32 1)
  %11 = load i32*, i32** @bb_ram, align 8
  %12 = load i32, i32* @BB_RAM_SIZE, align 4
  %13 = call i32 @StateSav_ReadUBYTE(i32* %11, i32 %12)
  %14 = call i32 @StateSav_ReadUBYTE(i32* @bb_rom_bank, i32 1)
  %15 = call i32 @StateSav_ReadINT(i64* @bb_rom_high_bit, i32 1)
  %16 = call i32 @StateSav_ReadUBYTE(i32* @bb_PCR, i32 1)
  br label %17

17:                                               ; preds = %4, %0
  ret void
}

declare dso_local i32 @StateSav_ReadINT(i64*, i32) #1

declare dso_local i32 @StateSav_ReadFNAME(i32) #1

declare dso_local i32 @init_bb(...) #1

declare dso_local i32 @StateSav_ReadUBYTE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
