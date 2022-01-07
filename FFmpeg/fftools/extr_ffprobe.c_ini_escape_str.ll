; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_ini_escape_str.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_ini_escape_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\\x00%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i8*)* @ini_escape_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ini_escape_str(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i8 0, i8* %6, align 1
  br label %7

7:                                                ; preds = %51, %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %6, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %7
  %16 = load i8, i8* %6, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %36 [
    i32 8, label %18
    i32 12, label %21
    i32 10, label %24
    i32 13, label %27
    i32 9, label %30
    i32 92, label %33
    i32 35, label %33
    i32 61, label %33
    i32 58, label %33
  ]

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %51

21:                                               ; preds = %15
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %51

24:                                               ; preds = %15
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %51

27:                                               ; preds = %15
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %51

30:                                               ; preds = %15
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %51

33:                                               ; preds = %15, %15, %15, %15
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = call i32 @av_bprint_chars(%struct.TYPE_5__* %34, i8 signext 92, i32 1)
  br label %36

36:                                               ; preds = %15, %33
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = load i8, i8* %6, align 1
  %43 = sext i8 %42 to i32
  %44 = and i32 %43, 255
  %45 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  br label %50

46:                                               ; preds = %36
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = load i8, i8* %6, align 1
  %49 = call i32 @av_bprint_chars(%struct.TYPE_5__* %47, i8 signext %48, i32 1)
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %30, %27, %24, %21, %18
  br label %7

52:                                               ; preds = %7
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  ret i8* %55
}

declare dso_local i32 @av_bprintf(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @av_bprint_chars(%struct.TYPE_5__*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
