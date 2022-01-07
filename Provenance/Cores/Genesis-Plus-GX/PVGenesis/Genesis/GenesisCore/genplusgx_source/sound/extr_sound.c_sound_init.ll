; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_sound.c_sound_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_sound.c_sound_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@system_hw = common dso_local global i32 0, align 4
@SYSTEM_PBC = common dso_local global i32 0, align 4
@SYSTEM_MD = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@YM2612ResetChip = common dso_local global i32 0, align 4
@YM_Reset = common dso_local global i32 0, align 4
@YM2612Update = common dso_local global i32 0, align 4
@YM_Update = common dso_local global i32 0, align 4
@YM2612Write = common dso_local global i32 0, align 4
@YM_Write = common dso_local global i32 0, align 4
@fm_cycles_ratio = common dso_local global i32 0, align 4
@YM2413ResetChip = common dso_local global i32 0, align 4
@YM2413Update = common dso_local global i32 0, align 4
@YM2413Write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sound_init() #0 {
  %1 = load i32, i32* @system_hw, align 4
  %2 = load i32, i32* @SYSTEM_PBC, align 4
  %3 = and i32 %1, %2
  %4 = load i32, i32* @SYSTEM_MD, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = call i32 (...) @YM2612Init()
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 4
  %9 = call i32 @YM2612Config(i32 %8)
  %10 = load i32, i32* @YM2612ResetChip, align 4
  store i32 %10, i32* @YM_Reset, align 4
  %11 = load i32, i32* @YM2612Update, align 4
  store i32 %11, i32* @YM_Update, align 4
  %12 = load i32, i32* @YM2612Write, align 4
  store i32 %12, i32* @YM_Write, align 4
  store i32 1008, i32* @fm_cycles_ratio, align 4
  br label %18

13:                                               ; preds = %0
  %14 = call i32 (...) @YM2413Init()
  %15 = load i32, i32* @YM2413ResetChip, align 4
  store i32 %15, i32* @YM_Reset, align 4
  %16 = load i32, i32* @YM2413Update, align 4
  store i32 %16, i32* @YM_Update, align 4
  %17 = load i32, i32* @YM2413Write, align 4
  store i32 %17, i32* @YM_Write, align 4
  store i32 1080, i32* @fm_cycles_ratio, align 4
  br label %18

18:                                               ; preds = %13, %6
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %21 = call i32 @SN76489_Config(i32 0, i32 %19, i32 %20, i32 255)
  ret void
}

declare dso_local i32 @YM2612Init(...) #1

declare dso_local i32 @YM2612Config(i32) #1

declare dso_local i32 @YM2413Init(...) #1

declare dso_local i32 @SN76489_Config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
