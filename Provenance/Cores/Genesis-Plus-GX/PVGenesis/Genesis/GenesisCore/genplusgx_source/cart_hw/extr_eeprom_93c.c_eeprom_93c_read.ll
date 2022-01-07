; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_93c.c_eeprom_93c_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_eeprom_93c.c_eeprom_93c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@eeprom_93c = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BIT_CS = common dso_local global i32 0, align 4
@BIT_DATA = common dso_local global i32 0, align 4
@BIT_CLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @eeprom_93c_read() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eeprom_93c, i32 0, i32 0), align 4
  %2 = load i32, i32* @BIT_CS, align 4
  %3 = shl i32 %1, %2
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eeprom_93c, i32 0, i32 1), align 4
  %5 = load i32, i32* @BIT_DATA, align 4
  %6 = shl i32 %4, %5
  %7 = or i32 %3, %6
  %8 = load i32, i32* @BIT_CLK, align 4
  %9 = shl i32 1, %8
  %10 = or i32 %7, %9
  %11 = trunc i32 %10 to i8
  ret i8 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
