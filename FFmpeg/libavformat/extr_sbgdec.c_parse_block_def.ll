; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_block_def.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_block_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { i32 }
%struct.sbg_script_definition = type { i8, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*, %struct.sbg_script_definition*)* @parse_block_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_block_def(%struct.sbg_parser* %0, %struct.sbg_script_definition* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbg_parser*, align 8
  %5 = alloca %struct.sbg_script_definition*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sbg_parser* %0, %struct.sbg_parser** %4, align 8
  store %struct.sbg_script_definition* %1, %struct.sbg_script_definition** %5, align 8
  %8 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %9 = call i32 @lex_space(%struct.sbg_parser* %8)
  %10 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %11 = call i32 @lex_line_end(%struct.sbg_parser* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %14, i32* %3, align 4
  br label %65

15:                                               ; preds = %2
  %16 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %17 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %15, %30
  %20 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %21 = call i32 @parse_time_sequence(%struct.sbg_parser* %20, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %65

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %31

30:                                               ; preds = %26
  br label %19

31:                                               ; preds = %29
  %32 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %33 = call i32 @lex_char(%struct.sbg_parser* %32, i8 signext 125)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %3, align 4
  br label %65

37:                                               ; preds = %31
  %38 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %39 = call i32 @lex_space(%struct.sbg_parser* %38)
  %40 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %41 = call i32 @lex_line_end(%struct.sbg_parser* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %44, i32* %3, align 4
  br label %65

45:                                               ; preds = %37
  %46 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %5, align 8
  %47 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %46, i32 0, i32 0
  store i8 66, i8* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %5, align 8
  %50 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %52 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %5, align 8
  %57 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.sbg_script_definition*, %struct.sbg_script_definition** %5, align 8
  %59 = getelementptr inbounds %struct.sbg_script_definition, %struct.sbg_script_definition* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %45
  %63 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %62, %43, %35, %24, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @lex_space(%struct.sbg_parser*) #1

declare dso_local i32 @lex_line_end(%struct.sbg_parser*) #1

declare dso_local i32 @parse_time_sequence(%struct.sbg_parser*, i32) #1

declare dso_local i32 @lex_char(%struct.sbg_parser*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
