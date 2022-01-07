; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_sg_port_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_sg_port_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Z80 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @z80_sg_port_w(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 193
  switch i32 %6, label %17 [
    i32 64, label %7
    i32 65, label %7
    i32 128, label %11
    i32 129, label %14
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 4
  %9 = load i8, i8* %4, align 1
  %10 = call i32 @SN76489_Write(i32 %8, i8 zeroext %9)
  br label %22

11:                                               ; preds = %2
  %12 = load i8, i8* %4, align 1
  %13 = call i32 @vdp_z80_data_w(i8 zeroext %12)
  br label %22

14:                                               ; preds = %2
  %15 = load i8, i8* %4, align 1
  %16 = call i32 @vdp_tms_ctrl_w(i8 zeroext %15)
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 255
  %20 = load i8, i8* %4, align 1
  %21 = call i32 @z80_unused_port_w(i32 %19, i8 zeroext %20)
  br label %22

22:                                               ; preds = %17, %14, %11, %7
  ret void
}

declare dso_local i32 @SN76489_Write(i32, i8 zeroext) #1

declare dso_local i32 @vdp_z80_data_w(i8 zeroext) #1

declare dso_local i32 @vdp_tms_ctrl_w(i8 zeroext) #1

declare dso_local i32 @z80_unused_port_w(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
