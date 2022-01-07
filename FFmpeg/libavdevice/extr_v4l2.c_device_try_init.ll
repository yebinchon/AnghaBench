; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_device_try_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_device_try_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ff_fmt_conversion_table = common dso_local global %struct.TYPE_7__* null, align 8
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Trying to set codec:%s pix_fmt:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"Cannot find a proper format for codec '%s' (id %d), pixel format '%s' (id %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*, i32*, i32*, i32*)* @device_try_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_try_init(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @ff_fmt_ff2v4l(i32 %16, i64 %19)
  %21 = load i32*, i32** %12, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %6
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_init(%struct.TYPE_6__* %26, i32* %27, i32* %28, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load i32*, i32** %12, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @AVERROR(i32 %37)
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %7, align 4
  br label %168

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %25
  br label %44

44:                                               ; preds = %43, %6
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %149, label %48

48:                                               ; preds = %44
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %123, %48
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ff_fmt_conversion_table, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %126

58:                                               ; preds = %49
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %75, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ff_fmt_conversion_table, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %122

75:                                               ; preds = %64, %58
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = load i32, i32* @AV_LOG_DEBUG, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ff_fmt_conversion_table, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @avcodec_get_name(i64 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ff_fmt_conversion_table, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @av_get_pix_fmt_name(i32 %90)
  %92 = call i64 @av_x_if_null(i32 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %93 = inttoptr i64 %92 to i8*
  %94 = ptrtoint i8* %93 to i64
  %95 = call i32 (%struct.TYPE_6__*, i32, i8*, i32, i64, ...) @av_log(%struct.TYPE_6__* %76, i32 %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %84, i64 %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ff_fmt_conversion_table, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %12, align 8
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @device_init(%struct.TYPE_6__* %103, i32* %104, i32* %105, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %75
  br label %126

112:                                              ; preds = %75
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @EINVAL, align 4
  %115 = call i32 @AVERROR(i32 %114)
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %7, align 4
  br label %168

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119
  %121 = load i32*, i32** %12, align 8
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %120, %64
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %49

126:                                              ; preds = %111, %49
  %127 = load i32*, i32** %12, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %126
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %132 = load i32, i32* @AV_LOG_ERROR, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @avcodec_get_name(i64 %135)
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @av_get_pix_fmt_name(i32 %140)
  %142 = call i64 @av_x_if_null(i32 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %143 = inttoptr i64 %142 to i8*
  %144 = load i32, i32* %9, align 4
  %145 = call i32 (%struct.TYPE_6__*, i32, i8*, i32, i64, ...) @av_log(%struct.TYPE_6__* %131, i32 %132, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %136, i64 %139, i8* %143, i32 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = call i32 @AVERROR(i32 %146)
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %130, %126
  br label %149

149:                                              ; preds = %148, %44
  %150 = load i32*, i32** %12, align 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ff_fmt_v4l2codec(i32 %151)
  %153 = load i32*, i32** %13, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32*, i32** %13, align 8
  %155 = load i32, i32* %154, align 4
  %156 = zext i32 %155 to i64
  %157 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %149
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @EINVAL, align 4
  %162 = call i32 @AVERROR(i32 %161)
  %163 = icmp eq i32 %160, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @av_assert0(i32 %164)
  br label %166

166:                                              ; preds = %159, %149
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %166, %117, %40
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local i32 @ff_fmt_ff2v4l(i32, i64) #1

declare dso_local i32 @device_init(%struct.TYPE_6__*, i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i32, i64, ...) #1

declare dso_local i32 @avcodec_get_name(i64) #1

declare dso_local i64 @av_x_if_null(i32, i8*) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @ff_fmt_v4l2codec(i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
