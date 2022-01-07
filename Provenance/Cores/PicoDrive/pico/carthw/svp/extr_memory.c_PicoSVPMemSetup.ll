; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_memory.c_PicoSVPMemSetup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_memory.c_PicoSVPMemSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@m68k_read8_map = common dso_local global i32 0, align 4
@svp = common dso_local global %struct.TYPE_2__* null, align 8
@m68k_read16_map = common dso_local global i32 0, align 4
@m68k_write8_map = common dso_local global i32 0, align 4
@m68k_write16_map = common dso_local global i32 0, align 4
@PicoWrite16_dram = common dso_local global i32 0, align 4
@PicoRead16_svpca1 = common dso_local global i32 0, align 4
@PicoRead16_svpca2 = common dso_local global i32 0, align 4
@PicoRead8_svpr = common dso_local global i32 0, align 4
@PicoRead16_svpr = common dso_local global i32 0, align 4
@PicoWrite8_io = common dso_local global i32 0, align 4
@PicoWrite16_svpr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoSVPMemSetup() #0 {
  %1 = load i32, i32* @m68k_read8_map, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @svp, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @cpu68k_map_set(i32 %1, i32 3145728, i32 3276799, i32 %4, i32 0)
  %6 = load i32, i32* @m68k_read16_map, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @svp, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @cpu68k_map_set(i32 %6, i32 3145728, i32 3276799, i32 %9, i32 0)
  %11 = load i32, i32* @m68k_write8_map, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @svp, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cpu68k_map_set(i32 %11, i32 3145728, i32 3276799, i32 %14, i32 0)
  %16 = load i32, i32* @m68k_write16_map, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @svp, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpu68k_map_set(i32 %16, i32 3145728, i32 3276799, i32 %19, i32 0)
  %21 = load i32, i32* @m68k_write16_map, align 4
  %22 = load i32, i32* @PicoWrite16_dram, align 4
  %23 = call i32 @cpu68k_map_set(i32 %21, i32 3145728, i32 3211263, i32 %22, i32 1)
  %24 = load i32, i32* @m68k_read16_map, align 4
  %25 = load i32, i32* @PicoRead16_svpca1, align 4
  %26 = call i32 @cpu68k_map_set(i32 %24, i32 3735552, i32 3801087, i32 %25, i32 1)
  %27 = load i32, i32* @m68k_read16_map, align 4
  %28 = load i32, i32* @PicoRead16_svpca2, align 4
  %29 = call i32 @cpu68k_map_set(i32 %27, i32 3801088, i32 3866623, i32 %28, i32 1)
  %30 = load i32, i32* @m68k_read8_map, align 4
  %31 = load i32, i32* @PicoRead8_svpr, align 4
  %32 = call i32 @cpu68k_map_set(i32 %30, i32 10551296, i32 10616831, i32 %31, i32 1)
  %33 = load i32, i32* @m68k_read16_map, align 4
  %34 = load i32, i32* @PicoRead16_svpr, align 4
  %35 = call i32 @cpu68k_map_set(i32 %33, i32 10551296, i32 10616831, i32 %34, i32 1)
  %36 = load i32, i32* @m68k_write8_map, align 4
  %37 = load i32, i32* @PicoWrite8_io, align 4
  %38 = call i32 @cpu68k_map_set(i32 %36, i32 10551296, i32 10616831, i32 %37, i32 1)
  %39 = load i32, i32* @m68k_write16_map, align 4
  %40 = load i32, i32* @PicoWrite16_svpr, align 4
  %41 = call i32 @cpu68k_map_set(i32 %39, i32 10551296, i32 10616831, i32 %40, i32 1)
  ret void
}

declare dso_local i32 @cpu68k_map_set(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
