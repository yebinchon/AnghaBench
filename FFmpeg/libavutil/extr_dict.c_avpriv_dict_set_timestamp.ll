; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_dict.c_avpriv_dict_set_timestamp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_dict.c_avpriv_dict_set_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%Y-%m-%dT%H:%M:%S\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c".%06dZ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avpriv_dict_set_timestamp(i32** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tm*, align 8
  %10 = alloca %struct.tm, align 4
  %11 = alloca [32 x i8], align 16
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sdiv i32 %12, 1000000
  store i32 %13, i32* %8, align 4
  %14 = call %struct.tm* @gmtime_r(i32* %8, %struct.tm* %10)
  store %struct.tm* %14, %struct.tm** %9, align 8
  %15 = load %struct.tm*, %struct.tm** %9, align 8
  %16 = icmp ne %struct.tm* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %19 = load %struct.tm*, %struct.tm** %9, align 8
  %20 = call i32 @strftime(i8* %18, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.tm* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %17
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %26 = load i32, i32* %7, align 4
  %27 = srem i32 %26, 1000000
  %28 = call i32 @av_strlcatf(i8* %25, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32**, i32*** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %32 = call i32 @av_dict_set(i32** %29, i8* %30, i8* %31, i32 0)
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %24, %22
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.tm* @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @av_strlcatf(i8*, i32, i8*, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
