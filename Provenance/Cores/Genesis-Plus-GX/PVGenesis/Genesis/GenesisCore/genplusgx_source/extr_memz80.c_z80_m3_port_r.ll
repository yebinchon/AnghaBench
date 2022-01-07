; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_m3_port_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_m3_port_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@Z80 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @z80_m3_port_r(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 193
  switch i32 %5, label %26 [
    i32 0, label %6
    i32 1, label %6
    i32 64, label %10
    i32 65, label %16
    i32 128, label %21
    i32 129, label %23
  ]

6:                                                ; preds = %1, %1
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 255
  %9 = call zeroext i8 @z80_unused_port_r(i32 %8)
  store i8 %9, i8* %2, align 1
  br label %42

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 4
  %12 = call i32 @vdp_hvc_r(i32 %11)
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 255
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %2, align 1
  br label %42

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 4
  %18 = call i32 @vdp_hvc_r(i32 %17)
  %19 = and i32 %18, 255
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %2, align 1
  br label %42

21:                                               ; preds = %1
  %22 = call zeroext i8 (...) @vdp_z80_data_r()
  store i8 %22, i8* %2, align 1
  br label %42

23:                                               ; preds = %1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 4
  %25 = call zeroext i8 @vdp_z80_ctrl_r(i32 %24)
  store i8 %25, i8* %2, align 1
  br label %42

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @config, i32 0, i32 0), align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 3
  %37 = call zeroext i8 @YM2413Read(i32 %36)
  store i8 %37, i8* %2, align 1
  br label %42

38:                                               ; preds = %30, %26
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 1
  %41 = call zeroext i8 @io_z80_read(i32 %40)
  store i8 %41, i8* %2, align 1
  br label %42

42:                                               ; preds = %38, %34, %23, %21, %16, %10, %6
  %43 = load i8, i8* %2, align 1
  ret i8 %43
}

declare dso_local zeroext i8 @z80_unused_port_r(i32) #1

declare dso_local i32 @vdp_hvc_r(i32) #1

declare dso_local zeroext i8 @vdp_z80_data_r(...) #1

declare dso_local zeroext i8 @vdp_z80_ctrl_r(i32) #1

declare dso_local zeroext i8 @YM2413Read(i32) #1

declare dso_local zeroext i8 @io_z80_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
