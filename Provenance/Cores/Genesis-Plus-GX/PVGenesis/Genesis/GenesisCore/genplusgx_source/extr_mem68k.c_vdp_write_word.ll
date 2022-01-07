; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_vdp_write_word.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_vdp_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@m68k = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdp_write_word(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 252
  switch i32 %6, label %25 [
    i32 0, label %7
    i32 4, label %10
    i32 16, label %13
    i32 20, label %13
    i32 24, label %18
    i32 28, label %22
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @vdp_68k_data_w(i32 %8)
  br label %29

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @vdp_68k_ctrl_w(i32 %11)
  br label %29

13:                                               ; preds = %2, %2
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68k, i32 0, i32 0), align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 255
  %17 = call i32 @SN76489_Write(i32 %14, i32 %16)
  br label %29

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @m68k_unused_16_w(i32 %19, i32 %20)
  br label %29

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @vdp_test_w(i32 %23)
  br label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @m68k_lockup_w_16(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %22, %18, %13, %10, %7
  ret void
}

declare dso_local i32 @vdp_68k_data_w(i32) #1

declare dso_local i32 @vdp_68k_ctrl_w(i32) #1

declare dso_local i32 @SN76489_Write(i32, i32) #1

declare dso_local i32 @m68k_unused_16_w(i32, i32) #1

declare dso_local i32 @vdp_test_w(i32) #1

declare dso_local i32 @m68k_lockup_w_16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
