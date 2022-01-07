; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_volume.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*, i32*)* @parse_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_volume(%struct.sbg_parser* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbg_parser*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  store %struct.sbg_parser* %0, %struct.sbg_parser** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %8 = call i32 @lex_char(%struct.sbg_parser* %7, i8 signext 47)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %13 = call i32 @lex_double(%struct.sbg_parser* %12, double* %6)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %16, i32* %3, align 4
  br label %29

17:                                               ; preds = %11
  %18 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %19 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load double, double* %6, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @scale_double(i32 %20, double %21, double 1.000000e-02, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @ERANGE, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25, %15, %10
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @lex_char(%struct.sbg_parser*, i8 signext) #1

declare dso_local i32 @lex_double(%struct.sbg_parser*, double*) #1

declare dso_local i64 @scale_double(i32, double, double, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
