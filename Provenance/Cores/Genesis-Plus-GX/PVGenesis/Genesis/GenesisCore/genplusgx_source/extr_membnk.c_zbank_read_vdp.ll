; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_membnk.c_zbank_read_vdp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_membnk.c_zbank_read_vdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Z80 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zbank_read_vdp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 253
  switch i32 %5, label %33 [
    i32 0, label %6
    i32 1, label %9
    i32 4, label %12
    i32 5, label %18
    i32 8, label %22
    i32 12, label %22
    i32 9, label %26
    i32 13, label %26
    i32 24, label %30
    i32 25, label %30
    i32 28, label %30
    i32 29, label %30
  ]

6:                                                ; preds = %1
  %7 = call i32 (...) @vdp_68k_data_r()
  %8 = ashr i32 %7, 8
  store i32 %8, i32* %2, align 4
  br label %36

9:                                                ; preds = %1
  %10 = call i32 (...) @vdp_68k_data_r()
  %11 = and i32 %10, 255
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 4
  %14 = call i32 @vdp_68k_ctrl_r(i32 %13)
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 3
  %17 = or i32 %16, 252
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 4
  %20 = call i32 @vdp_68k_ctrl_r(i32 %19)
  %21 = and i32 %20, 255
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %1, %1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 4
  %24 = call i32 @vdp_hvc_r(i32 %23)
  %25 = ashr i32 %24, 8
  store i32 %25, i32* %2, align 4
  br label %36

26:                                               ; preds = %1, %1
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 4
  %28 = call i32 @vdp_hvc_r(i32 %27)
  %29 = and i32 %28, 255
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %1, %1, %1, %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @zbank_unused_r(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @zbank_lockup_r(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %30, %26, %22, %18, %12, %9, %6
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @vdp_68k_data_r(...) #1

declare dso_local i32 @vdp_68k_ctrl_r(i32) #1

declare dso_local i32 @vdp_hvc_r(i32) #1

declare dso_local i32 @zbank_unused_r(i32) #1

declare dso_local i32 @zbank_lockup_r(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
