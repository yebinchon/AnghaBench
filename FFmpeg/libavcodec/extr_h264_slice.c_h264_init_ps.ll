; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_slice.c_h264_init_ps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_slice.c_h264_init_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, i64, %struct.TYPE_26__*, %struct.TYPE_22__, i32, %struct.TYPE_23__ }
%struct.TYPE_18__ = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_23__ = type { %struct.TYPE_24__*, %struct.TYPE_19__*, %struct.TYPE_25__*, %struct.TYPE_20__**, %struct.TYPE_19__*, %struct.TYPE_20__** }
%struct.TYPE_24__ = type { i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_26__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AVCOL_RANGE_JPEG = common dso_local global i32 0, align 4
@AVCOL_RANGE_MPEG = common dso_local global i32 0, align 4
@AVCOL_TRC_UNSPECIFIED = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"changing width %d -> %d / height %d -> %d on slice %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Reinit context to %dx%d, pix_fmt: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"h264_slice_header_init() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_26__*, i32)* @h264_init_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_init_ps(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %3
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 18
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 4
  %19 = call i32 @av_buffer_unref(%struct.TYPE_19__** %18)
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 18
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 2
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %22, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 18
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %25, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %26, i64 %29
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = call i8* @av_buffer_ref(%struct.TYPE_20__* %31)
  %33 = bitcast i8* %32 to %struct.TYPE_19__*
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 18
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 4
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %36, align 8
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 18
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %41 = icmp ne %struct.TYPE_19__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %15
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %563

45:                                               ; preds = %15
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 18
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.TYPE_25__*
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 18
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 2
  store %struct.TYPE_25__* %52, %struct.TYPE_25__** %55, align 8
  br label %56

56:                                               ; preds = %45, %3
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 18
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %59, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 18
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %63, align 8
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 18
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %64, i64 %70
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.TYPE_24__*
  %76 = icmp ne %struct.TYPE_24__* %60, %75
  br i1 %76, label %77, label %189

77:                                               ; preds = %56
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 18
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = call i32 @av_buffer_unref(%struct.TYPE_19__** %80)
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 18
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %84, align 8
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 18
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %87, align 8
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 18
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %88, i64 %94
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = call i8* @av_buffer_ref(%struct.TYPE_20__* %96)
  %98 = bitcast i8* %97 to %struct.TYPE_19__*
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 18
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  store %struct.TYPE_19__* %98, %struct.TYPE_19__** %101, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 18
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  %106 = icmp ne %struct.TYPE_19__* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %77
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %4, align 4
  br label %563

110:                                              ; preds = %77
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 18
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to %struct.TYPE_24__*
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 18
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  store %struct.TYPE_24__* %117, %struct.TYPE_24__** %120, align 8
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 18
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %123, %129
  br i1 %130, label %164, label %131

131:                                              ; preds = %110
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 18
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %134, %140
  br i1 %141, label %164, label %142

142:                                              ; preds = %131
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 18
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %145, %151
  br i1 %152, label %164, label %153

153:                                              ; preds = %142
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 18
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %156, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %153, %142, %131, %110
  store i32 1, i32* %9, align 4
  br label %165

165:                                              ; preds = %164, %153
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 18
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %168, %174
  br i1 %175, label %187, label %176

176:                                              ; preds = %165
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 18
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %179, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %176, %165
  store i32 1, i32* %9, align 4
  br label %188

188:                                              ; preds = %187, %176
  br label %189

189:                                              ; preds = %188, %56
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 18
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %192, align 8
  store %struct.TYPE_24__* %193, %struct.TYPE_24__** %8, align 8
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %254

198:                                              ; preds = %189
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 16, %201
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %203, i32 0, i32 13
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %202, %207
  br i1 %208, label %252, label %209

209:                                              ; preds = %198
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 16, %212
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 0, i32 13
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %213, %218
  br i1 %219, label %252, label %220

220:                                              ; preds = %209
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %223, %226
  br i1 %227, label %252, label %228

228:                                              ; preds = %220
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %231, %234
  br i1 %235, label %252, label %236

236:                                              ; preds = %228
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %239, %242
  br i1 %243, label %252, label %244

244:                                              ; preds = %236
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %247, %250
  br label %252

252:                                              ; preds = %244, %236, %228, %220, %209, %198
  %253 = phi i1 [ true, %236 ], [ true, %228 ], [ true, %220 ], [ true, %209 ], [ true, %198 ], [ %251, %244 ]
  br label %254

254:                                              ; preds = %252, %189
  %255 = phi i1 [ false, %189 ], [ %253, %252 ]
  %256 = zext i1 %255 to i32
  store i32 %256, i32* %10, align 4
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 13
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %275, label %264

264:                                              ; preds = %254
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 13
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i64 @non_j_pixfmt(i32 %269)
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %272 = call i32 @get_pixel_format(%struct.TYPE_27__* %271, i32 0)
  %273 = call i64 @non_j_pixfmt(i32 %272)
  %274 = icmp ne i64 %270, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %264, %254
  store i32 1, i32* %10, align 4
  br label %276

276:                                              ; preds = %275, %264
  %277 = load i32, i32* %7, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %291

279:                                              ; preds = %276
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 12
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %283, i32 0, i32 13
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 10
  %287 = load i32, i32* %286, align 4
  %288 = call i64 @av_cmp_q(i32 %282, i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %279
  store i32 1, i32* %10, align 4
  br label %291

291:                                              ; preds = %290, %279, %276
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 17
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %465, label %296

296:                                              ; preds = %291
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %298 = call i32 @ff_h264_get_profile(%struct.TYPE_24__* %297)
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 13
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 9
  store i32 %298, i32* %302, align 8
  %303 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %303, i32 0, i32 11
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 13
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 8
  store i32 %305, i32* %309, align 4
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 10
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %313, i32 0, i32 13
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 7
  store i32 %312, i32* %316, align 8
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 8
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %325, i32 0, i32 1
  store i32 %324, i32* %326, align 4
  %327 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = mul nsw i32 %329, %332
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %334, i32 0, i32 7
  store i32 %333, i32* %335, align 4
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = add nsw i32 %338, 1
  %340 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %340, i32 0, i32 8
  store i32 %339, i32* %341, align 8
  %342 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = mul nsw i32 %344, 4
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %346, i32 0, i32 9
  store i32 %345, i32* %347, align 4
  %348 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %348, i32 0, i32 3
  %350 = load i64, i64* %349, align 8
  %351 = icmp sle i64 %350, 1
  %352 = zext i1 %351 to i32
  %353 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %353, i32 0, i32 10
  store i32 %352, i32* %354, align 8
  %355 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = mul nsw i32 16, %357
  %359 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %359, i32 0, i32 11
  store i32 %358, i32* %360, align 4
  %361 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = mul nsw i32 16, %363
  %365 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %365, i32 0, i32 12
  store i32 %364, i32* %366, align 8
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %368 = call i32 @init_dimensions(%struct.TYPE_27__* %367)
  store i32 %368, i32* %11, align 4
  %369 = load i32, i32* %11, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %296
  %372 = load i32, i32* %11, align 4
  store i32 %372, i32* %4, align 4
  br label %563

373:                                              ; preds = %296
  %374 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %374, i32 0, i32 9
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %431

378:                                              ; preds = %373
  %379 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %380 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %379, i32 0, i32 4
  %381 = load i64, i64* %380, align 8
  %382 = icmp sgt i64 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %378
  %384 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  br label %387

385:                                              ; preds = %378
  %386 = load i32, i32* @AVCOL_RANGE_MPEG, align 4
  br label %387

387:                                              ; preds = %385, %383
  %388 = phi i32 [ %384, %383 ], [ %386, %385 ]
  %389 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %389, i32 0, i32 13
  %391 = load %struct.TYPE_18__*, %struct.TYPE_18__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %391, i32 0, i32 6
  store i32 %388, i32* %392, align 4
  %393 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %393, i32 0, i32 8
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %430

397:                                              ; preds = %387
  %398 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %398, i32 0, i32 13
  %400 = load %struct.TYPE_18__*, %struct.TYPE_18__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %400, i32 0, i32 3
  %402 = load i64, i64* %401, align 8
  %403 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %403, i32 0, i32 5
  %405 = load i64, i64* %404, align 8
  %406 = icmp ne i64 %402, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %397
  store i32 1, i32* %9, align 4
  br label %408

408:                                              ; preds = %407, %397
  %409 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %410 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %409, i32 0, i32 7
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %412, i32 0, i32 13
  %414 = load %struct.TYPE_18__*, %struct.TYPE_18__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %414, i32 0, i32 5
  store i32 %411, i32* %415, align 8
  %416 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %417 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %416, i32 0, i32 6
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %419, i32 0, i32 13
  %421 = load %struct.TYPE_18__*, %struct.TYPE_18__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %421, i32 0, i32 4
  store i64 %418, i64* %422, align 8
  %423 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %424 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %423, i32 0, i32 5
  %425 = load i64, i64* %424, align 8
  %426 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %426, i32 0, i32 13
  %428 = load %struct.TYPE_18__*, %struct.TYPE_18__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %428, i32 0, i32 3
  store i64 %425, i64* %429, align 8
  br label %430

430:                                              ; preds = %408, %387
  br label %431

431:                                              ; preds = %430, %373
  %432 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %432, i32 0, i32 16
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 1
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %464

438:                                              ; preds = %431
  %439 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %439, i32 0, i32 16
  %441 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = call i64 @av_color_transfer_name(i64 %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %464

446:                                              ; preds = %438
  %447 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %447, i32 0, i32 16
  %449 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @AVCOL_TRC_UNSPECIFIED, align 8
  %453 = icmp ne i64 %451, %452
  br i1 %453, label %454, label %464

454:                                              ; preds = %446
  %455 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %455, i32 0, i32 16
  %457 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %460, i32 0, i32 13
  %462 = load %struct.TYPE_18__*, %struct.TYPE_18__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %462, i32 0, i32 4
  store i64 %459, i64* %463, align 8
  br label %464

464:                                              ; preds = %454, %446, %438, %431
  br label %465

465:                                              ; preds = %464, %291
  %466 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %466, i32 0, i32 6
  %468 = load i32, i32* %467, align 8
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %476

470:                                              ; preds = %465
  %471 = load i32, i32* %10, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %476, label %473

473:                                              ; preds = %470
  %474 = load i32, i32* %9, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %562

476:                                              ; preds = %473, %470, %465
  %477 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %477, i32 0, i32 6
  %479 = load i32, i32* %478, align 8
  store i32 %479, i32* %12, align 4
  %480 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %481 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %480, i32 0, i32 6
  store i32 0, i32* %481, align 8
  %482 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %483 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %483, i32 0, i32 15
  %485 = load %struct.TYPE_26__*, %struct.TYPE_26__** %484, align 8
  %486 = icmp ne %struct.TYPE_26__* %482, %485
  br i1 %486, label %487, label %514

487:                                              ; preds = %476
  %488 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %489 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %488, i32 0, i32 13
  %490 = load %struct.TYPE_18__*, %struct.TYPE_18__** %489, align 8
  %491 = load i32, i32* @AV_LOG_ERROR, align 4
  %492 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %493 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %492, i32 0, i32 11
  %494 = load i32, i32* %493, align 4
  %495 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %496 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %495, i32 0, i32 13
  %497 = load %struct.TYPE_18__*, %struct.TYPE_18__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %501 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %500, i32 0, i32 12
  %502 = load i32, i32* %501, align 8
  %503 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %504 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %503, i32 0, i32 13
  %505 = load %struct.TYPE_18__*, %struct.TYPE_18__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %509 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %508, i32 0, i32 14
  %510 = load i64, i64* %509, align 8
  %511 = add nsw i64 %510, 1
  %512 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %490, i32 %491, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %494, i32 %499, i32 %502, i32 %507, i64 %511)
  %513 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %513, i32* %4, align 4
  br label %563

514:                                              ; preds = %476
  %515 = load i32, i32* %7, align 4
  %516 = call i32 @av_assert1(i32 %515)
  %517 = load i32, i32* %12, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %522

519:                                              ; preds = %514
  %520 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %521 = call i32 @ff_h264_flush_change(%struct.TYPE_27__* %520)
  br label %522

522:                                              ; preds = %519, %514
  %523 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %524 = call i32 @get_pixel_format(%struct.TYPE_27__* %523, i32 1)
  store i32 %524, i32* %11, align 4
  %525 = icmp slt i32 %524, 0
  br i1 %525, label %526, label %528

526:                                              ; preds = %522
  %527 = load i32, i32* %11, align 4
  store i32 %527, i32* %4, align 4
  br label %563

528:                                              ; preds = %522
  %529 = load i32, i32* %11, align 4
  %530 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %531 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %530, i32 0, i32 13
  %532 = load %struct.TYPE_18__*, %struct.TYPE_18__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %532, i32 0, i32 2
  store i32 %529, i32* %533, align 8
  %534 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %535 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %534, i32 0, i32 13
  %536 = load %struct.TYPE_18__*, %struct.TYPE_18__** %535, align 8
  %537 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %538 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %539 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %538, i32 0, i32 11
  %540 = load i32, i32* %539, align 4
  %541 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %542 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %541, i32 0, i32 12
  %543 = load i32, i32* %542, align 8
  %544 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %545 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %544, i32 0, i32 13
  %546 = load %struct.TYPE_18__*, %struct.TYPE_18__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %546, i32 0, i32 2
  %548 = load i32, i32* %547, align 8
  %549 = call i32 @av_get_pix_fmt_name(i32 %548)
  %550 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %536, i32 %537, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %540, i32 %543, i32 %549)
  %551 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %552 = call i32 @h264_slice_header_init(%struct.TYPE_27__* %551)
  store i32 %552, i32* %11, align 4
  %553 = icmp slt i32 %552, 0
  br i1 %553, label %554, label %561

554:                                              ; preds = %528
  %555 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %556 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %555, i32 0, i32 13
  %557 = load %struct.TYPE_18__*, %struct.TYPE_18__** %556, align 8
  %558 = load i32, i32* @AV_LOG_ERROR, align 4
  %559 = call i32 (%struct.TYPE_18__*, i32, i8*, ...) @av_log(%struct.TYPE_18__* %557, i32 %558, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %560 = load i32, i32* %11, align 4
  store i32 %560, i32* %4, align 4
  br label %563

561:                                              ; preds = %528
  br label %562

562:                                              ; preds = %561, %473
  store i32 0, i32* %4, align 4
  br label %563

563:                                              ; preds = %562, %554, %526, %487, %371, %107, %42
  %564 = load i32, i32* %4, align 4
  ret i32 %564
}

declare dso_local i32 @av_buffer_unref(%struct.TYPE_19__**) #1

declare dso_local i8* @av_buffer_ref(%struct.TYPE_20__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @non_j_pixfmt(i32) #1

declare dso_local i32 @get_pixel_format(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @av_cmp_q(i32, i32) #1

declare dso_local i32 @ff_h264_get_profile(%struct.TYPE_24__*) #1

declare dso_local i32 @init_dimensions(%struct.TYPE_27__*) #1

declare dso_local i64 @av_color_transfer_name(i64) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @ff_h264_flush_change(%struct.TYPE_27__*) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @h264_slice_header_init(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
