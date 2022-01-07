; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_vdp_read_word.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_vdp_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@m68k = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdp_read_word(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 252
  switch i32 %6, label %38 [
    i32 0, label %7
    i32 4, label %9
    i32 8, label %32
    i32 12, label %32
    i32 24, label %35
    i32 28, label %35
  ]

7:                                                ; preds = %1
  %8 = call i32 (...) @vdp_68k_data_r()
  store i32 %8, i32* %2, align 4
  br label %41

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68k, i32 0, i32 1), align 4
  %11 = call i32 @vdp_68k_ctrl_r(i32 %10)
  %12 = and i32 %11, 1023
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68k, i32 0, i32 0), align 8
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68k, i32 0, i32 2), align 8
  %15 = load i32, i32* %3, align 4
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 65535
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 64512
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %41

32:                                               ; preds = %1, %1
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m68k, i32 0, i32 1), align 4
  %34 = call i32 @vdp_hvc_r(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %1, %1
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @m68k_read_bus_16(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %41

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @m68k_lockup_r_16(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %35, %32, %9, %7
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @vdp_68k_data_r(...) #1

declare dso_local i32 @vdp_68k_ctrl_r(i32) #1

declare dso_local i32 @vdp_hvc_r(i32) #1

declare dso_local i32 @m68k_read_bus_16(i32) #1

declare dso_local i32 @m68k_lockup_r_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
