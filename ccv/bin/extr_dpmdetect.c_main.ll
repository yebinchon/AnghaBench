; ModuleID = '/home/carl/AnghaBench/ccv/bin/extr_dpmdetect.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/extr_dpmdetect.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_14__, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { double }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { double }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }

@CCV_IO_ANY_FILE = common dso_local global i32 0, align 4
@ccv_dpm_default_params = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%d %d %d %d %f %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"| %d %d %d %d %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"total : %d in time %dms\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"elapsed time %dms\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@CCV_IO_GRAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"%s %d %d %d %d %f %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 3
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32 (...) @ccv_enable_default_cache()
  store i32* null, i32** %8, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %28 = call i32 @ccv_read(i8* %26, i32** %8, i32 %27)
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32* @ccv_dpm_read_mixture_model(i8* %31)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %155

35:                                               ; preds = %2
  %36 = call i32 (...) @get_current_time()
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* @ccv_dpm_default_params, align 4
  %39 = call %struct.TYPE_17__* @ccv_dpm_detect_objects(i32* %37, i32** %9, i32 1, i32 %38)
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %11, align 8
  %40 = call i32 (...) @get_current_time()
  %41 = load i32, i32* %10, align 4
  %42 = sub i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %44 = icmp ne %struct.TYPE_17__* %43, null
  br i1 %44, label %45, label %149

45:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %138, %45
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %141

52:                                               ; preds = %46
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i64 @ccv_array_get(%struct.TYPE_17__* %53, i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %12, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load double, double* %75, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %64, i32 %68, i32 %72, double %76, i32 %79)
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %134, %52
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %137

87:                                               ; preds = %81
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load double, double* %131, align 8
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %96, i32 %105, i32 %114, i32 %123, double %132)
  br label %134

134:                                              ; preds = %87
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %81

137:                                              ; preds = %81
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %46

141:                                              ; preds = %46
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %148 = call i32 @ccv_array_free(%struct.TYPE_17__* %147)
  br label %152

149:                                              ; preds = %35
  %150 = load i32, i32* %10, align 4
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %149, %141
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @ccv_matrix_free(i32* %153)
  br label %324

155:                                              ; preds = %2
  %156 = load i8**, i8*** %5, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32* @fopen(i8* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %159, i32** %13, align 8
  %160 = load i32, i32* %4, align 4
  %161 = icmp eq i32 %160, 4
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 3
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @chdir(i8* %165)
  br label %167

167:                                              ; preds = %162, %155
  %168 = load i32*, i32** %13, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %323

170:                                              ; preds = %167
  store i64 1024, i64* %14, align 8
  %171 = load i64, i64* %14, align 8
  %172 = call i64 @malloc(i64 %171)
  %173 = inttoptr i64 %172 to i8*
  store i8* %173, i8** %15, align 8
  br label %174

174:                                              ; preds = %315, %170
  %175 = load i32*, i32** %13, align 8
  %176 = call i32 @getline(i8** %15, i64* %14, i32* %175)
  store i32 %176, i32* %16, align 4
  %177 = icmp ne i32 %176, -1
  br i1 %177, label %178, label %318

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %193, %178
  %180 = load i32, i32* %16, align 4
  %181 = icmp sgt i32 %180, 1
  br i1 %181, label %182, label %191

182:                                              ; preds = %179
  %183 = load i8*, i8** %15, align 8
  %184 = load i32, i32* %16, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = call i64 @isspace(i8 signext %188)
  %190 = icmp ne i64 %189, 0
  br label %191

191:                                              ; preds = %182, %179
  %192 = phi i1 [ false, %179 ], [ %190, %182 ]
  br i1 %192, label %193, label %196

193:                                              ; preds = %191
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %16, align 4
  br label %179

196:                                              ; preds = %191
  %197 = load i8*, i8** %15, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  store i8 0, i8* %200, align 1
  store i32* null, i32** %8, align 8
  %201 = load i8*, i8** %15, align 8
  %202 = load i32, i32* @CCV_IO_GRAY, align 4
  %203 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %204 = or i32 %202, %203
  %205 = call i32 @ccv_read(i8* %201, i32** %8, i32 %204)
  %206 = load i32*, i32** %8, align 8
  %207 = icmp ne i32* %206, null
  %208 = zext i1 %207 to i32
  %209 = call i32 @assert(i32 %208)
  %210 = load i32*, i32** %8, align 8
  %211 = load i32, i32* @ccv_dpm_default_params, align 4
  %212 = call %struct.TYPE_17__* @ccv_dpm_detect_objects(i32* %210, i32** %9, i32 1, i32 %211)
  store %struct.TYPE_17__* %212, %struct.TYPE_17__** %17, align 8
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %214 = icmp ne %struct.TYPE_17__* %213, null
  br i1 %214, label %215, label %315

215:                                              ; preds = %196
  store i32 0, i32* %6, align 4
  br label %216

216:                                              ; preds = %309, %215
  %217 = load i32, i32* %6, align 4
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp slt i32 %217, %220
  br i1 %221, label %222, label %312

222:                                              ; preds = %216
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %224 = load i32, i32* %6, align 4
  %225 = call i64 @ccv_array_get(%struct.TYPE_17__* %223, i32 %224)
  %226 = inttoptr i64 %225 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %226, %struct.TYPE_16__** %18, align 8
  %227 = load i8*, i8** %15, align 8
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load double, double* %246, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %227, i32 %231, i32 %235, i32 %239, i32 %243, double %247, i32 %250)
  store i32 0, i32* %7, align 4
  br label %252

252:                                              ; preds = %305, %222
  %253 = load i32, i32* %7, align 4
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %308

258:                                              ; preds = %252
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %260, align 8
  %262 = load i32, i32* %7, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %269, align 8
  %271 = load i32, i32* %7, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %278, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %287, align 8
  %289 = load i32, i32* %7, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %296, align 8
  %298 = load i32, i32* %7, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  %303 = load double, double* %302, align 8
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %267, i32 %276, i32 %285, i32 %294, double %303)
  br label %305

305:                                              ; preds = %258
  %306 = load i32, i32* %7, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %7, align 4
  br label %252

308:                                              ; preds = %252
  br label %309

309:                                              ; preds = %308
  %310 = load i32, i32* %6, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %6, align 4
  br label %216

312:                                              ; preds = %216
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %314 = call i32 @ccv_array_free(%struct.TYPE_17__* %313)
  br label %315

315:                                              ; preds = %312, %196
  %316 = load i32*, i32** %8, align 8
  %317 = call i32 @ccv_matrix_free(i32* %316)
  br label %174

318:                                              ; preds = %174
  %319 = load i8*, i8** %15, align 8
  %320 = call i32 @free(i8* %319)
  %321 = load i32*, i32** %13, align 8
  %322 = call i32 @fclose(i32* %321)
  br label %323

323:                                              ; preds = %318, %167
  br label %324

324:                                              ; preds = %323, %152
  %325 = call i32 (...) @ccv_drain_cache()
  %326 = load i32*, i32** %9, align 8
  %327 = call i32 @ccv_dpm_mixture_model_free(i32* %326)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_enable_default_cache(...) #1

declare dso_local i32 @ccv_read(i8*, i32**, i32) #1

declare dso_local i32* @ccv_dpm_read_mixture_model(i8*) #1

declare dso_local i32 @get_current_time(...) #1

declare dso_local %struct.TYPE_17__* @ccv_dpm_detect_objects(i32*, i32**, i32, i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_17__*) #1

declare dso_local i32 @ccv_matrix_free(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ccv_drain_cache(...) #1

declare dso_local i32 @ccv_dpm_mixture_model_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
