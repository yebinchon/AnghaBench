; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_gg_port_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_gg_port_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@system_hw = common dso_local global i32 0, align 4
@SYSTEM_GG = common dso_local global i32 0, align 4
@Z80 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @z80_gg_port_r(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 193
  switch i32 %5, label %38 [
    i32 0, label %6
    i32 1, label %6
    i32 64, label %22
    i32 65, label %28
    i32 128, label %33
    i32 129, label %35
  ]

6:                                                ; preds = %1, %1
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 255
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load i32, i32* @system_hw, align 4
  %13 = load i32, i32* @SYSTEM_GG, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call zeroext i8 @io_gg_read(i32 %16)
  store i8 %17, i8* %2, align 1
  br label %59

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %6
  %20 = load i32, i32* %3, align 4
  %21 = call zeroext i8 @z80_unused_port_r(i32 %20)
  store i8 %21, i8* %2, align 1
  br label %59

22:                                               ; preds = %1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 4
  %24 = call i32 @vdp_hvc_r(i32 %23)
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 255
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %2, align 1
  br label %59

28:                                               ; preds = %1
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 4
  %30 = call i32 @vdp_hvc_r(i32 %29)
  %31 = and i32 %30, 255
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %2, align 1
  br label %59

33:                                               ; preds = %1
  %34 = call zeroext i8 (...) @vdp_z80_data_r()
  store i8 %34, i8* %2, align 1
  br label %59

35:                                               ; preds = %1
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 4
  %37 = call zeroext i8 @vdp_z80_ctrl_r(i32 %36)
  store i8 %37, i8* %2, align 1
  br label %59

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 255
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 192
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 193
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 220
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, 221
  br i1 %51, label %52, label %56

52:                                               ; preds = %49, %46, %43, %38
  %53 = load i32, i32* %3, align 4
  %54 = and i32 %53, 1
  %55 = call zeroext i8 @io_z80_read(i32 %54)
  store i8 %55, i8* %2, align 1
  br label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %3, align 4
  %58 = call zeroext i8 @z80_unused_port_r(i32 %57)
  store i8 %58, i8* %2, align 1
  br label %59

59:                                               ; preds = %56, %52, %35, %33, %28, %22, %19, %15
  %60 = load i8, i8* %2, align 1
  ret i8 %60
}

declare dso_local zeroext i8 @io_gg_read(i32) #1

declare dso_local zeroext i8 @z80_unused_port_r(i32) #1

declare dso_local i32 @vdp_hvc_r(i32) #1

declare dso_local zeroext i8 @vdp_z80_data_r(...) #1

declare dso_local zeroext i8 @vdp_z80_ctrl_r(i32) #1

declare dso_local zeroext i8 @io_z80_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
