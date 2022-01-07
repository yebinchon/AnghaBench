; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_sg_port_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_sg_port_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Z80 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @z80_sg_port_r(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 193
  switch i32 %5, label %15 [
    i32 128, label %6
    i32 129, label %8
    i32 192, label %11
    i32 193, label %11
  ]

6:                                                ; preds = %1
  %7 = call zeroext i8 (...) @vdp_z80_data_r()
  store i8 %7, i8* %2, align 1
  br label %18

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Z80, i32 0, i32 0), align 4
  %10 = call zeroext i8 @vdp_z80_ctrl_r(i32 %9)
  store i8 %10, i8* %2, align 1
  br label %18

11:                                               ; preds = %1, %1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 1
  %14 = call zeroext i8 @io_z80_read(i32 %13)
  store i8 %14, i8* %2, align 1
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call zeroext i8 @z80_unused_port_r(i32 %16)
  store i8 %17, i8* %2, align 1
  br label %18

18:                                               ; preds = %15, %11, %8, %6
  %19 = load i8, i8* %2, align 1
  ret i8 %19
}

declare dso_local zeroext i8 @vdp_z80_data_r(...) #1

declare dso_local zeroext i8 @vdp_z80_ctrl_r(i32) #1

declare dso_local zeroext i8 @io_z80_read(i32) #1

declare dso_local zeroext i8 @z80_unused_port_r(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
