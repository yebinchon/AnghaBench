; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_datascope.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_datascope.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_18__*, %struct.TYPE_22__**, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_23__*, i32, %struct.TYPE_19__*, i32*, i32)* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [256 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %6, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %7, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %28, i64 0
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %8, align 8
  %31 = bitcast %struct.TYPE_19__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 32, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_21__* @ff_get_video_buffer(%struct.TYPE_22__* %32, i32 %35, i32 %38)
  store %struct.TYPE_21__* %39, %struct.TYPE_21__** %12, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %41 = icmp ne %struct.TYPE_21__* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %2
  %43 = call i32 @av_frame_free(%struct.TYPE_21__** %5)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %278

46:                                               ; preds = %2
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 10
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ff_fill_rectangle(i32* %53, i32* %55, i32 %58, i32 %61, i32 0, i32 0, i32 %64, i32 %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 9
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %247

73:                                               ; preds = %46
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @FFMAX(i32 %76, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %14, align 4
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %13, align 4
  %88 = mul nsw i32 %87, 12
  %89 = sdiv i32 %86, %88
  store i32 %89, i32* %15, align 4
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = mul nsw i32 %93, 10
  %95 = sdiv i32 %92, %94
  store i32 %95, i32* %16, align 4
  %96 = bitcast [256 x i8]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %96, i8 0, i64 256, i1 false)
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @snprintf(i8* %97, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %105 = call i32 @strlen(i8* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 %106, 10
  store i32 %107, i32* %10, align 4
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i32 @snprintf(i8* %108, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %116 = call i32 @strlen(i8* %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = mul nsw i32 %117, 10
  store i32 %118, i32* %11, align 4
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load i32, i32* %13, align 4
  %125 = mul nsw i32 %124, 12
  %126 = sdiv i32 %123, %125
  store i32 %126, i32* %15, align 4
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 %129, %130
  %132 = load i32, i32* %14, align 4
  %133 = mul nsw i32 %132, 10
  %134 = sdiv i32 %131, %133
  store i32 %134, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %135

135:                                              ; preds = %189, %73
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %192

139:                                              ; preds = %135
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %143, %144
  %146 = call i32 @snprintf(i8* %140, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %145)
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 7
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %13, align 4
  %160 = mul nsw i32 %158, %159
  %161 = mul nsw i32 %160, 12
  %162 = add nsw i32 %157, %161
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  %165 = load i32, i32* %13, align 4
  %166 = mul nsw i32 %164, %165
  %167 = add nsw i32 %162, %166
  %168 = sub nsw i32 %167, 2
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @ff_fill_rectangle(i32* %148, i32* %150, i32 %153, i32 %156, i32 0, i32 %168, i32 %169, i32 10)
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 7
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 6
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %19, align 4
  %178 = load i32, i32* %13, align 4
  %179 = mul nsw i32 %177, %178
  %180 = mul nsw i32 %179, 12
  %181 = add nsw i32 %176, %180
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  %184 = load i32, i32* %13, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %181, %185
  %187 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %188 = call i32 @draw_text(i32* %172, %struct.TYPE_21__* %173, i32* %175, i32 2, i32 %186, i8* %187, i32 0)
  br label %189

189:                                              ; preds = %139
  %190 = load i32, i32* %19, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %19, align 4
  br label %135

192:                                              ; preds = %135
  store i32 0, i32* %18, align 4
  br label %193

193:                                              ; preds = %243, %192
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %246

197:                                              ; preds = %193
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %18, align 4
  %203 = add nsw i32 %201, %202
  %204 = call i32 @snprintf(i8* %198, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %203)
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 7
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 8
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* %14, align 4
  %218 = mul nsw i32 %216, %217
  %219 = mul nsw i32 %218, 10
  %220 = add nsw i32 %215, %219
  %221 = load i32, i32* %14, align 4
  %222 = mul nsw i32 2, %221
  %223 = add nsw i32 %220, %222
  %224 = sub nsw i32 %223, 2
  %225 = load i32, i32* %11, align 4
  %226 = call i32 @ff_fill_rectangle(i32* %206, i32* %208, i32 %211, i32 %214, i32 %224, i32 0, i32 10, i32 %225)
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 7
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 6
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %14, align 4
  %235 = mul nsw i32 %233, %234
  %236 = mul nsw i32 %235, 10
  %237 = add nsw i32 %232, %236
  %238 = load i32, i32* %14, align 4
  %239 = mul nsw i32 2, %238
  %240 = add nsw i32 %237, %239
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %242 = call i32 @draw_text(i32* %228, %struct.TYPE_21__* %229, i32* %231, i32 %240, i32 2, i8* %241, i32 1)
  br label %243

243:                                              ; preds = %197
  %244 = load i32, i32* %18, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %18, align 4
  br label %193

246:                                              ; preds = %193
  br label %247

247:                                              ; preds = %246, %46
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  store %struct.TYPE_21__* %248, %struct.TYPE_21__** %249, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  store %struct.TYPE_21__* %250, %struct.TYPE_21__** %251, align 8
  %252 = load i32, i32* %11, align 4
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  store i32 %252, i32* %253, align 8
  %254 = load i32, i32* %10, align 4
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %254, i32* %255, align 4
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 0
  %260 = load i32 (%struct.TYPE_23__*, i32, %struct.TYPE_19__*, i32*, i32)*, i32 (%struct.TYPE_23__*, i32, %struct.TYPE_19__*, i32*, i32)** %259, align 8
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %266 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_23__* %265)
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sdiv i32 %269, 20
  %271 = call i32 @FFMAX(i32 %270, i32 1)
  %272 = call i32 @FFMIN(i32 %266, i32 %271)
  %273 = call i32 %260(%struct.TYPE_23__* %261, i32 %264, %struct.TYPE_19__* %9, i32* null, i32 %272)
  %274 = call i32 @av_frame_free(%struct.TYPE_21__** %5)
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %277 = call i32 @ff_filter_frame(%struct.TYPE_22__* %275, %struct.TYPE_21__* %276)
  store i32 %277, i32* %3, align 4
  br label %278

278:                                              ; preds = %247, %42
  %279 = load i32, i32* %3, align 4
  ret i32 %279
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_21__* @ff_get_video_buffer(%struct.TYPE_22__*, i32, i32) #2

declare dso_local i32 @av_frame_free(%struct.TYPE_21__**) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ff_fill_rectangle(i32*, i32*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @draw_text(i32*, %struct.TYPE_21__*, i32*, i32, i32, i8*, i32) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_23__*) #2

declare dso_local i32 @ff_filter_frame(%struct.TYPE_22__*, %struct.TYPE_21__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
