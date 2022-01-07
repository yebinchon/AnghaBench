; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_gg_port_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_gg_port_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@system_hw = common dso_local global i32 0, align 4
@SYSTEM_GG = common dso_local global i32 0, align 4
@Z80 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SMS_CYCLE_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @z80_gg_port_w(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 193
  switch i32 %6, label %43 [
    i32 0, label %7
    i32 1, label %7
    i32 64, label %33
    i32 65, label %33
    i32 128, label %37
    i32 129, label %40
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 255
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load i32, i32* @system_hw, align 4
  %14 = load i32, i32* @SYSTEM_GG, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i8, i8* %4, align 1
  %19 = call i32 @io_gg_write(i32 %17, i8 zeroext %18)
  br label %48

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 255
  %23 = load i8, i8* %4, align 1
  %24 = call i32 @z80_unused_port_w(i32 %22, i8 zeroext %23)
  br label %48

25:                                               ; preds = %7
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 1
  %28 = load i8, i8* %4, align 1
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 8
  %30 = load i64, i64* @SMS_CYCLE_OFFSET, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @io_z80_write(i32 %27, i8 zeroext %28, i64 %31)
  br label %48

33:                                               ; preds = %2, %2
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 8
  %35 = load i8, i8* %4, align 1
  %36 = call i32 @SN76489_Write(i64 %34, i8 zeroext %35)
  br label %48

37:                                               ; preds = %2
  %38 = load i8, i8* %4, align 1
  %39 = call i32 @vdp_z80_data_w(i8 zeroext %38)
  br label %48

40:                                               ; preds = %2
  %41 = load i8, i8* %4, align 1
  %42 = call i32 @vdp_sms_ctrl_w(i8 zeroext %41)
  br label %48

43:                                               ; preds = %2
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 255
  %46 = load i8, i8* %4, align 1
  %47 = call i32 @z80_unused_port_w(i32 %45, i8 zeroext %46)
  br label %48

48:                                               ; preds = %43, %40, %37, %33, %25, %20, %16
  ret void
}

declare dso_local i32 @io_gg_write(i32, i8 zeroext) #1

declare dso_local i32 @z80_unused_port_w(i32, i8 zeroext) #1

declare dso_local i32 @io_z80_write(i32, i8 zeroext, i64) #1

declare dso_local i32 @SN76489_Write(i64, i8 zeroext) #1

declare dso_local i32 @vdp_z80_data_w(i8 zeroext) #1

declare dso_local i32 @vdp_sms_ctrl_w(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
