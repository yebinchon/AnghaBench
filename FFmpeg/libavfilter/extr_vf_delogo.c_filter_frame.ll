; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_delogo.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_delogo.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_27__**, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32*, i32*, %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }

@VAR_N = common dso_local global i64 0, align 8
@VAR_T = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Logo area is outside of the frame, auto set the area inside of the frame\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_26__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %6, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %27, i64 0
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  store %struct.TYPE_27__* %29, %struct.TYPE_27__** %7, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.TYPE_25__* @av_pix_fmt_desc_get(i32 %32)
  store %struct.TYPE_25__* %33, %struct.TYPE_25__** %8, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @VAR_N, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @TS2T(i32 %50, i32 %53)
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @VAR_T, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %67 = call i8* @av_expr_eval(i32 %62, i32* %65, %struct.TYPE_23__* %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 6
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %78 = call i8* @av_expr_eval(i32 %73, i32* %76, %struct.TYPE_23__* %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %89 = call i8* @av_expr_eval(i32 %84, i32* %87, %struct.TYPE_23__* %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %100 = call i8* @av_expr_eval(i32 %95, i32* %98, %struct.TYPE_23__* %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 1
  %111 = add nsw i32 %106, %110
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %159, label %113

113:                                              ; preds = %2
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %116, %119
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %123, 2
  %125 = sub nsw i32 %124, 2
  %126 = sub nsw i32 %120, %125
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sgt i32 %126, %129
  br i1 %130, label %159, label %131

131:                                              ; preds = %113
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %137, 1
  %139 = add nsw i32 %134, %138
  %140 = icmp sle i32 %139, 0
  br i1 %140, label %159, label %141

141:                                              ; preds = %131
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %144, %147
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 %151, 2
  %153 = sub nsw i32 %152, 2
  %154 = sub nsw i32 %148, %153
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %154, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %141, %131, %113, %2
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %161 = load i32, i32* @AV_LOG_WARNING, align 4
  %162 = call i32 @av_log(%struct.TYPE_23__* %160, i32 %161, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %163

163:                                              ; preds = %159, %141
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %169, 1
  %171 = add nsw i32 %166, %170
  %172 = icmp sle i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %163
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 1, %176
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  br label %180

180:                                              ; preds = %173, %163
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = sub nsw i32 %186, 1
  %188 = add nsw i32 %183, %187
  %189 = icmp sle i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %180
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 1, %193
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %190, %180
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %200, %203
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = mul nsw i32 %207, 2
  %209 = sub nsw i32 %208, 2
  %210 = sub nsw i32 %204, %209
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp sgt i32 %210, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %197
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sub nsw i32 %218, %221
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = mul nsw i32 %225, 2
  %227 = sub nsw i32 %226, 2
  %228 = sub nsw i32 %222, %227
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  br label %231

231:                                              ; preds = %215, %197
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %234, %237
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = mul nsw i32 %241, 2
  %243 = sub nsw i32 %242, 2
  %244 = sub nsw i32 %238, %243
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp sgt i32 %244, %247
  br i1 %248, label %249, label %265

249:                                              ; preds = %231
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %252, %255
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = mul nsw i32 %259, 2
  %261 = sub nsw i32 %260, 2
  %262 = sub nsw i32 %256, %261
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 3
  store i32 %262, i32* %264, align 4
  br label %265

265:                                              ; preds = %249, %231
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %267 = call i32 @config_input(%struct.TYPE_27__* %266)
  store i32 %267, i32* %15, align 4
  %268 = load i32, i32* %15, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = call i32 @av_frame_free(%struct.TYPE_26__** %5)
  %272 = load i32, i32* %15, align 4
  store i32 %272, i32* %3, align 4
  br label %467

273:                                              ; preds = %265
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = mul nsw i32 %276, 2
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, %277
  store i32 %281, i32* %279, align 8
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = mul nsw i32 %284, 2
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, %285
  store i32 %289, i32* %287, align 4
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = sub nsw i32 %295, %292
  store i32 %296, i32* %294, align 8
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %302, %299
  store i32 %303, i32* %301, align 4
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %305 = call i64 @av_frame_is_writable(%struct.TYPE_26__* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %273
  store i32 1, i32* %12, align 4
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_26__* %308, %struct.TYPE_26__** %9, align 8
  br label %328

309:                                              ; preds = %273
  %310 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = call %struct.TYPE_26__* @ff_get_video_buffer(%struct.TYPE_27__* %310, i32 %313, i32 %316)
  store %struct.TYPE_26__* %317, %struct.TYPE_26__** %9, align 8
  %318 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %319 = icmp ne %struct.TYPE_26__* %318, null
  br i1 %319, label %324, label %320

320:                                              ; preds = %309
  %321 = call i32 @av_frame_free(%struct.TYPE_26__** %5)
  %322 = load i32, i32* @ENOMEM, align 4
  %323 = call i32 @AVERROR(i32 %322)
  store i32 %323, i32* %3, align 4
  br label %467

324:                                              ; preds = %309
  %325 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %327 = call i32 @av_frame_copy_props(%struct.TYPE_26__* %325, %struct.TYPE_26__* %326)
  br label %328

328:                                              ; preds = %324, %307
  %329 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %329, i32 0, i32 2
  %331 = bitcast %struct.TYPE_24__* %14 to i8*
  %332 = bitcast %struct.TYPE_24__* %330 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %331, i8* align 8 %332, i64 8, i1 false)
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %339, label %336

336:                                              ; preds = %328
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  store i32 1, i32* %337, align 4
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  store i32 1, i32* %338, align 4
  br label %339

339:                                              ; preds = %336, %328
  store i32 0, i32* %13, align 4
  br label %340

340:                                              ; preds = %455, %339
  %341 = load i32, i32* %13, align 4
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = icmp slt i32 %341, %344
  br i1 %345, label %346, label %458

346:                                              ; preds = %340
  %347 = load i32, i32* %13, align 4
  %348 = icmp eq i32 %347, 1
  br i1 %348, label %352, label %349

349:                                              ; preds = %346
  %350 = load i32, i32* %13, align 4
  %351 = icmp eq i32 %350, 2
  br i1 %351, label %352, label %354

352:                                              ; preds = %349, %346
  %353 = load i32, i32* %10, align 4
  br label %355

354:                                              ; preds = %349
  br label %355

355:                                              ; preds = %354, %352
  %356 = phi i32 [ %353, %352 ], [ 0, %354 ]
  store i32 %356, i32* %16, align 4
  %357 = load i32, i32* %13, align 4
  %358 = icmp eq i32 %357, 1
  br i1 %358, label %362, label %359

359:                                              ; preds = %355
  %360 = load i32, i32* %13, align 4
  %361 = icmp eq i32 %360, 2
  br i1 %361, label %362, label %364

362:                                              ; preds = %359, %355
  %363 = load i32, i32* %11, align 4
  br label %365

364:                                              ; preds = %359
  br label %365

365:                                              ; preds = %364, %362
  %366 = phi i32 [ %363, %362 ], [ 0, %364 ]
  store i32 %366, i32* %17, align 4
  %367 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %368 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %13, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %375 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %13, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %381, i32 0, i32 1
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %13, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %388, i32 0, i32 0
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %13, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* %16, align 4
  %399 = call i32 @AV_CEIL_RSHIFT(i32 %397, i32 %398)
  %400 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* %17, align 4
  %404 = call i32 @AV_CEIL_RSHIFT(i32 %402, i32 %403)
  %405 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* %16, align 4
  %409 = ashr i32 %407, %408
  %410 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* %17, align 4
  %414 = ashr i32 %412, %413
  %415 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* %16, align 4
  %422 = shl i32 1, %421
  %423 = sub nsw i32 %422, 1
  %424 = and i32 %420, %423
  %425 = add nsw i32 %417, %424
  %426 = load i32, i32* %16, align 4
  %427 = call i32 @AV_CEIL_RSHIFT(i32 %425, i32 %426)
  %428 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* %17, align 4
  %435 = shl i32 1, %434
  %436 = sub nsw i32 %435, 1
  %437 = and i32 %433, %436
  %438 = add nsw i32 %430, %437
  %439 = load i32, i32* %17, align 4
  %440 = call i32 @AV_CEIL_RSHIFT(i32 %438, i32 %439)
  %441 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* %16, align 4
  %445 = load i32, i32* %17, align 4
  %446 = call i32 @FFMIN(i32 %444, i32 %445)
  %447 = ashr i32 %443, %446
  %448 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %448, i32 0, i32 5
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* %12, align 4
  %452 = bitcast %struct.TYPE_24__* %14 to i64*
  %453 = load i64, i64* %452, align 4
  %454 = call i32 @apply_delogo(i32 %373, i32 %380, i32 %387, i32 %394, i32 %399, i32 %404, i64 %453, i32 %409, i32 %414, i32 %427, i32 %440, i32 %447, i32 %450, i32 %451)
  br label %455

455:                                              ; preds = %365
  %456 = load i32, i32* %13, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %13, align 4
  br label %340

458:                                              ; preds = %340
  %459 = load i32, i32* %12, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %463, label %461

461:                                              ; preds = %458
  %462 = call i32 @av_frame_free(%struct.TYPE_26__** %5)
  br label %463

463:                                              ; preds = %461, %458
  %464 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %465 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %466 = call i32 @ff_filter_frame(%struct.TYPE_27__* %464, %struct.TYPE_26__* %465)
  store i32 %466, i32* %3, align 4
  br label %467

467:                                              ; preds = %463, %320, %270
  %468 = load i32, i32* %3, align 4
  ret i32 %468
}

declare dso_local %struct.TYPE_25__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @TS2T(i32, i32) #1

declare dso_local i8* @av_expr_eval(i32, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @config_input(%struct.TYPE_27__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_26__**) #1

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @ff_get_video_buffer(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @apply_delogo(i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
