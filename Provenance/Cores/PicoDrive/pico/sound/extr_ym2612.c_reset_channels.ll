; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_reset_channels.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_ym2612.c_reset_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@ym2612 = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@EG_OFF = common dso_local global i32 0, align 4
@MAX_ATT_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @reset_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_channels(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ym2612, i32 0, i32 1, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ym2612, i32 0, i32 1, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ym2612, i32 0, i32 1, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ym2612, i32 0, i32 1, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ym2612, i32 0, i32 1, i32 0, i32 0), align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %54, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 6
  br i1 %7, label %8, label %57

8:                                                ; preds = %5
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %40, %8
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %43

17:                                               ; preds = %14
  %18 = load i32, i32* @EG_OFF, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i32 %18, i32* %28, align 4
  %29 = load i32, i32* @MAX_ATT_INDEX, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 %29, i32* %39, align 4
  br label %40

40:                                               ; preds = %17
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %14

43:                                               ; preds = %14
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %5

57:                                               ; preds = %5
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ym2612, i32 0, i32 0), align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
