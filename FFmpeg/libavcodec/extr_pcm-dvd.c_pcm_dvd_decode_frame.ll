; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pcm-dvd.c_pcm_dvd_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pcm-dvd.c_pcm_dvd_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i8** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PCM packet too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"block_size has changed %d != %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_13__*)* @pcm_dvd_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_dvd_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %10, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %13, align 8
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %32, i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %5, align 4
  br label %213

36:                                               ; preds = %4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @pcm_dvd_parse_header(%struct.TYPE_15__* %37, i32* %38)
  store i32 %39, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %5, align 4
  br label %213

43:                                               ; preds = %36
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %43
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = load i32, i32* @AV_LOG_WARNING, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %57, i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %56, %48, %43
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32* %75, i32** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sub nsw i32 %76, 3
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %78, %81
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %82, %85
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %96 = call i32 @ff_get_buffer(%struct.TYPE_15__* %94, %struct.TYPE_14__* %95, i32 0)
  store i32 %96, i32* %14, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %68
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %5, align 4
  br label %213

100:                                              ; preds = %68
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %16, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %171

110:                                              ; preds = %100
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %113, %116
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %150

121:                                              ; preds = %110
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32*, i32** %11, align 8
  %131 = load i32, i32* %17, align 4
  %132 = call i32 @memcpy(i32* %129, i32* %130, i32 %131)
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i8*, i8** %16, align 8
  %138 = call i8* @pcm_dvd_decode_samples(%struct.TYPE_15__* %133, i32* %136, i8* %137, i32 1)
  store i8* %138, i8** %16, align 8
  %139 = load i32, i32* %17, align 4
  %140 = load i32*, i32** %11, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %11, align 8
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %12, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %12, align 4
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  store i32 0, i32* %147, align 8
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %15, align 4
  br label %170

150:                                              ; preds = %110
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = load i32*, i32** %11, align 8
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @memcpy(i32* %158, i32* %159, i32 %160)
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %165, %162
  store i32 %166, i32* %164, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %5, align 4
  br label %213

170:                                              ; preds = %121
  br label %171

171:                                              ; preds = %170, %100
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %176 = load i32*, i32** %11, align 8
  %177 = load i8*, i8** %16, align 8
  %178 = load i32, i32* %15, align 4
  %179 = call i8* @pcm_dvd_decode_samples(%struct.TYPE_15__* %175, i32* %176, i8* %177, i32 %178)
  %180 = load i32, i32* %15, align 4
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = mul nsw i32 %180, %183
  %185 = load i32, i32* %12, align 4
  %186 = sub nsw i32 %185, %184
  store i32 %186, i32* %12, align 4
  br label %187

187:                                              ; preds = %174, %171
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %208

190:                                              ; preds = %187
  %191 = load i32, i32* %15, align 4
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %191, %194
  %196 = load i32*, i32** %11, align 8
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32* %198, i32** %11, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = load i32*, i32** %11, align 8
  %203 = load i32, i32* %12, align 4
  %204 = call i32 @memcpy(i32* %201, i32* %202, i32 %203)
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  br label %208

208:                                              ; preds = %190, %187
  %209 = load i32*, i32** %8, align 8
  store i32 1, i32* %209, align 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %208, %150, %98, %41, %31
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @pcm_dvd_parse_header(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @pcm_dvd_decode_samples(%struct.TYPE_15__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
