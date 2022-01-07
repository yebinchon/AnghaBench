; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_vdp_write_byte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_vdp_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@m68k = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdp_write_byte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 252
  switch i32 %6, label %41 [
    i32 0, label %7
    i32 4, label %13
    i32 16, label %19
    i32 20, label %19
    i32 24, label %31
    i32 28, label %35
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 %8, 8
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @vdp_68k_data_w(i32 %11)
  br label %45

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 %14, 8
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @vdp_68k_ctrl_w(i32 %17)
  br label %45

19:                                               ; preds = %2, %2
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @m68k, i32 0, i32 0), align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @SN76489_Write(i32 %24, i32 %25)
  br label %45

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @m68k_unused_8_w(i32 %28, i32 %29)
  br label %45

31:                                               ; preds = %2
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @m68k_unused_8_w(i32 %32, i32 %33)
  br label %45

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @vdp_test_w(i32 %39)
  br label %45

41:                                               ; preds = %2
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @m68k_lockup_w_8(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %35, %31, %27, %23, %13, %7
  ret void
}

declare dso_local i32 @vdp_68k_data_w(i32) #1

declare dso_local i32 @vdp_68k_ctrl_w(i32) #1

declare dso_local i32 @SN76489_Write(i32, i32) #1

declare dso_local i32 @m68k_unused_8_w(i32, i32) #1

declare dso_local i32 @vdp_test_w(i32) #1

declare dso_local i32 @m68k_lockup_w_8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
