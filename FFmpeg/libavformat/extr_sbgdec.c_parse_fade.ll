; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_fade.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_parse_fade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { i32 }
%struct.sbg_fade = type { i8*, i8*, i32 }

@SBG_FADE_SILENCE = common dso_local global i8* null, align 8
@SBG_FADE_SAME = common dso_local global i8* null, align 8
@SBG_FADE_ADAPT = common dso_local global i8* null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*, %struct.sbg_fade*)* @parse_fade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fade(%struct.sbg_parser* %0, %struct.sbg_fade* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbg_parser*, align 8
  %5 = alloca %struct.sbg_fade*, align 8
  %6 = alloca %struct.sbg_fade, align 8
  store %struct.sbg_parser* %0, %struct.sbg_parser** %4, align 8
  store %struct.sbg_fade* %1, %struct.sbg_fade** %5, align 8
  %7 = bitcast %struct.sbg_fade* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %9 = call i64 @lex_char(%struct.sbg_parser* %8, i8 signext 60)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** @SBG_FADE_SILENCE, align 8
  %13 = getelementptr inbounds %struct.sbg_fade, %struct.sbg_fade* %6, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %16 = call i64 @lex_char(%struct.sbg_parser* %15, i8 signext 45)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i8*, i8** @SBG_FADE_SAME, align 8
  %20 = getelementptr inbounds %struct.sbg_fade, %struct.sbg_fade* %6, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  br label %30

21:                                               ; preds = %14
  %22 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %23 = call i64 @lex_char(%struct.sbg_parser* %22, i8 signext 61)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** @SBG_FADE_ADAPT, align 8
  %27 = getelementptr inbounds %struct.sbg_fade, %struct.sbg_fade* %6, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  br label %29

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %60

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %18
  br label %31

31:                                               ; preds = %30, %11
  %32 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %33 = call i64 @lex_char(%struct.sbg_parser* %32, i8 signext 62)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8*, i8** @SBG_FADE_SILENCE, align 8
  %37 = getelementptr inbounds %struct.sbg_fade, %struct.sbg_fade* %6, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  br label %56

38:                                               ; preds = %31
  %39 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %40 = call i64 @lex_char(%struct.sbg_parser* %39, i8 signext 45)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i8*, i8** @SBG_FADE_SAME, align 8
  %44 = getelementptr inbounds %struct.sbg_fade, %struct.sbg_fade* %6, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  br label %55

45:                                               ; preds = %38
  %46 = load %struct.sbg_parser*, %struct.sbg_parser** %4, align 8
  %47 = call i64 @lex_char(%struct.sbg_parser* %46, i8 signext 61)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** @SBG_FADE_ADAPT, align 8
  %51 = getelementptr inbounds %struct.sbg_fade, %struct.sbg_fade* %6, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %42
  br label %56

56:                                               ; preds = %55, %35
  %57 = load %struct.sbg_fade*, %struct.sbg_fade** %5, align 8
  %58 = bitcast %struct.sbg_fade* %57 to i8*
  %59 = bitcast %struct.sbg_fade* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 24, i1 false)
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %52, %28
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @lex_char(%struct.sbg_parser*, i8 signext) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
