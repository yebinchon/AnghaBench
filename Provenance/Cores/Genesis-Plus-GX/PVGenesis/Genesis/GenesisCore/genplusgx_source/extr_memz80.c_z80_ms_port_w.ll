; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_ms_port_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_ms_port_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@Z80 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SMS_CYCLE_OFFSET = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @z80_ms_port_w(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 193
  switch i32 %6, label %25 [
    i32 0, label %7
    i32 1, label %7
    i32 64, label %15
    i32 65, label %15
    i32 128, label %19
    i32 129, label %22
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 1
  %10 = load i8, i8* %4, align 1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 8
  %12 = load i64, i64* @SMS_CYCLE_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @io_z80_write(i32 %9, i8 zeroext %10, i64 %13)
  br label %44

15:                                               ; preds = %2, %2
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 8
  %17 = load i8, i8* %4, align 1
  %18 = call i32 @SN76489_Write(i64 %16, i8 zeroext %17)
  br label %44

19:                                               ; preds = %2
  %20 = load i8, i8* %4, align 1
  %21 = call i32 @vdp_z80_data_w(i8 zeroext %20)
  br label %44

22:                                               ; preds = %2
  %23 = load i8, i8* %4, align 1
  %24 = call i32 @vdp_sms_ctrl_w(i8 zeroext %23)
  br label %44

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @config, i32 0, i32 0), align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 8
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 3
  %37 = load i8, i8* %4, align 1
  %38 = call i32 @fm_write(i64 %34, i32 %36, i8 zeroext %37)
  br label %44

39:                                               ; preds = %29, %25
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 255
  %42 = load i8, i8* %4, align 1
  %43 = call i32 @z80_unused_port_w(i32 %41, i8 zeroext %42)
  br label %44

44:                                               ; preds = %39, %33, %22, %19, %15, %7
  ret void
}

declare dso_local i32 @io_z80_write(i32, i8 zeroext, i64) #1

declare dso_local i32 @SN76489_Write(i64, i8 zeroext) #1

declare dso_local i32 @vdp_z80_data_w(i8 zeroext) #1

declare dso_local i32 @vdp_sms_ctrl_w(i8 zeroext) #1

declare dso_local i32 @fm_write(i64, i32, i8 zeroext) #1

declare dso_local i32 @z80_unused_port_w(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
