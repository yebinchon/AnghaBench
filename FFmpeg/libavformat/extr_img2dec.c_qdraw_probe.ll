; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2dec.c_qdraw_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2dec.c_qdraw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@AVPROBE_SCORE_EXTENSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @qdraw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdraw_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %10, 528
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 520
  %15 = call i32 @AV_RB64(i32* %14)
  %16 = sext i32 %15 to i64
  %17 = and i64 %16, 281474976710655
  %18 = icmp eq i64 %17, 73064713216
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 520
  %22 = call i64 @AV_RB16(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 518
  %27 = call i64 @AV_RB16(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  %31 = mul nsw i32 %30, 3
  %32 = sdiv i32 %31, 4
  store i32 %32, i32* %2, align 4
  br label %54

33:                                               ; preds = %24, %19, %12, %1
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  %36 = call i32 @AV_RB64(i32* %35)
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, 281474976710655
  %39 = icmp eq i64 %38, 73064713216
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  %43 = call i64 @AV_RB16(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  %48 = call i64 @AV_RB16(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @AVPROBE_SCORE_EXTENSION, align 4
  %52 = sdiv i32 %51, 4
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %45, %40, %33
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %29
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @AV_RB64(i32*) #1

declare dso_local i64 @AV_RB16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
