; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_synth_channel_sine.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_synth_channel_sine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { i32 }
%struct.sbg_script_synth = type { i32, i32, i32, i32 }

@EDOM = common dso_local global i32 0, align 4
@SBG_TYPE_SINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*, %struct.sbg_script_synth*)* @parse_synth_channel_sine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_synth_channel_sine(%struct.sbg_parser* %0, %struct.sbg_script_synth* %1) #0 {
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
  %12 = call i32 @lex_double(%struct.sbg_parser* %11, double* %6)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

15:                                               ; preds = %2
  %16 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %17 = call i32 @lex_double(%struct.sbg_parser* %16, double* %7)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store double 0.000000e+00, double* %7, align 8
  br label %20

20:                                               ; preds = %19, %15
  %21 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %22 = call i32 @parse_volume(%struct.sbg_parser* %21, i32* %10)
  %23 = call i32 @FORWARD_ERROR(i32 %22)
  %24 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %25 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load double, double* %6, align 8
  %28 = call i64 @scale_double(i32 %26, double %27, i32 1, i32* %8)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %20
  %31 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %32 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load double, double* %7, align 8
  %35 = call i64 @scale_double(i32 %33, double %34, i32 1, i32* %9)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %20
  %38 = load i32, i32* @EDOM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %53

40:                                               ; preds = %30
  %41 = load i32, i32* @SBG_TYPE_SINE, align 4
  %42 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %43 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %46 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %49 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %52 = getelementptr inbounds %struct.sbg_script_synth, %struct.sbg_script_synth* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %40, %37, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

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
