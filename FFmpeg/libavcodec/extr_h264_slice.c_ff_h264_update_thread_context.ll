; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_slice.c_ff_h264_update_thread_context.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_slice.c_ff_h264_update_thread_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_39__, i32, i32, %struct.TYPE_35__, i32, %struct.TYPE_39__*, %struct.TYPE_39__*, %struct.TYPE_39__*, i32, i32, i32, i32, i32, %struct.TYPE_39__*, i32, i32, %struct.TYPE_39__*, i32, i32, i32, i32, %struct.TYPE_29__, %struct.TYPE_29__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_31__*, %struct.TYPE_39__*, i32, i32, i32, i32, %struct.TYPE_30__ }
%struct.TYPE_39__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64* }
%struct.TYPE_31__ = type { i32, i32, i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_32__*, %struct.TYPE_36__*, %struct.TYPE_32__*, i32*, %struct.TYPE_32__**, %struct.TYPE_32__** }
%struct.TYPE_36__ = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"h264_slice_header_init() failed\00", align 1
@H264_MAX_PICTURE_COUNT = common dso_local global i32 0, align 4
@MAX_DELAYED_PIC_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_h264_update_thread_context(%struct.TYPE_38__* %0, %struct.TYPE_38__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %4, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %5, align 8
  %13 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  store %struct.TYPE_37__* %15, %struct.TYPE_37__** %6, align 8
  %16 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  store %struct.TYPE_37__* %18, %struct.TYPE_37__** %7, align 8
  %19 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %23 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %24 = icmp eq %struct.TYPE_38__* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %772

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %110

29:                                               ; preds = %26
  %30 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %109, label %37

37:                                               ; preds = %29
  %38 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %109, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %109, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %109, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %62, i32 0, i32 41
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %64, align 8
  %66 = icmp ne %struct.TYPE_36__* %65, null
  br i1 %66, label %67, label %109

67:                                               ; preds = %61
  %68 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %68, i32 0, i32 41
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %74, i32 0, i32 41
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %73, %79
  br i1 %80, label %109, label %81

81:                                               ; preds = %67
  %82 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %82, i32 0, i32 41
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_36__*, %struct.TYPE_36__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %88, i32 0, i32 41
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_36__*, %struct.TYPE_36__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %87, %93
  br i1 %94, label %109, label %95

95:                                               ; preds = %81
  %96 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %96, i32 0, i32 41
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_36__*, %struct.TYPE_36__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %102, i32 0, i32 41
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_36__*, %struct.TYPE_36__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %101, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %95, %81, %67, %61, %53, %45, %37, %29
  store i32 1, i32* %10, align 4
  br label %110

110:                                              ; preds = %109, %95, %26
  %111 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %111, i32 0, i32 36
  %113 = load %struct.TYPE_39__*, %struct.TYPE_39__** %112, align 8
  %114 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %114, i32 0, i32 36
  %116 = load %struct.TYPE_39__*, %struct.TYPE_39__** %115, align 8
  %117 = call i32 @memcpy(%struct.TYPE_39__* %113, %struct.TYPE_39__* %116, i32 8)
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %176, %110
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %120, i32 0, i32 41
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 5
  %123 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %122, align 8
  %124 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_32__** %123)
  %125 = icmp slt i32 %119, %124
  br i1 %125, label %126, label %179

126:                                              ; preds = %118
  %127 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %127, i32 0, i32 41
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %130, i64 %132
  %134 = call i32 @av_buffer_unref(%struct.TYPE_32__** %133)
  %135 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %135, i32 0, i32 41
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %138, i64 %140
  %142 = load %struct.TYPE_32__*, %struct.TYPE_32__** %141, align 8
  %143 = icmp ne %struct.TYPE_32__* %142, null
  br i1 %143, label %144, label %175

144:                                              ; preds = %126
  %145 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %145, i32 0, i32 41
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i32 0, i32 5
  %148 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %148, i64 %150
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %151, align 8
  %153 = call i8* @av_buffer_ref(%struct.TYPE_32__* %152)
  %154 = bitcast i8* %153 to %struct.TYPE_32__*
  %155 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %155, i32 0, i32 41
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 5
  %158 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %158, i64 %160
  store %struct.TYPE_32__* %154, %struct.TYPE_32__** %161, align 8
  %162 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %162, i32 0, i32 41
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 5
  %165 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %165, i64 %167
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %168, align 8
  %170 = icmp ne %struct.TYPE_32__* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %144
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = call i32 @AVERROR(i32 %172)
  store i32 %173, i32* %3, align 4
  br label %772

174:                                              ; preds = %144
  br label %175

175:                                              ; preds = %174, %126
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %11, align 4
  br label %118

179:                                              ; preds = %118
  store i32 0, i32* %11, align 4
  br label %180

180:                                              ; preds = %238, %179
  %181 = load i32, i32* %11, align 4
  %182 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %182, i32 0, i32 41
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 4
  %185 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %184, align 8
  %186 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_32__** %185)
  %187 = icmp slt i32 %181, %186
  br i1 %187, label %188, label %241

188:                                              ; preds = %180
  %189 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %189, i32 0, i32 41
  %191 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %192, i64 %194
  %196 = call i32 @av_buffer_unref(%struct.TYPE_32__** %195)
  %197 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %197, i32 0, i32 41
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %200, i64 %202
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %203, align 8
  %205 = icmp ne %struct.TYPE_32__* %204, null
  br i1 %205, label %206, label %237

206:                                              ; preds = %188
  %207 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %207, i32 0, i32 41
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %208, i32 0, i32 4
  %210 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %210, i64 %212
  %214 = load %struct.TYPE_32__*, %struct.TYPE_32__** %213, align 8
  %215 = call i8* @av_buffer_ref(%struct.TYPE_32__* %214)
  %216 = bitcast i8* %215 to %struct.TYPE_32__*
  %217 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %217, i32 0, i32 41
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %219, align 8
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %220, i64 %222
  store %struct.TYPE_32__* %216, %struct.TYPE_32__** %223, align 8
  %224 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %224, i32 0, i32 41
  %226 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i32 0, i32 4
  %227 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %226, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %227, i64 %229
  %231 = load %struct.TYPE_32__*, %struct.TYPE_32__** %230, align 8
  %232 = icmp ne %struct.TYPE_32__* %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %206
  %234 = load i32, i32* @ENOMEM, align 4
  %235 = call i32 @AVERROR(i32 %234)
  store i32 %235, i32* %3, align 4
  br label %772

236:                                              ; preds = %206
  br label %237

237:                                              ; preds = %236, %188
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %11, align 4
  br label %180

241:                                              ; preds = %180
  %242 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %242, i32 0, i32 41
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 2
  %245 = call i32 @av_buffer_unref(%struct.TYPE_32__** %244)
  %246 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %246, i32 0, i32 41
  %248 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %247, i32 0, i32 0
  %249 = call i32 @av_buffer_unref(%struct.TYPE_32__** %248)
  %250 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %250, i32 0, i32 41
  %252 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %251, i32 0, i32 3
  store i32* null, i32** %252, align 8
  %253 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %253, i32 0, i32 41
  %255 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %254, i32 0, i32 1
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %255, align 8
  %256 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %256, i32 0, i32 41
  %258 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %257, i32 0, i32 2
  %259 = load %struct.TYPE_32__*, %struct.TYPE_32__** %258, align 8
  %260 = icmp ne %struct.TYPE_32__* %259, null
  br i1 %260, label %261, label %290

261:                                              ; preds = %241
  %262 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %262, i32 0, i32 41
  %264 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_32__*, %struct.TYPE_32__** %264, align 8
  %266 = call i8* @av_buffer_ref(%struct.TYPE_32__* %265)
  %267 = bitcast i8* %266 to %struct.TYPE_32__*
  %268 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %268, i32 0, i32 41
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 2
  store %struct.TYPE_32__* %267, %struct.TYPE_32__** %270, align 8
  %271 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %271, i32 0, i32 41
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_32__*, %struct.TYPE_32__** %273, align 8
  %275 = icmp ne %struct.TYPE_32__* %274, null
  br i1 %275, label %279, label %276

276:                                              ; preds = %261
  %277 = load i32, i32* @ENOMEM, align 4
  %278 = call i32 @AVERROR(i32 %277)
  store i32 %278, i32* %3, align 4
  br label %772

279:                                              ; preds = %261
  %280 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %280, i32 0, i32 41
  %282 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_32__*, %struct.TYPE_32__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = inttoptr i64 %285 to i32*
  %287 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %287, i32 0, i32 41
  %289 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %288, i32 0, i32 3
  store i32* %286, i32** %289, align 8
  br label %290

290:                                              ; preds = %279, %241
  %291 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %291, i32 0, i32 41
  %293 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_32__*, %struct.TYPE_32__** %293, align 8
  %295 = icmp ne %struct.TYPE_32__* %294, null
  br i1 %295, label %296, label %325

296:                                              ; preds = %290
  %297 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %297, i32 0, i32 41
  %299 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_32__*, %struct.TYPE_32__** %299, align 8
  %301 = call i8* @av_buffer_ref(%struct.TYPE_32__* %300)
  %302 = bitcast i8* %301 to %struct.TYPE_32__*
  %303 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %303, i32 0, i32 41
  %305 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %304, i32 0, i32 0
  store %struct.TYPE_32__* %302, %struct.TYPE_32__** %305, align 8
  %306 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %306, i32 0, i32 41
  %308 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_32__*, %struct.TYPE_32__** %308, align 8
  %310 = icmp ne %struct.TYPE_32__* %309, null
  br i1 %310, label %314, label %311

311:                                              ; preds = %296
  %312 = load i32, i32* @ENOMEM, align 4
  %313 = call i32 @AVERROR(i32 %312)
  store i32 %313, i32* %3, align 4
  br label %772

314:                                              ; preds = %296
  %315 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %315, i32 0, i32 41
  %317 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_32__*, %struct.TYPE_32__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = inttoptr i64 %320 to %struct.TYPE_36__*
  %322 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %322, i32 0, i32 41
  %324 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %323, i32 0, i32 1
  store %struct.TYPE_36__* %321, %struct.TYPE_36__** %324, align 8
  br label %325

325:                                              ; preds = %314, %290
  %326 = load i32, i32* %10, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %325
  %329 = load i32, i32* %8, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %401, label %331

331:                                              ; preds = %328, %325
  %332 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %333 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %335, i32 0, i32 1
  store i64 %334, i64* %336, align 8
  %337 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %340, i32 0, i32 2
  store i64 %339, i64* %341, align 8
  %342 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %342, i32 0, i32 4
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %345, i32 0, i32 4
  store i64 %344, i64* %346, align 8
  %347 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %347, i32 0, i32 3
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %350, i32 0, i32 3
  store i64 %349, i64* %351, align 8
  %352 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %352, i32 0, i32 40
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %355, i32 0, i32 40
  store i32 %354, i32* %356, align 4
  %357 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %357, i32 0, i32 39
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %360, i32 0, i32 39
  store i32 %359, i32* %361, align 8
  %362 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %362, i32 0, i32 38
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %365, i32 0, i32 38
  store i32 %364, i32* %366, align 4
  %367 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %367, i32 0, i32 37
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %370, i32 0, i32 37
  store i32 %369, i32* %371, align 8
  %372 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %331
  %377 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %393

381:                                              ; preds = %376, %331
  %382 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %383 = call i32 @h264_slice_header_init(%struct.TYPE_37__* %382)
  store i32 %383, i32* %9, align 4
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %385, label %392

385:                                              ; preds = %381
  %386 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %386, i32 0, i32 35
  %388 = load %struct.TYPE_31__*, %struct.TYPE_31__** %387, align 8
  %389 = load i32, i32* @AV_LOG_ERROR, align 4
  %390 = call i32 @av_log(%struct.TYPE_31__* %388, i32 %389, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %391 = load i32, i32* %9, align 4
  store i32 %391, i32* %3, align 4
  br label %772

392:                                              ; preds = %381
  br label %393

393:                                              ; preds = %392, %376
  %394 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %394, i32 0, i32 36
  %396 = load %struct.TYPE_39__*, %struct.TYPE_39__** %395, align 8
  %397 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %397, i32 0, i32 36
  %399 = load %struct.TYPE_39__*, %struct.TYPE_39__** %398, align 8
  %400 = call i32 @memcpy(%struct.TYPE_39__* %396, %struct.TYPE_39__* %399, i32 8)
  br label %401

401:                                              ; preds = %393, %328
  %402 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %402, i32 0, i32 35
  %404 = load %struct.TYPE_31__*, %struct.TYPE_31__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %408 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %407, i32 0, i32 35
  %409 = load %struct.TYPE_31__*, %struct.TYPE_31__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %409, i32 0, i32 3
  store i32 %406, i32* %410, align 4
  %411 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %411, i32 0, i32 35
  %413 = load %struct.TYPE_31__*, %struct.TYPE_31__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %416, i32 0, i32 35
  %418 = load %struct.TYPE_31__*, %struct.TYPE_31__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %418, i32 0, i32 2
  store i32 %415, i32* %419, align 4
  %420 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %421 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %420, i32 0, i32 35
  %422 = load %struct.TYPE_31__*, %struct.TYPE_31__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %425, i32 0, i32 35
  %427 = load %struct.TYPE_31__*, %struct.TYPE_31__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %427, i32 0, i32 1
  store i32 %424, i32* %428, align 4
  %429 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %429, i32 0, i32 35
  %431 = load %struct.TYPE_31__*, %struct.TYPE_31__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %435 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %434, i32 0, i32 35
  %436 = load %struct.TYPE_31__*, %struct.TYPE_31__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %436, i32 0, i32 0
  store i32 %433, i32* %437, align 4
  %438 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %438, i32 0, i32 34
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %441, i32 0, i32 34
  store i32 %440, i32* %442, align 4
  %443 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %444 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %443, i32 0, i32 33
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %447 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %446, i32 0, i32 33
  store i32 %445, i32* %447, align 8
  %448 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %449 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %448, i32 0, i32 32
  %450 = load i32, i32* %449, align 4
  %451 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %452 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %451, i32 0, i32 32
  store i32 %450, i32* %452, align 4
  %453 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %454 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %453, i32 0, i32 31
  %455 = load i32, i32* %454, align 8
  %456 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %456, i32 0, i32 31
  store i32 %455, i32* %457, align 8
  %458 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %458, i32 0, i32 30
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %461, i32 0, i32 30
  store i32 %460, i32* %462, align 4
  %463 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %464 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %463, i32 0, i32 29
  %465 = load i32, i32* %464, align 8
  %466 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %467 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %466, i32 0, i32 29
  store i32 %465, i32* %467, align 8
  %468 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %468, i32 0, i32 7
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %472 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %471, i32 0, i32 7
  store i32 %470, i32* %472, align 4
  store i32 0, i32* %11, align 4
  br label %473

473:                                              ; preds = %518, %401
  %474 = load i32, i32* %11, align 4
  %475 = load i32, i32* @H264_MAX_PICTURE_COUNT, align 4
  %476 = icmp slt i32 %474, %475
  br i1 %476, label %477, label %521

477:                                              ; preds = %473
  %478 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %479 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %480 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %479, i32 0, i32 28
  %481 = load %struct.TYPE_29__*, %struct.TYPE_29__** %480, align 8
  %482 = load i32, i32* %11, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %481, i64 %483
  %485 = call i32 @ff_h264_unref_picture(%struct.TYPE_37__* %478, %struct.TYPE_29__* %484)
  %486 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %487 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %486, i32 0, i32 28
  %488 = load %struct.TYPE_29__*, %struct.TYPE_29__** %487, align 8
  %489 = load i32, i32* %11, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %488, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %491, i32 0, i32 0
  %493 = load %struct.TYPE_33__*, %struct.TYPE_33__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %493, i32 0, i32 0
  %495 = load i64*, i64** %494, align 8
  %496 = getelementptr inbounds i64, i64* %495, i64 0
  %497 = load i64, i64* %496, align 8
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %517

499:                                              ; preds = %477
  %500 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %501 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %501, i32 0, i32 28
  %503 = load %struct.TYPE_29__*, %struct.TYPE_29__** %502, align 8
  %504 = load i32, i32* %11, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %503, i64 %505
  %507 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %508 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %507, i32 0, i32 28
  %509 = load %struct.TYPE_29__*, %struct.TYPE_29__** %508, align 8
  %510 = load i32, i32* %11, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %509, i64 %511
  %513 = call i32 @ff_h264_ref_picture(%struct.TYPE_37__* %500, %struct.TYPE_29__* %506, %struct.TYPE_29__* %512)
  store i32 %513, i32* %12, align 4
  %514 = icmp slt i32 %513, 0
  br i1 %514, label %515, label %517

515:                                              ; preds = %499
  %516 = load i32, i32* %12, align 4
  store i32 %516, i32* %3, align 4
  br label %772

517:                                              ; preds = %499, %477
  br label %518

518:                                              ; preds = %517
  %519 = load i32, i32* %11, align 4
  %520 = add nsw i32 %519, 1
  store i32 %520, i32* %11, align 4
  br label %473

521:                                              ; preds = %473
  %522 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %523 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %522, i32 0, i32 8
  %524 = load i32, i32* %523, align 8
  %525 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %526 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %527 = call i32 @REBASE_PICTURE(i32 %524, %struct.TYPE_37__* %525, %struct.TYPE_37__* %526)
  %528 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %529 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %528, i32 0, i32 8
  store i32 %527, i32* %529, align 8
  %530 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %531 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %532 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %531, i32 0, i32 27
  %533 = call i32 @ff_h264_unref_picture(%struct.TYPE_37__* %530, %struct.TYPE_29__* %532)
  %534 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %535 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %534, i32 0, i32 27
  %536 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %535, i32 0, i32 0
  %537 = load %struct.TYPE_33__*, %struct.TYPE_33__** %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %537, i32 0, i32 0
  %539 = load i64*, i64** %538, align 8
  %540 = getelementptr inbounds i64, i64* %539, i64 0
  %541 = load i64, i64* %540, align 8
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %555

543:                                              ; preds = %521
  %544 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %545 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %546 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %545, i32 0, i32 27
  %547 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %548 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %547, i32 0, i32 27
  %549 = call i32 @ff_h264_ref_picture(%struct.TYPE_37__* %544, %struct.TYPE_29__* %546, %struct.TYPE_29__* %548)
  store i32 %549, i32* %12, align 4
  %550 = load i32, i32* %12, align 4
  %551 = icmp slt i32 %550, 0
  br i1 %551, label %552, label %554

552:                                              ; preds = %543
  %553 = load i32, i32* %12, align 4
  store i32 %553, i32* %3, align 4
  br label %772

554:                                              ; preds = %543
  br label %555

555:                                              ; preds = %554, %521
  %556 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %557 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %556, i32 0, i32 26
  %558 = load i32, i32* %557, align 4
  %559 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %560 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %559, i32 0, i32 26
  store i32 %558, i32* %560, align 4
  %561 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %562 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %561, i32 0, i32 25
  %563 = load i32, i32* %562, align 8
  %564 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %565 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %564, i32 0, i32 25
  store i32 %563, i32* %565, align 8
  %566 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %567 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %566, i32 0, i32 7
  %568 = load i32, i32* %567, align 4
  %569 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %570 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %569, i32 0, i32 7
  store i32 %568, i32* %570, align 4
  %571 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %572 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %571, i32 0, i32 24
  %573 = load i32, i32* %572, align 4
  %574 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %575 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %574, i32 0, i32 24
  store i32 %573, i32* %575, align 4
  %576 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %577 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %576, i32 0, i32 23
  %578 = load i32, i32* %577, align 8
  %579 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %580 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %579, i32 0, i32 23
  store i32 %578, i32* %580, align 8
  %581 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %582 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %581, i32 0, i32 6
  %583 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %584 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %583, i32 0, i32 6
  %585 = call i32 @memcpy(%struct.TYPE_39__* %582, %struct.TYPE_39__* %584, i32 32)
  %586 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %587 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %586, i32 0, i32 13
  %588 = load %struct.TYPE_39__*, %struct.TYPE_39__** %587, align 8
  %589 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %590 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %589, i32 0, i32 13
  %591 = load %struct.TYPE_39__*, %struct.TYPE_39__** %590, align 8
  %592 = call i32 @memcpy(%struct.TYPE_39__* %588, %struct.TYPE_39__* %591, i32 8)
  %593 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %594 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %593, i32 0, i32 12
  %595 = load %struct.TYPE_39__*, %struct.TYPE_39__** %594, align 8
  %596 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %597 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %596, i32 0, i32 12
  %598 = load %struct.TYPE_39__*, %struct.TYPE_39__** %597, align 8
  %599 = call i32 @memcpy(%struct.TYPE_39__* %595, %struct.TYPE_39__* %598, i32 8)
  %600 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %601 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %600, i32 0, i32 11
  %602 = load %struct.TYPE_39__*, %struct.TYPE_39__** %601, align 8
  %603 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %604 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %603, i32 0, i32 11
  %605 = load %struct.TYPE_39__*, %struct.TYPE_39__** %604, align 8
  %606 = call i32 @memcpy(%struct.TYPE_39__* %602, %struct.TYPE_39__* %605, i32 8)
  %607 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %608 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %607, i32 0, i32 22
  %609 = load %struct.TYPE_39__*, %struct.TYPE_39__** %608, align 8
  %610 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %611 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %610, i32 0, i32 22
  %612 = load %struct.TYPE_39__*, %struct.TYPE_39__** %611, align 8
  %613 = call i32 @memcpy(%struct.TYPE_39__* %609, %struct.TYPE_39__* %612, i32 8)
  %614 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %615 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %614, i32 0, i32 21
  %616 = load i32, i32* %615, align 4
  %617 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %618 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %617, i32 0, i32 21
  store i32 %616, i32* %618, align 4
  %619 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %620 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %619, i32 0, i32 20
  %621 = load i32, i32* %620, align 8
  %622 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %623 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %622, i32 0, i32 20
  store i32 %621, i32* %623, align 8
  %624 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %625 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %624, i32 0, i32 19
  %626 = load %struct.TYPE_39__*, %struct.TYPE_39__** %625, align 8
  %627 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %628 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %627, i32 0, i32 19
  %629 = load %struct.TYPE_39__*, %struct.TYPE_39__** %628, align 8
  %630 = call i32 @memcpy(%struct.TYPE_39__* %626, %struct.TYPE_39__* %629, i32 8)
  %631 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %632 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %631, i32 0, i32 18
  %633 = load i32, i32* %632, align 8
  %634 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %635 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %634, i32 0, i32 18
  store i32 %633, i32* %635, align 8
  %636 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %637 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %636, i32 0, i32 17
  %638 = load i32, i32* %637, align 4
  %639 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %640 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %639, i32 0, i32 17
  store i32 %638, i32* %640, align 4
  %641 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %642 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %641, i32 0, i32 16
  %643 = load i32, i32* %642, align 8
  %644 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %645 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %644, i32 0, i32 16
  store i32 %643, i32* %645, align 8
  %646 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %647 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %646, i32 0, i32 15
  %648 = load i32, i32* %647, align 4
  %649 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %650 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %649, i32 0, i32 15
  store i32 %648, i32* %650, align 4
  %651 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %652 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %651, i32 0, i32 14
  %653 = load i32, i32* %652, align 8
  %654 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %655 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %654, i32 0, i32 14
  store i32 %653, i32* %655, align 8
  %656 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %657 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %656, i32 0, i32 13
  %658 = load %struct.TYPE_39__*, %struct.TYPE_39__** %657, align 8
  %659 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %660 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %659, i32 0, i32 13
  %661 = load %struct.TYPE_39__*, %struct.TYPE_39__** %660, align 8
  %662 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %663 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %664 = call i32 @copy_picture_range(%struct.TYPE_39__* %658, %struct.TYPE_39__* %661, i32 32, %struct.TYPE_37__* %662, %struct.TYPE_37__* %663)
  %665 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %666 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %665, i32 0, i32 12
  %667 = load %struct.TYPE_39__*, %struct.TYPE_39__** %666, align 8
  %668 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %669 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %668, i32 0, i32 12
  %670 = load %struct.TYPE_39__*, %struct.TYPE_39__** %669, align 8
  %671 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %672 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %673 = call i32 @copy_picture_range(%struct.TYPE_39__* %667, %struct.TYPE_39__* %670, i32 32, %struct.TYPE_37__* %671, %struct.TYPE_37__* %672)
  %674 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %675 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %674, i32 0, i32 11
  %676 = load %struct.TYPE_39__*, %struct.TYPE_39__** %675, align 8
  %677 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %678 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %677, i32 0, i32 11
  %679 = load %struct.TYPE_39__*, %struct.TYPE_39__** %678, align 8
  %680 = load i32, i32* @MAX_DELAYED_PIC_COUNT, align 4
  %681 = add nsw i32 %680, 2
  %682 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %683 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %684 = call i32 @copy_picture_range(%struct.TYPE_39__* %676, %struct.TYPE_39__* %679, i32 %681, %struct.TYPE_37__* %682, %struct.TYPE_37__* %683)
  %685 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %686 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %685, i32 0, i32 10
  %687 = load i32, i32* %686, align 8
  %688 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %689 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %688, i32 0, i32 10
  store i32 %687, i32* %689, align 8
  %690 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %691 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %690, i32 0, i32 9
  %692 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %692, i32 0, i32 0
  %694 = call i32 @av_buffer_unref(%struct.TYPE_32__** %693)
  %695 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %696 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %695, i32 0, i32 9
  %697 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %696, i32 0, i32 0
  %698 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %697, i32 0, i32 0
  %699 = load %struct.TYPE_32__*, %struct.TYPE_32__** %698, align 8
  %700 = icmp ne %struct.TYPE_32__* %699, null
  br i1 %700, label %701, label %723

701:                                              ; preds = %555
  %702 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %703 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %702, i32 0, i32 9
  %704 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %703, i32 0, i32 0
  %705 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %704, i32 0, i32 0
  %706 = load %struct.TYPE_32__*, %struct.TYPE_32__** %705, align 8
  %707 = call i8* @av_buffer_ref(%struct.TYPE_32__* %706)
  %708 = bitcast i8* %707 to %struct.TYPE_32__*
  %709 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %710 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %709, i32 0, i32 9
  %711 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %710, i32 0, i32 0
  %712 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %711, i32 0, i32 0
  store %struct.TYPE_32__* %708, %struct.TYPE_32__** %712, align 8
  %713 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %714 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %713, i32 0, i32 9
  %715 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %714, i32 0, i32 0
  %716 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %715, i32 0, i32 0
  %717 = load %struct.TYPE_32__*, %struct.TYPE_32__** %716, align 8
  %718 = icmp ne %struct.TYPE_32__* %717, null
  br i1 %718, label %722, label %719

719:                                              ; preds = %701
  %720 = load i32, i32* @ENOMEM, align 4
  %721 = call i32 @AVERROR(i32 %720)
  store i32 %721, i32* %3, align 4
  br label %772

722:                                              ; preds = %701
  br label %723

723:                                              ; preds = %722, %555
  %724 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %725 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %724, i32 0, i32 8
  %726 = load i32, i32* %725, align 8
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %729, label %728

728:                                              ; preds = %723
  store i32 0, i32* %3, align 4
  br label %772

729:                                              ; preds = %723
  %730 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %731 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %730, i32 0, i32 7
  %732 = load i32, i32* %731, align 4
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %751, label %734

734:                                              ; preds = %729
  %735 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %736 = call i32 @ff_h264_execute_ref_pic_marking(%struct.TYPE_37__* %735)
  store i32 %736, i32* %9, align 4
  %737 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %738 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %737, i32 0, i32 6
  %739 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %738, i32 0, i32 6
  %740 = load i32, i32* %739, align 4
  %741 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %742 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %741, i32 0, i32 6
  %743 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %742, i32 0, i32 7
  store i32 %740, i32* %743, align 4
  %744 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %745 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %744, i32 0, i32 6
  %746 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %745, i32 0, i32 4
  %747 = load i32, i32* %746, align 4
  %748 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %749 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %748, i32 0, i32 6
  %750 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %749, i32 0, i32 5
  store i32 %747, i32* %750, align 4
  br label %751

751:                                              ; preds = %734, %729
  %752 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %753 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %752, i32 0, i32 6
  %754 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %753, i32 0, i32 2
  %755 = load i32, i32* %754, align 4
  %756 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %757 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %756, i32 0, i32 6
  %758 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %757, i32 0, i32 3
  store i32 %755, i32* %758, align 4
  %759 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %760 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %759, i32 0, i32 6
  %761 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %760, i32 0, i32 0
  %762 = load i32, i32* %761, align 4
  %763 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %764 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %763, i32 0, i32 6
  %765 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %764, i32 0, i32 1
  store i32 %762, i32* %765, align 4
  %766 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %767 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %766, i32 0, i32 5
  %768 = load i32, i32* %767, align 8
  %769 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %770 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %769, i32 0, i32 5
  store i32 %768, i32* %770, align 8
  %771 = load i32, i32* %9, align 4
  store i32 %771, i32* %3, align 4
  br label %772

772:                                              ; preds = %751, %728, %719, %552, %515, %385, %311, %276, %233, %171, %25
  %773 = load i32, i32* %3, align 4
  ret i32 %773
}

declare dso_local i32 @memcpy(%struct.TYPE_39__*, %struct.TYPE_39__*, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_32__**) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_32__**) #1

declare dso_local i8* @av_buffer_ref(%struct.TYPE_32__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @h264_slice_header_init(%struct.TYPE_37__*) #1

declare dso_local i32 @av_log(%struct.TYPE_31__*, i32, i8*) #1

declare dso_local i32 @ff_h264_unref_picture(%struct.TYPE_37__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ff_h264_ref_picture(%struct.TYPE_37__*, %struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i32 @REBASE_PICTURE(i32, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i32 @copy_picture_range(%struct.TYPE_39__*, %struct.TYPE_39__*, i32, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i32 @ff_h264_execute_ref_pic_marking(%struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
