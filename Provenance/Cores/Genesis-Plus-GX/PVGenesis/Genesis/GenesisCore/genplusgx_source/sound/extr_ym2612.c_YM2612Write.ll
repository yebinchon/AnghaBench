; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2612.c_YM2612Write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2612.c_YM2612Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ym2612 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YM2612Write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 255
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %14 [
    i32 0, label %9
    i32 2, label %11
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 2, i32 0, i32 0), align 4
  br label %37

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, 256
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 2, i32 0, i32 0), align 4
  br label %37

14:                                               ; preds = %2
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 2, i32 0, i32 0), align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 496
  switch i32 %17, label %32 [
    i32 32, label %18
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %27 [
    i32 42, label %20
    i32 43, label %24
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 128
  %23 = shl i32 %22, 6
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 4
  br label %31

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 128
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 1), align 4
  br label %31

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @OPNWriteMode(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %24, %20
  br label %36

32:                                               ; preds = %14
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @OPNWriteReg(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %31
  br label %37

37:                                               ; preds = %36, %11, %9
  ret void
}

declare dso_local i32 @OPNWriteMode(i32, i32) #1

declare dso_local i32 @OPNWriteReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
