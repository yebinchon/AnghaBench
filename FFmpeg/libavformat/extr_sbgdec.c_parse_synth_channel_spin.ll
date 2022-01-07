; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_synth_channel_spin.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_synth_channel_spin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { i32 }
%struct.sbg_script_synth = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"spin:\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@SBG_TYPE_SPIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*, %struct.sbg_script_synth*)* @parse_synth_channel_spin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_synth_channel_spin(%struct.sbg_parser* %0, %struct.sbg_script_synth* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbg_parser*, align 8
  %5 = alloca %struct.sbg_script_synth*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sbg_parser* %0, %struct.sbg_parser** %4, align 8
  store %struct.sbg_script_synth* %1, %struct.sbg_script_synth** %5, align 8
  %11 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %12 = call i32 @lex_fixed(%struct.sbg_parser* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %17 = call i32 @lex_double(%struct.sbg_parser* %16, double* %6)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %20, i32* %3, align 4
  br label %60

21:                                               ; preds = %15
  %22 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %23 = call i32 @lex_double(%struct.sbg_parser* %22, double* %7)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %21
  %28 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %29 = call i32 @parse_volume(%struct.sbg_parser* %28, i32* %10)
  %30 = call i32 @FORWARD_ERROR(i32 %29)
  %31 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %32 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load double, double* %6, align 8
  %35 = call i64 @scale_double(i32 %33, double %34, i32 1, i32* %8)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %27
  %38 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %39 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load double, double* %7, align 8
  %42 = call i64 @scale_double(i32 %40, double %41, i32 1, i32* %9)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37, %27
  %45 = load i32, i32* @EDOM, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %37
  %48 = load i32, i32* @SBG_TYPE_SPIN, align 4
  %49 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %50 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %53 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %56 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %59 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %47, %44, %25, %19, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @lex_fixed(%struct.sbg_parser*, i8*, i32) #1

declare dso_local i32 @lex_double(%struct.sbg_parser*, double*) #1

declare dso_local i32 @FORWARD_ERROR(i32) #1

declare dso_local i32 @parse_volume(%struct.sbg_parser*, i32*) #1

declare dso_local i64 @scale_double(i32, double, i32, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
