; ModuleID = '/home/carl/AnghaBench/ccv/serve/extr_convnet.c_uri_convnet_classify.c'
source_filename = "/home/carl/AnghaBench/ccv/serve/extr_convnet.c_uri_convnet_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i8*, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_16__*, %struct.TYPE_15__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_20__ = type { i32, double }

@CCV_IO_ANY_STREAM = common dso_local global i32 0, align 4
@CCV_IO_RGB_COLOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"{\22word\22:\22%s\22,\22confidence\22:%f}\00", align 1
@ebb_http_header = common dso_local global i8* null, align 8
@uri_ebb_buf_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uri_convnet_classify(i8* %0, i8* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [1024 x i8], align 16
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [192 x i8], align 16
  %20 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %328

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %8, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 3
  %29 = call i32 @param_parser_terminate(i32* %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %34 = icmp eq %struct.TYPE_18__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = call i32 @free(%struct.TYPE_18__* %36)
  store i32 -1, i32* %4, align 4
  br label %328

38:                                               ; preds = %24
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = icmp eq %struct.TYPE_16__* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = call i32 @free(%struct.TYPE_18__* %47)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = call i32 @free(%struct.TYPE_18__* %49)
  store i32 -1, i32* %4, align 4
  br label %328

51:                                               ; preds = %38
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %59, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %56, %51
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = call i32 @free(%struct.TYPE_18__* %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %75 = call i32 @free(%struct.TYPE_18__* %74)
  store i32 -1, i32* %4, align 4
  br label %328

76:                                               ; preds = %56
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  store %struct.TYPE_19__* %81, %struct.TYPE_19__** %9, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %83 = icmp eq %struct.TYPE_19__* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = call i32 @free(%struct.TYPE_18__* %88)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = call i32 @free(%struct.TYPE_18__* %90)
  store i32 -1, i32* %4, align 4
  br label %328

92:                                               ; preds = %76
  store i32* null, i32** %10, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = load i32, i32* @CCV_IO_ANY_STREAM, align 4
  %98 = load i32, i32* @CCV_IO_RGB_COLOR, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ccv_read(%struct.TYPE_18__* %96, i32** %10, i32 %99, i32 %103)
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = call i32 @free(%struct.TYPE_18__* %108)
  %110 = load i32*, i32** %10, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %92
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %114 = call i32 @free(%struct.TYPE_18__* %113)
  store i32 -1, i32* %4, align 4
  br label %328

115:                                              ; preds = %92
  store i32* null, i32** %11, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @ccv_convnet_input_formation(i32 %118, i32* %119, i32** %11)
  %121 = load i32*, i32** %10, align 8
  %122 = call i32 @ccv_matrix_free(i32* %121)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %12, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @ccv_convnet_classify(%struct.TYPE_19__* %123, i32** %11, i32 1, %struct.TYPE_21__** %12, i64 %126, i32 1)
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = mul nsw i64 %130, 30
  %132 = add nsw i64 192, %131
  %133 = add nsw i64 %132, 2
  %134 = trunc i64 %133 to i32
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @malloc(i32 %139)
  %141 = inttoptr i64 %140 to i8*
  store i8* %141, i8** %13, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  store i8 91, i8* %143, align 1
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 1
  store i32 1, i32* %145, align 4
  store i32 0, i32* %14, align 4
  br label %146

146:                                              ; preds = %240, %115
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %148, %151
  br i1 %152, label %153, label %243

153:                                              ; preds = %146
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %155 = load i32, i32* %14, align 4
  %156 = call i64 @ccv_array_get(%struct.TYPE_21__* %154, i32 %155)
  %157 = inttoptr i64 %156 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %157, %struct.TYPE_20__** %16, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %161, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @ccv_array_get(%struct.TYPE_21__* %162, i32 %165)
  %167 = inttoptr i64 %166 to i8**
  %168 = load i8*, i8** %167, align 8
  store i8* %168, i8** %17, align 8
  %169 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %170 = load i8*, i8** %17, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = load double, double* %172, align 8
  %174 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %169, i32 1024, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %170, double %173)
  %175 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %176 = call i64 @strnlen(i8* %175, i32 1024)
  store i64 %176, i64* %18, align 8
  br label %177

177:                                              ; preds = %190, %153
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %18, align 8
  %183 = add i64 %181, %182
  %184 = add i64 %183, 1
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sext i32 %187 to i64
  %189 = icmp uge i64 %184, %188
  br i1 %189, label %190, label %205

190:                                              ; preds = %177
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = mul nsw i32 %193, 3
  %195 = add nsw i32 %194, 1
  %196 = sdiv i32 %195, 2
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load i8*, i8** %13, align 8
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i64 @realloc(i8* %199, i32 %202)
  %204 = inttoptr i64 %203 to i8*
  store i8* %204, i8** %13, align 8
  br label %177

205:                                              ; preds = %177
  %206 = load i8*, i8** %13, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %206, i64 %210
  %212 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %213 = load i64, i64* %18, align 8
  %214 = call i32 @memcpy(i8* %211, i8* %212, i64 %213)
  %215 = load i64, i64* %18, align 8
  %216 = add i64 %215, 1
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = add i64 %220, %216
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %218, align 4
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = sub nsw i64 %227, 1
  %229 = icmp eq i64 %224, %228
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i32 93, i32 44
  %232 = trunc i32 %231 to i8
  %233 = load i8*, i8** %13, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %233, i64 %238
  store i8 %232, i8* %239, align 1
  br label %240

240:                                              ; preds = %205
  %241 = load i32, i32* %14, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %14, align 4
  br label %146

243:                                              ; preds = %146
  %244 = getelementptr inbounds [192 x i8], [192 x i8]* %19, i64 0, i64 0
  %245 = load i8*, i8** @ebb_http_header, align 8
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  %250 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %244, i32 192, i8* %245, i32 %249)
  %251 = getelementptr inbounds [192 x i8], [192 x i8]* %19, i64 0, i64 0
  %252 = call i64 @strnlen(i8* %251, i32 192)
  store i64 %252, i64* %20, align 8
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* %20, align 8
  %258 = add i64 %256, %257
  %259 = add i64 %258, 1
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = icmp uge i64 %259, %263
  br i1 %264, label %265, label %282

265:                                              ; preds = %243
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = load i64, i64* %20, align 8
  %271 = add i64 %269, %270
  %272 = add i64 %271, 1
  %273 = trunc i64 %272 to i32
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 0
  store i32 %273, i32* %275, align 8
  %276 = load i8*, i8** %13, align 8
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i64 @realloc(i8* %276, i32 %279)
  %281 = inttoptr i64 %280 to i8*
  store i8* %281, i8** %13, align 8
  br label %282

282:                                              ; preds = %265, %243
  %283 = load i8*, i8** %13, align 8
  %284 = load i64, i64* %20, align 8
  %285 = getelementptr inbounds i8, i8* %283, i64 %284
  %286 = load i8*, i8** %13, align 8
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = call i32 @memmove(i8* %285, i8* %286, i64 %290)
  %292 = load i8*, i8** %13, align 8
  %293 = getelementptr inbounds [192 x i8], [192 x i8]* %19, i64 0, i64 0
  %294 = load i64, i64* %20, align 8
  %295 = call i32 @memcpy(i8* %292, i8* %293, i64 %294)
  %296 = load i64, i64* %20, align 8
  %297 = add i64 %296, 1
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = add i64 %301, %297
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %299, align 4
  %304 = load i8*, i8** %13, align 8
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %304, i64 %309
  store i8 10, i8* %310, align 1
  %311 = load i8*, i8** %13, align 8
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 2
  store i8* %311, i8** %313, align 8
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 0
  store i32 %316, i32* %318, align 8
  %319 = load i32, i32* @uri_ebb_buf_free, align 4
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 3
  store i32 %319, i32* %321, align 8
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %323 = call i32 @ccv_array_free(%struct.TYPE_21__* %322)
  %324 = load i32*, i32** %11, align 8
  %325 = call i32 @ccv_matrix_free(i32* %324)
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %327 = call i32 @free(%struct.TYPE_18__* %326)
  store i32 0, i32* %4, align 4
  br label %328

328:                                              ; preds = %282, %112, %84, %68, %43, %35, %23
  %329 = load i32, i32* %4, align 4
  ret i32 %329
}

declare dso_local i32 @param_parser_terminate(i32*) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

declare dso_local i32 @ccv_read(%struct.TYPE_18__*, i32**, i32, i32) #1

declare dso_local i32 @ccv_convnet_input_formation(i32, i32*, i32**) #1

declare dso_local i32 @ccv_matrix_free(i32*) #1

declare dso_local i32 @ccv_convnet_classify(%struct.TYPE_19__*, i32**, i32, %struct.TYPE_21__**, i64, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @strnlen(i8*, i32) #1

declare dso_local i64 @realloc(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
