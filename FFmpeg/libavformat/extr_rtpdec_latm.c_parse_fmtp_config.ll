; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_latm.c_parse_fmtp_config.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_latm.c_parse_fmtp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8** }

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"LATM config (%d,%d,%d,%d)\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @parse_fmtp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fmtp_config(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @ff_hex_to_data(i32* null, i8* %15)
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32* @av_mallocz(i64 %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %106

27:                                               ; preds = %2
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @ff_hex_to_data(i32* %28, i8* %29)
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %32, 8
  %34 = call i32 @init_get_bits(i32* %9, i32* %31, i32 %33)
  %35 = call i8* @get_bits(i32* %9, i32 1)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = call i8* @get_bits(i32* %9, i32 1)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = call i32 @skip_bits(i32* %9, i32 6)
  %40 = call i8* @get_bits(i32* %9, i32 4)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %13, align 4
  %42 = call i8* @get_bits(i32* %9, i32 3)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52, %49, %46, %27
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @avpriv_report_missing_feature(i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %61, i32* %8, align 4
  br label %102

62:                                               ; preds = %52
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = call i32 @av_freep(i8*** %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = call i32 @get_bits_left(i32* %9)
  %72 = add nsw i32 %71, 7
  %73 = sdiv i32 %72, 8
  %74 = call i64 @ff_alloc_extradata(%struct.TYPE_5__* %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %62
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %8, align 4
  br label %102

79:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %98, %79
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %81, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %80
  %89 = call i8* @get_bits(i32* %9, i32 8)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  store i8* %89, i8** %97, align 8
  br label %98

98:                                               ; preds = %88
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %80

101:                                              ; preds = %80
  br label %102

102:                                              ; preds = %101, %76, %55
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @av_free(i32* %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %24
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @ff_hex_to_data(i32*, i8*) #1

declare dso_local i32* @av_mallocz(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @av_freep(i8***) #1

declare dso_local i64 @ff_alloc_extradata(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
