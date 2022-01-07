; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_YM2612ResetChip_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_YM2612ResetChip_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64, i64, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@ym2612 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YM2612ResetChip_() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %3 = call i32 @memset(i32* %2, i32 0, i32 8)
  %4 = call i32 @set_timers(i32 48)
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 39
  store i32 48, i32* %6, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 4, i32 0, i32 0), align 8
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 3), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = call i32 @reset_channels(i32* %8)
  store i32 182, i32* %1, align 4
  br label %10

10:                                               ; preds = %28, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp sge i32 %11, 180
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @OPNWriteReg(i32 %14, i32 192)
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, 256
  %18 = call i32 @OPNWriteReg(i32 %17, i32 192)
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 192, i32* %22, align 4
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %24 = load i32, i32* %1, align 4
  %25 = or i32 %24, 256
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 192, i32* %27, align 4
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %1, align 4
  br label %10

31:                                               ; preds = %10
  store i32 178, i32* %1, align 4
  br label %32

32:                                               ; preds = %41, %31
  %33 = load i32, i32* %1, align 4
  %34 = icmp sge i32 %33, 48
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @OPNWriteReg(i32 %36, i32 0)
  %38 = load i32, i32* %1, align 4
  %39 = or i32 %38, 256
  %40 = call i32 @OPNWriteReg(i32 %39, i32 0)
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %1, align 4
  br label %32

44:                                               ; preds = %32
  store i32 38, i32* %1, align 4
  br label %45

45:                                               ; preds = %51, %44
  %46 = load i32, i32* %1, align 4
  %47 = icmp sge i32 %46, 32
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @OPNWriteReg(i32 %49, i32 0)
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %1, align 4
  br label %45

54:                                               ; preds = %45
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @set_timers(i32) #1

declare dso_local i32 @reset_channels(i32*) #1

declare dso_local i32 @OPNWriteReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
