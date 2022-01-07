; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoMemSetupCD.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_memory.c_PicoMemSetupCD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32*, i32*, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i64* }
%struct.TYPE_7__ = type { i64*, i32, i32, i32, i32, i32, i32 }

@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_MCD_RAMCART = common dso_local global i32 0, align 4
@m68k_read8_map = common dso_local global i64 0, align 8
@PicoReadM68k8_ramc = common dso_local global i64 0, align 8
@m68k_read16_map = common dso_local global i64 0, align 8
@PicoReadM68k16_ramc = common dso_local global i64 0, align 8
@m68k_write8_map = common dso_local global i64 0, align 8
@PicoWriteM68k8_ramc = common dso_local global i64 0, align 8
@m68k_write16_map = common dso_local global i64 0, align 8
@PicoWriteM68k16_ramc = common dso_local global i64 0, align 8
@PicoRead8_mcd_io = common dso_local global i64 0, align 8
@PicoRead16_mcd_io = common dso_local global i64 0, align 8
@PicoWrite8_mcd_io = common dso_local global i64 0, align 8
@PicoWrite16_mcd_io = common dso_local global i64 0, align 8
@s68k_read8_map = common dso_local global i64 0, align 8
@s68k_unmapped_read8 = common dso_local global i64 0, align 8
@s68k_read16_map = common dso_local global i64 0, align 8
@s68k_unmapped_read16 = common dso_local global i64 0, align 8
@s68k_write8_map = common dso_local global i64 0, align 8
@s68k_unmapped_write8 = common dso_local global i64 0, align 8
@s68k_write16_map = common dso_local global i64 0, align 8
@s68k_unmapped_write16 = common dso_local global i64 0, align 8
@Pico_mcd = common dso_local global %struct.TYPE_6__* null, align 8
@PicoWriteS68k8_prgwp = common dso_local global i64 0, align 8
@PicoWriteS68k16_prgwp = common dso_local global i64 0, align 8
@PicoReadS68k8_bram = common dso_local global i64 0, align 8
@PicoReadS68k16_bram = common dso_local global i64 0, align 8
@PicoWriteS68k8_bram = common dso_local global i64 0, align 8
@PicoWriteS68k16_bram = common dso_local global i64 0, align 8
@PicoReadS68k8_pr = common dso_local global i64 0, align 8
@PicoReadS68k16_pr = common dso_local global i64 0, align 8
@PicoWriteS68k8_pr = common dso_local global i64 0, align 8
@PicoWriteS68k16_pr = common dso_local global i64 0, align 8
@FAMEC_FETCHBITS = common dso_local global i32 0, align 4
@M68K_FETCHBANK1 = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@PicoCpuCS68k = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@PicoCpuFM68k = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PicoCpuFS68k = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@s68k_read16 = common dso_local global i32 0, align 4
@s68k_read32 = common dso_local global i32 0, align 4
@s68k_read8 = common dso_local global i32 0, align 4
@s68k_write16 = common dso_local global i32 0, align 4
@s68k_write32 = common dso_local global i32 0, align 4
@s68k_write8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoMemSetupCD() #0 {
  %1 = call i32 (...) @PicoMemSetup()
  %2 = load i32, i32* @PicoOpt, align 4
  %3 = load i32, i32* @POPT_EN_MCD_RAMCART, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %0
  %7 = load i64, i64* @m68k_read8_map, align 8
  %8 = load i64, i64* @PicoReadM68k8_ramc, align 8
  %9 = call i32 @cpu68k_map_set(i64 %7, i32 4194304, i32 8388607, i64 %8, i32 1)
  %10 = load i64, i64* @m68k_read16_map, align 8
  %11 = load i64, i64* @PicoReadM68k16_ramc, align 8
  %12 = call i32 @cpu68k_map_set(i64 %10, i32 4194304, i32 8388607, i64 %11, i32 1)
  %13 = load i64, i64* @m68k_write8_map, align 8
  %14 = load i64, i64* @PicoWriteM68k8_ramc, align 8
  %15 = call i32 @cpu68k_map_set(i64 %13, i32 4194304, i32 8388607, i64 %14, i32 1)
  %16 = load i64, i64* @m68k_write16_map, align 8
  %17 = load i64, i64* @PicoWriteM68k16_ramc, align 8
  %18 = call i32 @cpu68k_map_set(i64 %16, i32 4194304, i32 8388607, i64 %17, i32 1)
  br label %19

19:                                               ; preds = %6, %0
  %20 = load i64, i64* @m68k_read8_map, align 8
  %21 = load i64, i64* @PicoRead8_mcd_io, align 8
  %22 = call i32 @cpu68k_map_set(i64 %20, i32 10551296, i32 10616831, i64 %21, i32 1)
  %23 = load i64, i64* @m68k_read16_map, align 8
  %24 = load i64, i64* @PicoRead16_mcd_io, align 8
  %25 = call i32 @cpu68k_map_set(i64 %23, i32 10551296, i32 10616831, i64 %24, i32 1)
  %26 = load i64, i64* @m68k_write8_map, align 8
  %27 = load i64, i64* @PicoWrite8_mcd_io, align 8
  %28 = call i32 @cpu68k_map_set(i64 %26, i32 10551296, i32 10616831, i64 %27, i32 1)
  %29 = load i64, i64* @m68k_write16_map, align 8
  %30 = load i64, i64* @PicoWrite16_mcd_io, align 8
  %31 = call i32 @cpu68k_map_set(i64 %29, i32 10551296, i32 10616831, i64 %30, i32 1)
  %32 = load i64, i64* @s68k_read8_map, align 8
  %33 = load i64, i64* @s68k_unmapped_read8, align 8
  %34 = call i32 @cpu68k_map_set(i64 %32, i32 0, i32 16777215, i64 %33, i32 1)
  %35 = load i64, i64* @s68k_read16_map, align 8
  %36 = load i64, i64* @s68k_unmapped_read16, align 8
  %37 = call i32 @cpu68k_map_set(i64 %35, i32 0, i32 16777215, i64 %36, i32 1)
  %38 = load i64, i64* @s68k_write8_map, align 8
  %39 = load i64, i64* @s68k_unmapped_write8, align 8
  %40 = call i32 @cpu68k_map_set(i64 %38, i32 0, i32 16777215, i64 %39, i32 1)
  %41 = load i64, i64* @s68k_write16_map, align 8
  %42 = load i64, i64* @s68k_unmapped_write16, align 8
  %43 = call i32 @cpu68k_map_set(i64 %41, i32 0, i32 16777215, i64 %42, i32 1)
  %44 = load i64, i64* @s68k_read8_map, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @cpu68k_map_set(i64 %44, i32 0, i32 524287, i64 %47, i32 0)
  %49 = load i64, i64* @s68k_read16_map, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @cpu68k_map_set(i64 %49, i32 0, i32 524287, i64 %52, i32 0)
  %54 = load i64, i64* @s68k_write8_map, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @cpu68k_map_set(i64 %54, i32 0, i32 524287, i64 %57, i32 0)
  %59 = load i64, i64* @s68k_write16_map, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @cpu68k_map_set(i64 %59, i32 0, i32 524287, i64 %62, i32 0)
  %64 = load i64, i64* @s68k_write8_map, align 8
  %65 = load i64, i64* @PicoWriteS68k8_prgwp, align 8
  %66 = call i32 @cpu68k_map_set(i64 %64, i32 0, i32 131071, i64 %65, i32 1)
  %67 = load i64, i64* @s68k_write16_map, align 8
  %68 = load i64, i64* @PicoWriteS68k16_prgwp, align 8
  %69 = call i32 @cpu68k_map_set(i64 %67, i32 0, i32 131071, i64 %68, i32 1)
  %70 = load i64, i64* @s68k_read8_map, align 8
  %71 = load i64, i64* @PicoReadS68k8_bram, align 8
  %72 = call i32 @cpu68k_map_set(i64 %70, i32 16646144, i32 16711679, i64 %71, i32 1)
  %73 = load i64, i64* @s68k_read16_map, align 8
  %74 = load i64, i64* @PicoReadS68k16_bram, align 8
  %75 = call i32 @cpu68k_map_set(i64 %73, i32 16646144, i32 16711679, i64 %74, i32 1)
  %76 = load i64, i64* @s68k_write8_map, align 8
  %77 = load i64, i64* @PicoWriteS68k8_bram, align 8
  %78 = call i32 @cpu68k_map_set(i64 %76, i32 16646144, i32 16711679, i64 %77, i32 1)
  %79 = load i64, i64* @s68k_write16_map, align 8
  %80 = load i64, i64* @PicoWriteS68k16_bram, align 8
  %81 = call i32 @cpu68k_map_set(i64 %79, i32 16646144, i32 16711679, i64 %80, i32 1)
  %82 = load i64, i64* @s68k_read8_map, align 8
  %83 = load i64, i64* @PicoReadS68k8_pr, align 8
  %84 = call i32 @cpu68k_map_set(i64 %82, i32 16711680, i32 16777215, i64 %83, i32 1)
  %85 = load i64, i64* @s68k_read16_map, align 8
  %86 = load i64, i64* @PicoReadS68k16_pr, align 8
  %87 = call i32 @cpu68k_map_set(i64 %85, i32 16711680, i32 16777215, i64 %86, i32 1)
  %88 = load i64, i64* @s68k_write8_map, align 8
  %89 = load i64, i64* @PicoWriteS68k8_pr, align 8
  %90 = call i32 @cpu68k_map_set(i64 %88, i32 16711680, i32 16777215, i64 %89, i32 1)
  %91 = load i64, i64* @s68k_write16_map, align 8
  %92 = load i64, i64* @PicoWriteS68k16_pr, align 8
  %93 = call i32 @cpu68k_map_set(i64 %91, i32 16711680, i32 16777215, i64 %92, i32 1)
  %94 = call i32 @remap_word_ram(i32 1)
  ret void
}

declare dso_local i32 @PicoMemSetup(...) #1

declare dso_local i32 @cpu68k_map_set(i64, i32, i32, i64, i32) #1

declare dso_local i32 @remap_word_ram(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
