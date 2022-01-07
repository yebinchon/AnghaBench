; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_parseutils.c_test_av_parse_color.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_parseutils.c_test_av_parse_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_av_parse_color.color_names = internal constant [36 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [9 x i8] c"bikeshed\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"RaNdOm\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Red \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RED\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Violet\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"0x000000\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"0x0000000\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"0xff000000\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"0x3e34ff\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"0x3e34ffaa\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"0xffXXee\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"0xfoobar\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"0xffffeeeeeeee\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"#ff0000\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"#ffXX00\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"ff0000\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"ffXX00\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"red@foo\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"random@10\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"0xff0000@1.0\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"red@\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"red@0xfff\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"red@0xf\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"red@2\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"red@0.1\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"red@-1\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"red@0.5\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"red@1.0\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"red@256\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"red@10foo\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"red@-1.0\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"red@-0.0\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [31 x i8] c"%s -> R(%d) G(%d) B(%d) A(%d)\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"%s -> error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_av_parse_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_av_parse_color() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = load i32, i32* @AV_LOG_DEBUG, align 4
  %4 = call i32 @av_log_set_level(i32 %3)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %38, %0
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @FF_ARRAY_ELEMS(i8** getelementptr inbounds ([36 x i8*], [36 x i8*]* @test_av_parse_color.color_names, i64 0, i64 0))
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [36 x i8*], [36 x i8*]* @test_av_parse_color.color_names, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @av_parse_color(i32* %10, i8* %14, i32 -1, i32* null)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %9
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [36 x i8*], [36 x i8*]* @test_av_parse_color.color_names, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i8* %21, i32 %23, i32 %25, i32 %27, i32 %29)
  br label %37

31:                                               ; preds = %9
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [36 x i8*], [36 x i8*]* @test_av_parse_color.color_names, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %31, %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %5

41:                                               ; preds = %5
  ret void
}

declare dso_local i32 @av_log_set_level(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i8**) #1

declare dso_local i64 @av_parse_color(i32*, i8*, i32, i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
