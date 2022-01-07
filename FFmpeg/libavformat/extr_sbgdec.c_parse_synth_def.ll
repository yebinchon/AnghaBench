; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_synth_def.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_synth_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sbg_script_definition = type { i8, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*, %struct.sbg_script_definition*)* @parse_synth_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_synth_def(%struct.sbg_parser* %0, %struct.sbg_script_definition* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbg_parser*, align 8
  %5 = alloca %struct.sbg_script_definition*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sbg_parser* %0, %struct.sbg_parser** %4, align 8
  store %struct.sbg_script_definition* %1, %struct.sbg_script_definition** %5, align 8
  %8 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %9 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %2, %27
  %13 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %14 = call i32 @parse_synth_channel(%struct.sbg_parser* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %59

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %24 = call i32 @lex_space(%struct.sbg_parser* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %19
  br label %28

27:                                               ; preds = %22
  br label %12

28:                                               ; preds = %26
  %29 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %30 = call i32 @lex_space(%struct.sbg_parser* %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %33 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %38, i32* %3, align 4
  br label %59

39:                                               ; preds = %28
  %40 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %41 = call i32 @lex_line_end(%struct.sbg_parser* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %44, i32* %3, align 4
  br label %59

45:                                               ; preds = %39
  %46 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %5, align 8
  %47 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %46, i32 0, i32 0
  store i8 83, i8* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %5, align 8
  %50 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %52 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %5, align 8
  %58 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %45, %43, %37, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @parse_synth_channel(%struct.sbg_parser*) #1

declare dso_local i32 @lex_space(%struct.sbg_parser*) #1

declare dso_local i32 @lex_line_end(%struct.sbg_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
