; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_electronicarts.c_ea_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_electronicarts.c_ea_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ea_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = call i32 @AV_RL32(i32* %9)
  switch i32 %10, label %12 [
    i32 136, label %11
    i32 131, label %11
    i32 130, label %11
    i32 129, label %11
    i32 128, label %11
    i32 135, label %11
    i32 134, label %11
    i32 132, label %11
    i32 133, label %11
    i32 137, label %11
  ]

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

13:                                               ; preds = %11
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = call i32 @AV_RL32(i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ugt i32 %19, 1048575
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @av_bswap32(i32 %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %13
  %28 = load i32, i32* %5, align 4
  %29 = icmp ugt i32 %28, 1048575
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp ult i32 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  store i32 0, i32* %2, align 4
  br label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %33, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @av_bswap32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
