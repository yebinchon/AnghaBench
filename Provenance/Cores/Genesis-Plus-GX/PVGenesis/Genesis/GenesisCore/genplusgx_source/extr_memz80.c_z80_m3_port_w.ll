; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_m3_port_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_m3_port_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@Z80 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @z80_m3_port_w(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 193
  switch i32 %6, label %21 [
    i32 0, label %7
    i32 1, label %7
    i32 64, label %11
    i32 65, label %11
    i32 128, label %15
    i32 129, label %18
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* %3, align 4
  %9 = load i8, i8* %4, align 1
  %10 = call i32 @z80_unused_port_w(i32 %8, i8 zeroext %9)
  br label %40

11:                                               ; preds = %2, %2
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 4
  %13 = load i8, i8* %4, align 1
  %14 = call i32 @SN76489_Write(i32 %12, i8 zeroext %13)
  br label %40

15:                                               ; preds = %2
  %16 = load i8, i8* %4, align 1
  %17 = call i32 @vdp_z80_data_w(i8 zeroext %16)
  br label %40

18:                                               ; preds = %2
  %19 = load i8, i8* %4, align 1
  %20 = call i32 @vdp_sms_ctrl_w(i8 zeroext %19)
  br label %40

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @config, i32 0, i32 0), align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 4
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 3
  %33 = load i8, i8* %4, align 1
  %34 = call i32 @fm_write(i32 %30, i32 %32, i8 zeroext %33)
  br label %40

35:                                               ; preds = %25, %21
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 255
  %38 = load i8, i8* %4, align 1
  %39 = call i32 @z80_unused_port_w(i32 %37, i8 zeroext %38)
  br label %40

40:                                               ; preds = %35, %29, %18, %15, %11, %7
  ret void
}

declare dso_local i32 @z80_unused_port_w(i32, i8 zeroext) #1

declare dso_local i32 @SN76489_Write(i32, i8 zeroext) #1

declare dso_local i32 @vdp_z80_data_w(i8 zeroext) #1

declare dso_local i32 @vdp_sms_ctrl_w(i8 zeroext) #1

declare dso_local i32 @fm_write(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
