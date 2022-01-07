; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_microdvddec.c_microdvd_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_microdvddec.c_microdvd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"{%*d}{}%c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"{%*d}{%*d}%c\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"{DEFAULT}{}%c\00", align 1
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @microdvd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microdvd_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @AV_RB24(i32* %10)
  %12 = icmp eq i32 %11, 15711167
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  store i32* %15, i32** %5, align 8
  br label %16

16:                                               ; preds = %13, %1
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %39, %16
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @sscanf(i32* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %4)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @sscanf(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @sscanf(i32* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %4)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %44

33:                                               ; preds = %28, %24, %20
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @ff_subtitles_next_line(i32* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %5, align 8
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %17

42:                                               ; preds = %17
  %43 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %32
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @sscanf(i32*, i8*, i8*) #1

declare dso_local i32 @ff_subtitles_next_line(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
