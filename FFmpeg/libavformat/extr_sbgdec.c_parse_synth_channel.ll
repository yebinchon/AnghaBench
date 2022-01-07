; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_synth_channel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_synth_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sbg_script_synth = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*)* @parse_synth_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_synth_channel(%struct.sbg_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbg_parser*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbg_script_synth*, align 8
  store %struct.sbg_parser* %0, %struct.sbg_parser** %3, align 8
  %6 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %7 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = bitcast i32* %8 to i8**
  %10 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %11 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %14 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %13, i32 0, i32 1
  %15 = call %struct.sbg_script_synth* @alloc_array_elem(i8** %9, i32 4, i32* %12, i32* %14)
  store %struct.sbg_script_synth* %15, %struct.sbg_script_synth** %5, align 8
  %16 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %17 = icmp ne %struct.sbg_script_synth* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %69

21:                                               ; preds = %1
  %22 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %23 = call i32 @lex_char(%struct.sbg_parser* %22, i8 signext 45)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %28 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %29 = call i32 @parse_synth_channel_pink(%struct.sbg_parser* %27, %struct.sbg_script_synth* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %35 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %36 = call i32 @parse_synth_channel_bell(%struct.sbg_parser* %34, %struct.sbg_script_synth* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %42 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %43 = call i32 @parse_synth_channel_mix(%struct.sbg_parser* %41, %struct.sbg_script_synth* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %49 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %50 = call i32 @parse_synth_channel_spin(%struct.sbg_parser* %48, %struct.sbg_script_synth* %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %56 = load %struct.sbg_script_synth*, %struct.sbg_script_synth** %5, align 8
  %57 = call i32 @parse_synth_channel_sine(%struct.sbg_parser* %55, %struct.sbg_script_synth* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %4, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.sbg_parser*, %struct.sbg_parser** %3, align 8
  %63 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %18
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.sbg_script_synth* @alloc_array_elem(i8**, i32, i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @lex_char(%struct.sbg_parser*, i8 signext) #1

declare dso_local i32 @parse_synth_channel_pink(%struct.sbg_parser*, %struct.sbg_script_synth*) #1

declare dso_local i32 @parse_synth_channel_bell(%struct.sbg_parser*, %struct.sbg_script_synth*) #1

declare dso_local i32 @parse_synth_channel_mix(%struct.sbg_parser*, %struct.sbg_script_synth*) #1

declare dso_local i32 @parse_synth_channel_spin(%struct.sbg_parser*, %struct.sbg_script_synth*) #1

declare dso_local i32 @parse_synth_channel_sine(%struct.sbg_parser*, %struct.sbg_script_synth*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
