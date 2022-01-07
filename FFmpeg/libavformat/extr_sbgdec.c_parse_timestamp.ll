; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_timestamp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { i32 }
%struct.sbg_timestamp = type { i8, i64 }

@.str = private unnamed_addr constant [4 x i8] c"NOW\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*, %struct.sbg_timestamp*, i64*)* @parse_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_timestamp(%struct.sbg_parser* %0, %struct.sbg_timestamp* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbg_parser*, align 8
  %6 = alloca %struct.sbg_timestamp*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.sbg_parser* %0, %struct.sbg_parser** %5, align 8
  store %struct.sbg_timestamp* %1, %struct.sbg_timestamp** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i8 0, i8* %11, align 1
  %13 = load %struct.sbg_parser*, %struct.sbg_parser** %5, align 8
  %14 = call i64 @lex_fixed(%struct.sbg_parser* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8 78, i8* %11, align 1
  store i32 1, i32* %12, align 4
  br label %24

17:                                               ; preds = %3
  %18 = load %struct.sbg_parser*, %struct.sbg_parser** %5, align 8
  %19 = call i32 @lex_time(%struct.sbg_parser* %18, i64* %8)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8 84, i8* %11, align 1
  br label %23

23:                                               ; preds = %22, %17
  br label %24

24:                                               ; preds = %23, %16
  br label %25

25:                                               ; preds = %35, %24
  %26 = load %struct.sbg_parser*, %struct.sbg_parser** %5, align 8
  %27 = call i64 @lex_char(%struct.sbg_parser* %26, i8 signext 43)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load %struct.sbg_parser*, %struct.sbg_parser** %5, align 8
  %31 = call i32 @lex_time(%struct.sbg_parser* %30, i64* %10)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %34, i32* %4, align 4
  br label %59

35:                                               ; preds = %29
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %9, align 8
  store i32 1, i32* %12, align 4
  br label %25

39:                                               ; preds = %25
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load %struct.sbg_parser*, %struct.sbg_parser** %5, align 8
  %44 = call i32 @lex_space(%struct.sbg_parser* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %4, align 4
  br label %59

48:                                               ; preds = %42
  %49 = load i8, i8* %11, align 1
  %50 = load %struct.sbg_timestamp*, %struct.sbg_timestamp** %6, align 8
  %51 = getelementptr inbounds %struct.sbg_timestamp, %struct.sbg_timestamp* %50, i32 0, i32 0
  store i8 %49, i8* %51, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.sbg_timestamp*, %struct.sbg_timestamp** %6, align 8
  %54 = getelementptr inbounds %struct.sbg_timestamp, %struct.sbg_timestamp* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64*, i64** %7, align 8
  store i64 %55, i64* %56, align 8
  br label %57

57:                                               ; preds = %48, %39
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %46, %33
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @lex_fixed(%struct.sbg_parser*, i8*, i32) #1

declare dso_local i32 @lex_time(%struct.sbg_parser*, i64*) #1

declare dso_local i64 @lex_char(%struct.sbg_parser*, i8 signext) #1

declare dso_local i32 @lex_space(%struct.sbg_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
