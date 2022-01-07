; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tinterlace.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tinterlace.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_17__*, %struct.TYPE_19__** }
%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_18__*, i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i64, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FIELD_UPPER_AND_LOWER = common dso_local global i32 0, align 4
@FIELD_LOWER = common dso_local global i32 0, align 4
@FIELD_UPPER = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %6, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %20, i64 0
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %7, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %8, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 7
  %28 = call i32 @av_frame_free(%struct.TYPE_18__** %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 7
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %33, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 4
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  store %struct.TYPE_18__* %39, %struct.TYPE_18__** %9, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %10, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %44, align 8
  %46 = icmp ne %struct.TYPE_18__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %640

48:                                               ; preds = %2
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %616 [
    i32 129, label %52
    i32 130, label %52
    i32 134, label %191
    i32 135, label %191
    i32 128, label %212
    i32 131, label %315
    i32 132, label %315
    i32 133, label %432
  ]

52:                                               ; preds = %48, %48
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_19__* %53, i32 %56, i32 %59)
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %11, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %62 = icmp ne %struct.TYPE_18__* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = call i32 @AVERROR(i32 %64)
  store i32 %65, i32* %3, align 4
  br label %640

66:                                               ; preds = %52
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %69 = call i32 @av_frame_copy_props(%struct.TYPE_18__* %67, %struct.TYPE_18__* %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 5
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @av_make_q(i32 2, i32 1)
  %83 = call i8* @av_mul_q(i8* %81, i32 %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32**
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @FIELD_UPPER_AND_LOWER, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 129
  br i1 %113, label %114, label %126

114:                                              ; preds = %66
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* @FIELD_LOWER, align 4
  br label %124

122:                                              ; preds = %114
  %123 = load i32, i32* @FIELD_UPPER, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  br label %128

126:                                              ; preds = %66
  %127 = load i32, i32* @FIELD_UPPER, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @copy_picture_field(%struct.TYPE_17__* %86, i64 %89, i32 %92, i32** %96, i32 %99, i32 %102, i32 %105, i32 %108, i32 %109, i32 1, i32 %129, i32 %132)
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i32**
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @FIELD_UPPER_AND_LOWER, align 4
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 129
  br i1 %161, label %162, label %174

162:                                              ; preds = %128
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %165, 1
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @FIELD_UPPER, align 4
  br label %172

170:                                              ; preds = %162
  %171 = load i32, i32* @FIELD_LOWER, align 4
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi i32 [ %169, %168 ], [ %171, %170 ]
  br label %176

174:                                              ; preds = %128
  %175 = load i32, i32* @FIELD_LOWER, align 4
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32 [ %173, %172 ], [ %175, %174 ]
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @copy_picture_field(%struct.TYPE_17__* %134, i64 %137, i32 %140, i32** %144, i32 %147, i32 %150, i32 %153, i32 %156, i32 %157, i32 1, i32 %177, i32 %180)
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 129
  br i1 %185, label %186, label %190

186:                                              ; preds = %176
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 4
  %189 = call i32 @av_frame_free(%struct.TYPE_18__** %188)
  br label %190

190:                                              ; preds = %186, %176
  br label %618

191:                                              ; preds = %48, %48
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 135
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  br label %200

198:                                              ; preds = %191
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi %struct.TYPE_18__* [ %197, %196 ], [ %199, %198 ]
  %202 = call %struct.TYPE_18__* @av_frame_clone(%struct.TYPE_18__* %201)
  store %struct.TYPE_18__* %202, %struct.TYPE_18__** %11, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %204 = icmp ne %struct.TYPE_18__* %203, null
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = load i32, i32* @ENOMEM, align 4
  %207 = call i32 @AVERROR(i32 %206)
  store i32 %207, i32* %3, align 4
  br label %640

208:                                              ; preds = %200
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 4
  %211 = call i32 @av_frame_free(%struct.TYPE_18__** %210)
  br label %618

212:                                              ; preds = %48
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_19__* %213, i32 %216, i32 %219)
  store %struct.TYPE_18__* %220, %struct.TYPE_18__** %11, align 8
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %222 = icmp ne %struct.TYPE_18__* %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %212
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = call i32 @AVERROR(i32 %224)
  store i32 %225, i32* %3, align 4
  br label %640

226:                                              ; preds = %212
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %229 = call i32 @av_frame_copy_props(%struct.TYPE_18__* %227, %struct.TYPE_18__* %228)
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 6
  store i32 %232, i32* %234, align 8
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 5
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @av_make_q(i32 2, i32 1)
  %239 = call i8* @av_mul_q(i8* %237, i32 %238)
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 5
  store i8* %239, i8** %241, align 8
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 1, %244
  %246 = and i32 %245, 1
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %226
  %249 = load i32, i32* @FIELD_UPPER, align 4
  br label %252

250:                                              ; preds = %226
  %251 = load i32, i32* @FIELD_LOWER, align 4
  br label %252

252:                                              ; preds = %250, %248
  %253 = phi i32 [ %249, %248 ], [ %251, %250 ]
  store i32 %253, i32* %12, align 4
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = inttoptr i64 %263 to i32**
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @FIELD_UPPER_AND_LOWER, align 4
  %278 = load i32, i32* %12, align 4
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @copy_picture_field(%struct.TYPE_17__* %254, i64 %257, i32 %260, i32** %264, i32 %267, i32 %270, i32 %273, i32 %276, i32 %277, i32 1, i32 %278, i32 %281)
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 4
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 6
  %292 = load i64, i64* %291, align 8
  %293 = inttoptr i64 %292 to i32**
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @FIELD_UPPER_AND_LOWER, align 4
  %307 = load i32, i32* %12, align 4
  %308 = icmp ne i32 %307, 0
  %309 = xor i1 %308, true
  %310 = zext i1 %309 to i32
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @copy_picture_field(%struct.TYPE_17__* %283, i64 %286, i32 %289, i32** %293, i32 %296, i32 %299, i32 %302, i32 %305, i32 %306, i32 1, i32 %310, i32 %313)
  br label %618

315:                                              ; preds = %48, %48
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = icmp eq i32 %318, 131
  %320 = zext i1 %319 to i32
  store i32 %320, i32* %13, align 4
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = call %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_19__* %321, i32 %324, i32 %327)
  store %struct.TYPE_18__* %328, %struct.TYPE_18__** %11, align 8
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %330 = icmp ne %struct.TYPE_18__* %329, null
  br i1 %330, label %334, label %331

331:                                              ; preds = %315
  %332 = load i32, i32* @ENOMEM, align 4
  %333 = call i32 @AVERROR(i32 %332)
  store i32 %333, i32* %3, align 4
  br label %640

334:                                              ; preds = %315
  %335 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %336 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %337 = call i32 @av_frame_copy_props(%struct.TYPE_18__* %335, %struct.TYPE_18__* %336)
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 0
  store i32 1, i32* %339, align 8
  %340 = load i32, i32* %13, align 4
  %341 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 1
  store i32 %340, i32* %342, align 4
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 4
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 4
  %352 = load i64, i64* %351, align 8
  %353 = inttoptr i64 %352 to i32**
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* %13, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %334
  %369 = load i32, i32* @FIELD_UPPER, align 4
  br label %372

370:                                              ; preds = %334
  %371 = load i32, i32* @FIELD_LOWER, align 4
  br label %372

372:                                              ; preds = %370, %368
  %373 = phi i32 [ %369, %368 ], [ %371, %370 ]
  %374 = load i32, i32* %13, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %372
  %377 = load i32, i32* @FIELD_UPPER, align 4
  br label %380

378:                                              ; preds = %372
  %379 = load i32, i32* @FIELD_LOWER, align 4
  br label %380

380:                                              ; preds = %378, %376
  %381 = phi i32 [ %377, %376 ], [ %379, %378 ]
  %382 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @copy_picture_field(%struct.TYPE_17__* %343, i64 %346, i32 %349, i32** %353, i32 %356, i32 %359, i32 %362, i32 %365, i32 %373, i32 1, i32 %381, i32 %384)
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 4
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 4
  %395 = load i64, i64* %394, align 8
  %396 = inttoptr i64 %395 to i32**
  %397 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %398 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %400, i32 0, i32 4
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* %13, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %380
  %412 = load i32, i32* @FIELD_LOWER, align 4
  br label %415

413:                                              ; preds = %380
  %414 = load i32, i32* @FIELD_UPPER, align 4
  br label %415

415:                                              ; preds = %413, %411
  %416 = phi i32 [ %412, %411 ], [ %414, %413 ]
  %417 = load i32, i32* %13, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %415
  %420 = load i32, i32* @FIELD_LOWER, align 4
  br label %423

421:                                              ; preds = %415
  %422 = load i32, i32* @FIELD_UPPER, align 4
  br label %423

423:                                              ; preds = %421, %419
  %424 = phi i32 [ %420, %419 ], [ %422, %421 ]
  %425 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %426 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @copy_picture_field(%struct.TYPE_17__* %386, i64 %389, i32 %392, i32** %396, i32 %399, i32 %402, i32 %405, i32 %408, i32 %416, i32 1, i32 %424, i32 %427)
  %429 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %430 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %429, i32 0, i32 4
  %431 = call i32 @av_frame_free(%struct.TYPE_18__** %430)
  br label %618

432:                                              ; preds = %48
  %433 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %434 = call %struct.TYPE_18__* @av_frame_clone(%struct.TYPE_18__* %433)
  store %struct.TYPE_18__* %434, %struct.TYPE_18__** %11, align 8
  %435 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %436 = icmp ne %struct.TYPE_18__* %435, null
  br i1 %436, label %440, label %437

437:                                              ; preds = %432
  %438 = load i32, i32* @ENOMEM, align 4
  %439 = call i32 @AVERROR(i32 %438)
  store i32 %439, i32* %3, align 4
  br label %640

440:                                              ; preds = %432
  %441 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %442 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %441, i32 0, i32 0
  store i32 1, i32* %442, align 8
  %443 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %444 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 8
  %446 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %447 = icmp ne i32 %445, %446
  br i1 %447, label %448, label %455

448:                                              ; preds = %440
  %449 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %450 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = mul nsw i32 %451, 2
  %453 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %454 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %453, i32 0, i32 2
  store i32 %452, i32* %454, align 8
  br label %455

455:                                              ; preds = %448, %440
  %456 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %457 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %460 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 8
  %462 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = call i8* @av_rescale_q(i32 %458, i32 %461, i32 %464)
  %466 = ptrtoint i8* %465 to i32
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 2
  store i32 %466, i32* %468, align 8
  %469 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %470 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %471 = call i32 @ff_filter_frame(%struct.TYPE_19__* %469, %struct.TYPE_18__* %470)
  store i32 %471, i32* %14, align 4
  %472 = icmp slt i32 %471, 0
  br i1 %472, label %473, label %475

473:                                              ; preds = %455
  %474 = load i32, i32* %14, align 4
  store i32 %474, i32* %3, align 4
  br label %640

475:                                              ; preds = %455
  %476 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %477 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  store i32 %478, i32* %13, align 4
  %479 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %480 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %481 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %483, i32 0, i32 2
  %485 = load i32, i32* %484, align 8
  %486 = call %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_19__* %479, i32 %482, i32 %485)
  store %struct.TYPE_18__* %486, %struct.TYPE_18__** %11, align 8
  %487 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %488 = icmp ne %struct.TYPE_18__* %487, null
  br i1 %488, label %492, label %489

489:                                              ; preds = %475
  %490 = load i32, i32* @ENOMEM, align 4
  %491 = call i32 @AVERROR(i32 %490)
  store i32 %491, i32* %3, align 4
  br label %640

492:                                              ; preds = %475
  %493 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %494 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %495 = call i32 @av_frame_copy_props(%struct.TYPE_18__* %493, %struct.TYPE_18__* %494)
  %496 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %497 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %496, i32 0, i32 0
  store i32 1, i32* %497, align 8
  %498 = load i32, i32* %13, align 4
  %499 = icmp ne i32 %498, 0
  %500 = xor i1 %499, true
  %501 = zext i1 %500 to i32
  %502 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %503 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %502, i32 0, i32 1
  store i32 %501, i32* %503, align 4
  %504 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %505 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %504, i32 0, i32 2
  %506 = load i32, i32* %505, align 8
  %507 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %508 = icmp ne i32 %506, %507
  br i1 %508, label %509, label %525

509:                                              ; preds = %492
  %510 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %511 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %510, i32 0, i32 2
  %512 = load i32, i32* %511, align 8
  %513 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %514 = icmp ne i32 %512, %513
  br i1 %514, label %515, label %525

515:                                              ; preds = %509
  %516 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %517 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 8
  %519 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %520 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %519, i32 0, i32 2
  %521 = load i32, i32* %520, align 8
  %522 = add nsw i32 %518, %521
  %523 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %524 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %523, i32 0, i32 2
  store i32 %522, i32* %524, align 8
  br label %529

525:                                              ; preds = %509, %492
  %526 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %527 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %528 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %527, i32 0, i32 2
  store i32 %526, i32* %528, align 8
  br label %529

529:                                              ; preds = %525, %515
  %530 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %531 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %532 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %531, i32 0, i32 4
  %533 = load i64, i64* %532, align 8
  %534 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %535 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %534, i32 0, i32 3
  %536 = load i32, i32* %535, align 4
  %537 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %538 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %537, i32 0, i32 4
  %539 = load i64, i64* %538, align 8
  %540 = inttoptr i64 %539 to i32**
  %541 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %542 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %541, i32 0, i32 3
  %543 = load i32, i32* %542, align 4
  %544 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %545 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %544, i32 0, i32 4
  %546 = load i32, i32* %545, align 8
  %547 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %548 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %547, i32 0, i32 3
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %551 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %550, i32 0, i32 2
  %552 = load i32, i32* %551, align 8
  %553 = load i32, i32* %13, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %557

555:                                              ; preds = %529
  %556 = load i32, i32* @FIELD_LOWER, align 4
  br label %559

557:                                              ; preds = %529
  %558 = load i32, i32* @FIELD_UPPER, align 4
  br label %559

559:                                              ; preds = %557, %555
  %560 = phi i32 [ %556, %555 ], [ %558, %557 ]
  %561 = load i32, i32* %13, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %565

563:                                              ; preds = %559
  %564 = load i32, i32* @FIELD_LOWER, align 4
  br label %567

565:                                              ; preds = %559
  %566 = load i32, i32* @FIELD_UPPER, align 4
  br label %567

567:                                              ; preds = %565, %563
  %568 = phi i32 [ %564, %563 ], [ %566, %565 ]
  %569 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %570 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %569, i32 0, i32 3
  %571 = load i32, i32* %570, align 4
  %572 = call i32 @copy_picture_field(%struct.TYPE_17__* %530, i64 %533, i32 %536, i32** %540, i32 %543, i32 %546, i32 %549, i32 %552, i32 %560, i32 1, i32 %568, i32 %571)
  %573 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %574 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %575 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %574, i32 0, i32 4
  %576 = load i64, i64* %575, align 8
  %577 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %578 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %577, i32 0, i32 3
  %579 = load i32, i32* %578, align 4
  %580 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %581 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %580, i32 0, i32 4
  %582 = load i64, i64* %581, align 8
  %583 = inttoptr i64 %582 to i32**
  %584 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %585 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %584, i32 0, i32 3
  %586 = load i32, i32* %585, align 4
  %587 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %588 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %587, i32 0, i32 4
  %589 = load i32, i32* %588, align 8
  %590 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %591 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %590, i32 0, i32 3
  %592 = load i32, i32* %591, align 4
  %593 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %594 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %593, i32 0, i32 2
  %595 = load i32, i32* %594, align 8
  %596 = load i32, i32* %13, align 4
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %600

598:                                              ; preds = %567
  %599 = load i32, i32* @FIELD_UPPER, align 4
  br label %602

600:                                              ; preds = %567
  %601 = load i32, i32* @FIELD_LOWER, align 4
  br label %602

602:                                              ; preds = %600, %598
  %603 = phi i32 [ %599, %598 ], [ %601, %600 ]
  %604 = load i32, i32* %13, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %608

606:                                              ; preds = %602
  %607 = load i32, i32* @FIELD_UPPER, align 4
  br label %610

608:                                              ; preds = %602
  %609 = load i32, i32* @FIELD_LOWER, align 4
  br label %610

610:                                              ; preds = %608, %606
  %611 = phi i32 [ %607, %606 ], [ %609, %608 ]
  %612 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %613 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %612, i32 0, i32 3
  %614 = load i32, i32* %613, align 4
  %615 = call i32 @copy_picture_field(%struct.TYPE_17__* %573, i64 %576, i32 %579, i32** %583, i32 %586, i32 %589, i32 %592, i32 %595, i32 %603, i32 1, i32 %611, i32 %614)
  br label %618

616:                                              ; preds = %48
  %617 = call i32 @av_assert0(i32 0)
  br label %618

618:                                              ; preds = %616, %610, %423, %252, %208, %190
  %619 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %620 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %619, i32 0, i32 2
  %621 = load i32, i32* %620, align 8
  %622 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %623 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %622, i32 0, i32 2
  %624 = load i32, i32* %623, align 8
  %625 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %626 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %625, i32 0, i32 1
  %627 = load i32, i32* %626, align 4
  %628 = call i8* @av_rescale_q(i32 %621, i32 %624, i32 %627)
  %629 = ptrtoint i8* %628 to i32
  %630 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %631 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %630, i32 0, i32 2
  store i32 %629, i32* %631, align 8
  %632 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %633 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %634 = call i32 @ff_filter_frame(%struct.TYPE_19__* %632, %struct.TYPE_18__* %633)
  store i32 %634, i32* %14, align 4
  %635 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %636 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %635, i32 0, i32 1
  %637 = load i32, i32* %636, align 4
  %638 = add nsw i32 %637, 1
  store i32 %638, i32* %636, align 4
  %639 = load i32, i32* %14, align 4
  store i32 %639, i32* %3, align 4
  br label %640

640:                                              ; preds = %618, %489, %473, %437, %331, %223, %205, %63, %47
  %641 = load i32, i32* %3, align 4
  ret i32 %641
}

declare dso_local i32 @av_frame_free(%struct.TYPE_18__**) #1

declare dso_local %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i8* @av_mul_q(i8*, i32) #1

declare dso_local i32 @av_make_q(i32, i32) #1

declare dso_local i32 @copy_picture_field(%struct.TYPE_17__*, i64, i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_18__* @av_frame_clone(%struct.TYPE_18__*) #1

declare dso_local i8* @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
