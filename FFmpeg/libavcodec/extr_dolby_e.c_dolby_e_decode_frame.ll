; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_dolby_e_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_dolby_e_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.TYPE_13__ = type { i32, i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid frame header\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"Stream has %d programs (configuration %d), channels will be output in native order.\0A\00", align 1
@AV_CH_LAYOUT_4POINT0 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_5POINT1 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_7POINT1 = common dso_local global i32 0, align 4
@sample_rate_tab = common dso_local global i32* null, align 8
@AV_SAMPLE_FMT_FLTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_13__*)* @dolby_e_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dolby_e_decode_frame(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %10, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %23, i32* %5, align 4
  br label %213

24:                                               ; preds = %4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @AV_RB24(i64 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = and i32 %29, 16777214
  %31 = icmp eq i32 %30, 493710
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 24, i32* %34, align 8
  br label %56

35:                                               ; preds = %24
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %36, 16777184
  %38 = icmp eq i32 %37, 493792
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i32 20, i32* %41, align 8
  br label %55

42:                                               ; preds = %35
  %43 = load i32, i32* %13, align 4
  %44 = and i32 %43, 16776704
  %45 = icmp eq i32 %44, 495104
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 16, i32* %48, align 8
  br label %54

49:                                               ; preds = %42
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %50, i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %5, align 4
  br label %213

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %39
  br label %56

56:                                               ; preds = %55, %32
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 7
  %61 = ashr i32 %60, 3
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %66, %70
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 9
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %76, %79
  %81 = sub nsw i32 %80, 1
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 24, %87
  %89 = ashr i32 %84, %88
  %90 = and i32 %89, 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %94 = call i32 @parse_metadata(%struct.TYPE_12__* %93)
  store i32 %94, i32* %14, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %56
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %5, align 4
  br label %213

98:                                               ; preds = %56
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp sgt i32 %101, 1
  br i1 %102, label %103, label %120

103:                                              ; preds = %98
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %110 = load i32, i32* @AV_LOG_WARNING, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %109, i32 %110, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %116)
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 5
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %108, %103, %98
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  switch i32 %123, label %136 [
    i32 4, label %124
    i32 6, label %128
    i32 8, label %132
  ]

124:                                              ; preds = %120
  %125 = load i32, i32* @AV_CH_LAYOUT_4POINT0, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  br label %136

128:                                              ; preds = %120
  %129 = load i32, i32* @AV_CH_LAYOUT_5POINT1, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  br label %136

132:                                              ; preds = %120
  %133 = load i32, i32* @AV_CH_LAYOUT_7POINT1, align 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %120, %132, %128, %124
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32*, i32** @sample_rate_tab, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 7
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* @AV_SAMPLE_FMT_FLTP, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = sdiv i32 %155, 2
  store i32 %156, i32* %11, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %12, align 4
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @parse_audio(%struct.TYPE_12__* %160, i32 0, i32 %161, i32 0)
  store i32 %162, i32* %14, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %136
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %5, align 4
  br label %213

166:                                              ; preds = %136
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @parse_audio(%struct.TYPE_12__* %167, i32 %168, i32 %169, i32 0)
  store i32 %170, i32* %14, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %5, align 4
  br label %213

174:                                              ; preds = %166
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %176 = call i32 @parse_metadata_ext(%struct.TYPE_12__* %175)
  store i32 %176, i32* %14, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* %14, align 4
  store i32 %179, i32* %5, align 4
  br label %213

180:                                              ; preds = %174
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @parse_audio(%struct.TYPE_12__* %181, i32 0, i32 %182, i32 1)
  store i32 %183, i32* %14, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i32, i32* %14, align 4
  store i32 %186, i32* %5, align 4
  br label %213

187:                                              ; preds = %180
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @parse_audio(%struct.TYPE_12__* %188, i32 %189, i32 %190, i32 1)
  store i32 %191, i32* %14, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = load i32, i32* %14, align 4
  store i32 %194, i32* %5, align 4
  br label %213

195:                                              ; preds = %187
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %197 = call i32 @parse_meter(%struct.TYPE_12__* %196)
  store i32 %197, i32* %14, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i32, i32* %14, align 4
  store i32 %200, i32* %5, align 4
  br label %213

201:                                              ; preds = %195
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = call i32 @filter_frame(%struct.TYPE_12__* %202, i8* %203)
  store i32 %204, i32* %14, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %5, align 4
  br label %213

208:                                              ; preds = %201
  %209 = load i32*, i32** %8, align 8
  store i32 1, i32* %209, align 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %208, %206, %199, %193, %185, %178, %172, %164, %96, %49, %22
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i32 @AV_RB24(i64) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @parse_metadata(%struct.TYPE_12__*) #1

declare dso_local i32 @parse_audio(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @parse_metadata_ext(%struct.TYPE_12__*) #1

declare dso_local i32 @parse_meter(%struct.TYPE_12__*) #1

declare dso_local i32 @filter_frame(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
