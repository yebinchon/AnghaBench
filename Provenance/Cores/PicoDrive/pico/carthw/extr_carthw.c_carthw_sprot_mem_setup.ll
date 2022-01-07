; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_sprot_mem_setup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_sprot_mem_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@M68K_BANK_MASK = common dso_local global i32 0, align 4
@m68k_read8_map = common dso_local global i32 0, align 4
@PicoRead8_sprot = common dso_local global i32 0, align 4
@m68k_read16_map = common dso_local global i32 0, align 4
@PicoRead16_sprot = common dso_local global i32 0, align 4
@m68k_write8_map = common dso_local global i32 0, align 4
@PicoWrite8_sprot = common dso_local global i32 0, align 4
@m68k_write16_map = common dso_local global i32 0, align 4
@PicoWrite16_sprot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @carthw_sprot_mem_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carthw_sprot_mem_setup() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 4
  %3 = load i32, i32* @M68K_BANK_MASK, align 4
  %4 = add nsw i32 %2, %3
  %5 = load i32, i32* @M68K_BANK_MASK, align 4
  %6 = xor i32 %5, -1
  %7 = and i32 %4, %6
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @m68k_read8_map, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @PicoRead8_sprot, align 4
  %11 = call i32 @cpu68k_map_set(i32 %8, i32 %9, i32 8388607, i32 %10, i32 1)
  %12 = load i32, i32* @m68k_read16_map, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @PicoRead16_sprot, align 4
  %15 = call i32 @cpu68k_map_set(i32 %12, i32 %13, i32 8388607, i32 %14, i32 1)
  %16 = load i32, i32* @m68k_write8_map, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @PicoWrite8_sprot, align 4
  %19 = call i32 @cpu68k_map_set(i32 %16, i32 %17, i32 8388607, i32 %18, i32 1)
  %20 = load i32, i32* @m68k_write16_map, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @PicoWrite16_sprot, align 4
  %23 = call i32 @cpu68k_map_set(i32 %20, i32 %21, i32 8388607, i32 %22, i32 1)
  %24 = load i32, i32* @m68k_read8_map, align 4
  %25 = load i32, i32* @PicoRead8_sprot, align 4
  %26 = call i32 @cpu68k_map_set(i32 %24, i32 10551296, i32 10616831, i32 %25, i32 1)
  %27 = load i32, i32* @m68k_read16_map, align 4
  %28 = load i32, i32* @PicoRead16_sprot, align 4
  %29 = call i32 @cpu68k_map_set(i32 %27, i32 10551296, i32 10616831, i32 %28, i32 1)
  %30 = load i32, i32* @m68k_write8_map, align 4
  %31 = load i32, i32* @PicoWrite8_sprot, align 4
  %32 = call i32 @cpu68k_map_set(i32 %30, i32 10551296, i32 10616831, i32 %31, i32 1)
  %33 = load i32, i32* @m68k_write16_map, align 4
  %34 = load i32, i32* @PicoWrite16_sprot, align 4
  %35 = call i32 @cpu68k_map_set(i32 %33, i32 10551296, i32 10616831, i32 %34, i32 1)
  ret void
}

declare dso_local i32 @cpu68k_map_set(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
