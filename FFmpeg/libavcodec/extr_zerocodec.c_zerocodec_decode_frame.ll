; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_zerocodec.c_zerocodec_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_zerocodec.c_zerocodec_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__*, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32**, i32, i32*, i32 }
%struct.TYPE_16__ = type { i32, i32*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Missing reference frame.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not reset inflate: %d.\0A\00", align 1
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Inflate failed with return code: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i8*, i32*, %struct.TYPE_18__*)* @zerocodec_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zerocodec_decode_frame(%struct.TYPE_20__* %0, i8* %1, i32* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %11, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %12, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %13, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32**, i32*** %31, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %14, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  br label %74

47:                                               ; preds = %4
  %48 = load i32*, i32** %14, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %51, i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %5, align 4
  br label %235

55:                                               ; preds = %47
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %59, %64
  %66 = load i32*, i32** %14, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %14, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %55, %41
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %76 = call i32 @inflateReset(%struct.TYPE_16__* %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* @Z_OK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = load i32, i32* %18, align 4
  %84 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %81, i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %85, i32* %5, align 4
  br label %235

86:                                               ; preds = %74
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %89 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %90 = call i32 @ff_get_buffer(%struct.TYPE_20__* %87, %struct.TYPE_19__* %88, i32 %89)
  store i32 %90, i32* %19, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %19, align 4
  store i32 %93, i32* %5, align 4
  br label %235

94:                                               ; preds = %86
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i32**, i32*** %106, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sub nsw i32 %112, 1
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %113, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %109, i64 %120
  store i32* %121, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %122

122:                                              ; preds = %214, %94
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %217

128:                                              ; preds = %122
  %129 = load i32*, i32** %15, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  store i32* %129, i32** %131, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 1
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %139 = load i32, i32* @Z_SYNC_FLUSH, align 4
  %140 = call i32 @inflate(%struct.TYPE_16__* %138, i32 %139)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* @Z_OK, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %128
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* @Z_STREAM_END, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %150 = load i32, i32* @AV_LOG_ERROR, align 4
  %151 = load i32, i32* %18, align 4
  %152 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %149, i32 %150, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %153, i32* %5, align 4
  br label %235

154:                                              ; preds = %144, %128
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %195, label %161

161:                                              ; preds = %154
  store i32 0, i32* %17, align 4
  br label %162

162:                                              ; preds = %191, %161
  %163 = load i32, i32* %17, align 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 1
  %168 = icmp slt i32 %163, %167
  br i1 %168, label %169, label %194

169:                                              ; preds = %162
  %170 = load i32*, i32** %14, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %15, align 8
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  %183 = sub nsw i32 0, %182
  %184 = and i32 %174, %183
  %185 = load i32*, i32** %15, align 8
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, %184
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %169
  %192 = load i32, i32* %17, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %17, align 4
  br label %162

194:                                              ; preds = %162
  br label %195

195:                                              ; preds = %194, %154
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %14, align 8
  %202 = sext i32 %200 to i64
  %203 = sub i64 0, %202
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32* %204, i32** %14, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %15, align 8
  %211 = sext i32 %209 to i64
  %212 = sub i64 0, %211
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32* %213, i32** %15, align 8
  br label %214

214:                                              ; preds = %195
  %215 = load i32, i32* %16, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %16, align 4
  br label %122

217:                                              ; preds = %122
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %219, align 8
  %221 = call i32 @av_frame_unref(%struct.TYPE_19__* %220)
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %223, align 8
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %226 = call i32 @av_frame_ref(%struct.TYPE_19__* %224, %struct.TYPE_19__* %225)
  store i32 %226, i32* %19, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %217
  %229 = load i32, i32* %19, align 4
  store i32 %229, i32* %5, align 4
  br label %235

230:                                              ; preds = %217
  %231 = load i32*, i32** %8, align 8
  store i32 1, i32* %231, align 4
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %5, align 4
  br label %235

235:                                              ; preds = %230, %228, %148, %92, %80, %50
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i32 @inflateReset(%struct.TYPE_16__*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_19__*) #1

declare dso_local i32 @av_frame_ref(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
