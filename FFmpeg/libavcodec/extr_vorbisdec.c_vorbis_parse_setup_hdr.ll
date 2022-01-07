; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisdec.c_vorbis_parse_setup_hdr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisdec.c_vorbis_parse_setup_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c" Vorbis setup header packet corrupt (no vorbis signature). \0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c" Vorbis setup header packet corrupt (codebooks). \0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c" Vorbis setup header packet corrupt (time domain transforms). \0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c" Vorbis setup header packet corrupt (floors). \0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c" Vorbis setup header packet corrupt (residues). \0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c" Vorbis setup header packet corrupt (mappings). \0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c" Vorbis setup header packet corrupt (modes). \0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c" Vorbis setup header packet corrupt (framing flag). \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @vorbis_parse_setup_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vorbis_parse_setup_hdr(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call signext i8 @get_bits(i32* %8, i32 8)
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 118
  br i1 %11, label %37, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = call signext i8 @get_bits(i32* %13, i32 8)
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 111
  br i1 %16, label %37, label %17

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = call signext i8 @get_bits(i32* %18, i32 8)
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 114
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = call signext i8 @get_bits(i32* %23, i32 8)
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 98
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = call signext i8 @get_bits(i32* %28, i32 8)
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 105
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = call signext i8 @get_bits(i32* %33, i32 8)
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 115
  br i1 %36, label %37, label %44

37:                                               ; preds = %32, %27, %22, %17, %12, %1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = call i32 @av_log(i32 %40, i32 %41, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %2, align 4
  br label %122

44:                                               ; preds = %32
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = call i32 @vorbis_parse_setup_hdr_codebooks(%struct.TYPE_9__* %45)
  store i32 %46, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = call i32 @av_log(i32 %51, i32 %52, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %122

55:                                               ; preds = %44
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = call i32 @vorbis_parse_setup_hdr_tdtransforms(%struct.TYPE_9__* %56)
  store i32 %57, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = call i32 @av_log(i32 %62, i32 %63, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %122

66:                                               ; preds = %55
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = call i32 @vorbis_parse_setup_hdr_floors(%struct.TYPE_9__* %67)
  store i32 %68, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = call i32 @av_log(i32 %73, i32 %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %122

77:                                               ; preds = %66
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = call i32 @vorbis_parse_setup_hdr_residues(%struct.TYPE_9__* %78)
  store i32 %79, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AV_LOG_ERROR, align 4
  %86 = call i32 @av_log(i32 %84, i32 %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %122

88:                                               ; preds = %77
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = call i32 @vorbis_parse_setup_hdr_mappings(%struct.TYPE_9__* %89)
  store i32 %90, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @AV_LOG_ERROR, align 4
  %97 = call i32 @av_log(i32 %95, i32 %96, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %122

99:                                               ; preds = %88
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = call i32 @vorbis_parse_setup_hdr_modes(%struct.TYPE_9__* %100)
  store i32 %101, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %99
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = call i32 @av_log(i32 %106, i32 %107, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %2, align 4
  br label %122

110:                                              ; preds = %99
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @get_bits1(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %110
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = call i32 @av_log(i32 %117, i32 %118, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %120 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %120, i32* %2, align 4
  br label %122

121:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %114, %103, %92, %81, %70, %59, %48, %37
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local signext i8 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @vorbis_parse_setup_hdr_codebooks(%struct.TYPE_9__*) #1

declare dso_local i32 @vorbis_parse_setup_hdr_tdtransforms(%struct.TYPE_9__*) #1

declare dso_local i32 @vorbis_parse_setup_hdr_floors(%struct.TYPE_9__*) #1

declare dso_local i32 @vorbis_parse_setup_hdr_residues(%struct.TYPE_9__*) #1

declare dso_local i32 @vorbis_parse_setup_hdr_mappings(%struct.TYPE_9__*) #1

declare dso_local i32 @vorbis_parse_setup_hdr_modes(%struct.TYPE_9__*) #1

declare dso_local i32 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
