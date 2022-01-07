; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_xml_escape_str.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_xml_escape_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i8*, i8*)* @xml_escape_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xml_escape_str(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  br label %9

9:                                                ; preds = %38, %3
  %10 = load i8*, i8** %7, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %32 [
    i32 38, label %17
    i32 60, label %20
    i32 62, label %23
    i32 34, label %26
    i32 39, label %29
  ]

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = call i32 @av_bprintf(%struct.TYPE_5__* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %37

20:                                               ; preds = %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = call i32 @av_bprintf(%struct.TYPE_5__* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %37

23:                                               ; preds = %13
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = call i32 @av_bprintf(%struct.TYPE_5__* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %37

26:                                               ; preds = %13
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = call i32 @av_bprintf(%struct.TYPE_5__* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %37

29:                                               ; preds = %13
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = call i32 @av_bprintf(%struct.TYPE_5__* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %37

32:                                               ; preds = %13
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @av_bprint_chars(%struct.TYPE_5__* %33, i8 signext %35, i32 1)
  br label %37

37:                                               ; preds = %32, %29, %26, %23, %20, %17
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  br label %9

41:                                               ; preds = %9
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  ret i8* %44
}

declare dso_local i32 @av_bprintf(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @av_bprint_chars(%struct.TYPE_5__*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
