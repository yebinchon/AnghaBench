; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_log.c_av_log_format_line2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_log.c_av_log_format_line2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_log_format_line2(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca [4 x %struct.TYPE_4__], align 16
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %15, i64 0, i64 0
  %22 = load i32*, i32** %14, align 8
  %23 = call i32 @format_line(i8* %17, i32 %18, i8* %19, i32 %20, %struct.TYPE_4__* %21, i32* %22, i32* null)
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %15, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 16
  %29 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %15, i64 0, i64 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %15, i64 0, i64 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 16
  %35 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %15, i64 0, i64 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %31, i8* %34, i8* %37)
  store i32 %38, i32* %16, align 4
  %39 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %15, i64 0, i64 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 3
  %41 = call i32 @av_bprint_finalize(%struct.TYPE_4__* %40, i32* null)
  %42 = load i32, i32* %16, align 4
  ret i32 %42
}

declare dso_local i32 @format_line(i8*, i32, i8*, i32, %struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
