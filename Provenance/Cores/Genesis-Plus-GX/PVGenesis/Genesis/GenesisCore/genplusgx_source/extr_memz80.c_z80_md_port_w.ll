; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_md_port_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_md_port_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@Z80 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PBC_CYCLE_OFFSET = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @z80_md_port_w(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 193
  switch i32 %6, label %23 [
    i32 1, label %7
    i32 64, label %13
    i32 65, label %13
    i32 128, label %17
    i32 129, label %20
  ]

7:                                                ; preds = %2
  %8 = load i8, i8* %4, align 1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 8
  %10 = load i64, i64* @PBC_CYCLE_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @io_z80_write(i32 1, i8 zeroext %8, i64 %11)
  br label %42

13:                                               ; preds = %2, %2
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 8
  %15 = load i8, i8* %4, align 1
  %16 = call i32 @SN76489_Write(i64 %14, i8 zeroext %15)
  br label %42

17:                                               ; preds = %2
  %18 = load i8, i8* %4, align 1
  %19 = call i32 @vdp_z80_data_w(i8 zeroext %18)
  br label %42

20:                                               ; preds = %2
  %21 = load i8, i8* %4, align 1
  %22 = call i32 @vdp_z80_ctrl_w(i8 zeroext %21)
  br label %42

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 255
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp uge i32 %26, 240
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @config, i32 0, i32 0), align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 8
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 3
  %36 = load i8, i8* %4, align 1
  %37 = call i32 @fm_write(i64 %33, i32 %35, i8 zeroext %36)
  br label %42

38:                                               ; preds = %28, %23
  %39 = load i32, i32* %3, align 4
  %40 = load i8, i8* %4, align 1
  %41 = call i32 @z80_unused_port_w(i32 %39, i8 zeroext %40)
  br label %42

42:                                               ; preds = %38, %32, %20, %17, %13, %7
  ret void
}

declare dso_local i32 @io_z80_write(i32, i8 zeroext, i64) #1

declare dso_local i32 @SN76489_Write(i64, i8 zeroext) #1

declare dso_local i32 @vdp_z80_data_w(i8 zeroext) #1

declare dso_local i32 @vdp_z80_ctrl_w(i8 zeroext) #1

declare dso_local i32 @fm_write(i64, i32, i8 zeroext) #1

declare dso_local i32 @z80_unused_port_w(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
