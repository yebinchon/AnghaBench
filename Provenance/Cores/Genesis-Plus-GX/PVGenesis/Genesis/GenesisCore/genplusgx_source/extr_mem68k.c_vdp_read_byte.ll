; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_vdp_read_byte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_vdp_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@m68k = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdp_read_byte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 253
  switch i32 %6, label %49 [
    i32 0, label %7
    i32 1, label %10
    i32 4, label %13
    i32 5, label %34
    i32 8, label %38
    i32 12, label %38
    i32 9, label %42
    i32 13, label %42
    i32 24, label %46
    i32 25, label %46
    i32 28, label %46
    i32 29, label %46
  ]

7:                                                ; preds = %1
  %8 = call i32 (...) @vdp_68k_data_r()
  %9 = ashr i32 %8, 8
  store i32 %9, i32* %2, align 4
  br label %52

10:                                               ; preds = %1
  %11 = call i32 (...) @vdp_68k_data_r()
  %12 = and i32 %11, 255
  store i32 %12, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68k, i32 0, i32 1), align 4
  %15 = call i32 @vdp_68k_ctrl_r(i32 %14)
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 3
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68k, i32 0, i32 0), align 8
  store i32 %18, i32* %3, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68k, i32 0, i32 2), align 8
  %20 = load i32, i32* %3, align 4
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 65535
  %29 = call i32 @READ_BYTE(i32 %26, i32 %28)
  %30 = and i32 %29, 252
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %52

34:                                               ; preds = %1
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68k, i32 0, i32 1), align 4
  %36 = call i32 @vdp_68k_ctrl_r(i32 %35)
  %37 = and i32 %36, 255
  store i32 %37, i32* %2, align 4
  br label %52

38:                                               ; preds = %1, %1
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68k, i32 0, i32 1), align 4
  %40 = call i32 @vdp_hvc_r(i32 %39)
  %41 = ashr i32 %40, 8
  store i32 %41, i32* %2, align 4
  br label %52

42:                                               ; preds = %1, %1
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68k, i32 0, i32 1), align 4
  %44 = call i32 @vdp_hvc_r(i32 %43)
  %45 = and i32 %44, 255
  store i32 %45, i32* %2, align 4
  br label %52

46:                                               ; preds = %1, %1, %1, %1
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @m68k_read_bus_8(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %1
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @m68k_lockup_r_8(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %46, %42, %38, %34, %13, %10, %7
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @vdp_68k_data_r(...) #1

declare dso_local i32 @vdp_68k_ctrl_r(i32) #1

declare dso_local i32 @READ_BYTE(i32, i32) #1

declare dso_local i32 @vdp_hvc_r(i32) #1

declare dso_local i32 @m68k_read_bus_8(i32) #1

declare dso_local i32 @m68k_lockup_r_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
