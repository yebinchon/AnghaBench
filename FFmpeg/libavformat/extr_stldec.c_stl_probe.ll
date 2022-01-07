; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_stldec.c_stl_probe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_stldec.c_stl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%*d:%*d:%*d:%*d , %*d:%*d:%*d:%*d , %c\00", align 1
@AVPROBE_SCORE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @stl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stl_probe(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @AV_RB24(i8* %9)
  %11 = icmp eq i32 %10, 15711167
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %12, %1
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 13
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 36
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strncmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %31, %26, %21, %16
  %37 = phi i1 [ true, %26 ], [ true, %21 ], [ true, %16 ], [ %35, %31 ]
  br i1 %37, label %38, label %44

38:                                               ; preds = %36
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @ff_subtitles_next_line(i8* %39)
  %41 = load i8*, i8** %5, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %5, align 8
  br label %16

44:                                               ; preds = %36
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @sscanf(i8* %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @AVPROBE_SCORE_MAX, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %48
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @AV_RB24(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ff_subtitles_next_line(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
