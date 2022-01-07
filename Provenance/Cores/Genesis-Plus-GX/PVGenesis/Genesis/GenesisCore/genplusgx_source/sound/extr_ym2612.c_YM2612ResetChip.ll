; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2612.c_YM2612ResetChip.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2612.c_YM2612ResetChip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }

@ym2612 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YM2612ResetChip() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 6), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 4), align 8
  store i32 126, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 1, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 1, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 2, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 2), align 8
  %2 = call i32 @set_timers(i32 48)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 1, i32 3), align 8
  store i32 4096, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 1, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 1, i32 2), align 8
  store i32 1024, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 1, i32 1, i32 1), align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ym2612, i32 0, i32 0), align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = call i32 @reset_channels(i32* %4, i32 6)
  store i32 182, i32* %1, align 4
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp sge i32 %7, 180
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @OPNWriteReg(i32 %10, i32 192)
  %12 = load i32, i32* %1, align 4
  %13 = or i32 %12, 256
  %14 = call i32 @OPNWriteReg(i32 %13, i32 192)
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %1, align 4
  br label %6

18:                                               ; preds = %6
  store i32 178, i32* %1, align 4
  br label %19

19:                                               ; preds = %28, %18
  %20 = load i32, i32* %1, align 4
  %21 = icmp sge i32 %20, 48
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @OPNWriteReg(i32 %23, i32 0)
  %25 = load i32, i32* %1, align 4
  %26 = or i32 %25, 256
  %27 = call i32 @OPNWriteReg(i32 %26, i32 0)
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %1, align 4
  br label %19

31:                                               ; preds = %19
  ret void
}

declare dso_local i32 @set_timers(i32) #1

declare dso_local i32 @reset_channels(i32*, i32) #1

declare dso_local i32 @OPNWriteReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
