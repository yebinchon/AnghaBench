; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffjni.c_ff_jni_init_jfields.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffjni.c_ff_jni_init_jfields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__**, i32*, i32, i32)*, i32 (%struct.TYPE_12__**, i32*, i32, i32)*, i32 (%struct.TYPE_12__**, i32*, i32, i32)*, i32 (%struct.TYPE_12__**, i32*, i32, i32)*, i32 (%struct.TYPE_12__**, i32*)*, i32* (%struct.TYPE_12__**, i32*)*, i32* (%struct.TYPE_12__**, i64)* }
%struct.FFJniField = type { i32, i32, i32, i32, i32, i64 }

@FF_JNI_CLASS = common dso_local global i32 0, align 4
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown JNI field type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_jni_init_jfields(%struct.TYPE_12__** %0, i8* %1, %struct.FFJniField* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_12__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.FFJniField*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.FFJniField* %2, %struct.FFJniField** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %283, %5
  %22 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %22, i64 %24
  %26 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %286

29:                                               ; preds = %21
  %30 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %30, i64 %32
  %34 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %14, align 4
  %36 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %36, i64 %38
  %40 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @FF_JNI_CLASS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %104

45:                                               ; preds = %29
  store i32* null, i32** %13, align 8
  %46 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 6
  %49 = load i32* (%struct.TYPE_12__**, i64)*, i32* (%struct.TYPE_12__**, i64)** %48, align 8
  %50 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %51 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %51, i64 %53
  %55 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = call i32* %49(%struct.TYPE_12__** %50, i64 %56)
  store i32* %57, i32** %16, align 8
  %58 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @ff_jni_exception_check(%struct.TYPE_12__** %58, i32 %59, i8* %60)
  store i32 %61, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %45
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %287

67:                                               ; preds = %63, %45
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 5
  %74 = load i32* (%struct.TYPE_12__**, i32*)*, i32* (%struct.TYPE_12__**, i32*)** %73, align 8
  %75 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = call i32* %74(%struct.TYPE_12__** %75, i32* %76)
  br label %80

78:                                               ; preds = %67
  %79 = load i32*, i32** %16, align 8
  br label %80

80:                                               ; preds = %78, %70
  %81 = phi i32* [ %77, %70 ], [ %79, %78 ]
  %82 = load i8*, i8** %7, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %84, i64 %86
  %88 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %83, i64 %90
  %92 = bitcast i32* %91 to i32**
  store i32* %81, i32** %92, align 8
  store i32* %81, i32** %13, align 8
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %80
  %96 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  %99 = load i32 (%struct.TYPE_12__**, i32*)*, i32 (%struct.TYPE_12__**, i32*)** %98, align 8
  %100 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = call i32 %99(%struct.TYPE_12__** %100, i32* %101)
  br label %103

103:                                              ; preds = %95, %80
  br label %282

104:                                              ; preds = %29
  %105 = load i32*, i32** %13, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %108, i32* %12, align 4
  br label %286

109:                                              ; preds = %104
  %110 = load i32, i32* %15, align 4
  switch i32 %110, label %275 [
    i32 131, label %111
    i32 129, label %152
    i32 130, label %193
    i32 128, label %234
  ]

111:                                              ; preds = %109
  %112 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  %115 = load i32 (%struct.TYPE_12__**, i32*, i32, i32)*, i32 (%struct.TYPE_12__**, i32*, i32, i32)** %114, align 8
  %116 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %118, i64 %120
  %122 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %124, i64 %126
  %128 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 %115(%struct.TYPE_12__** %116, i32* %117, i32 %123, i32 %129)
  store i32 %130, i32* %17, align 4
  %131 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @ff_jni_exception_check(%struct.TYPE_12__** %131, i32 %132, i8* %133)
  store i32 %134, i32* %12, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %111
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %287

140:                                              ; preds = %136, %111
  %141 = load i32, i32* %17, align 4
  %142 = load i8*, i8** %7, align 8
  %143 = bitcast i8* %142 to i32*
  %144 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %144, i64 %146
  %148 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %143, i64 %150
  store i32 %141, i32* %151, align 4
  br label %281

152:                                              ; preds = %109
  %153 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  %156 = load i32 (%struct.TYPE_12__**, i32*, i32, i32)*, i32 (%struct.TYPE_12__**, i32*, i32, i32)** %155, align 8
  %157 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %158 = load i32*, i32** %13, align 8
  %159 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %159, i64 %161
  %163 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %165, i64 %167
  %169 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 %156(%struct.TYPE_12__** %157, i32* %158, i32 %164, i32 %170)
  store i32 %171, i32* %18, align 4
  %172 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %173 = load i32, i32* %14, align 4
  %174 = load i8*, i8** %10, align 8
  %175 = call i32 @ff_jni_exception_check(%struct.TYPE_12__** %172, i32 %173, i8* %174)
  store i32 %175, i32* %12, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %152
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  br label %287

181:                                              ; preds = %177, %152
  %182 = load i32, i32* %18, align 4
  %183 = load i8*, i8** %7, align 8
  %184 = bitcast i8* %183 to i32*
  %185 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %186 = load i32, i32* %11, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %185, i64 %187
  %189 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %184, i64 %191
  store i32 %182, i32* %192, align 4
  br label %281

193:                                              ; preds = %109
  %194 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load i32 (%struct.TYPE_12__**, i32*, i32, i32)*, i32 (%struct.TYPE_12__**, i32*, i32, i32)** %196, align 8
  %198 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %200, i64 %202
  %204 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %206, i64 %208
  %210 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = call i32 %197(%struct.TYPE_12__** %198, i32* %199, i32 %205, i32 %211)
  store i32 %212, i32* %19, align 4
  %213 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %214 = load i32, i32* %14, align 4
  %215 = load i8*, i8** %10, align 8
  %216 = call i32 @ff_jni_exception_check(%struct.TYPE_12__** %213, i32 %214, i8* %215)
  store i32 %216, i32* %12, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %193
  %219 = load i32, i32* %14, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  br label %287

222:                                              ; preds = %218, %193
  %223 = load i32, i32* %19, align 4
  %224 = load i8*, i8** %7, align 8
  %225 = bitcast i8* %224 to i32*
  %226 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %226, i64 %228
  %230 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %225, i64 %232
  store i32 %223, i32* %233, align 4
  br label %281

234:                                              ; preds = %109
  %235 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load i32 (%struct.TYPE_12__**, i32*, i32, i32)*, i32 (%struct.TYPE_12__**, i32*, i32, i32)** %237, align 8
  %239 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %240 = load i32*, i32** %13, align 8
  %241 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %241, i64 %243
  %245 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %247, i64 %249
  %251 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = call i32 %238(%struct.TYPE_12__** %239, i32* %240, i32 %246, i32 %252)
  store i32 %253, i32* %20, align 4
  %254 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %255 = load i32, i32* %14, align 4
  %256 = load i8*, i8** %10, align 8
  %257 = call i32 @ff_jni_exception_check(%struct.TYPE_12__** %254, i32 %255, i8* %256)
  store i32 %257, i32* %12, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %234
  %260 = load i32, i32* %14, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  br label %287

263:                                              ; preds = %259, %234
  %264 = load i32, i32* %20, align 4
  %265 = load i8*, i8** %7, align 8
  %266 = bitcast i8* %265 to i32*
  %267 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %267, i64 %269
  %271 = getelementptr inbounds %struct.FFJniField, %struct.FFJniField* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %266, i64 %273
  store i32 %264, i32* %274, align 4
  br label %281

275:                                              ; preds = %109
  %276 = load i8*, i8** %10, align 8
  %277 = load i32, i32* @AV_LOG_ERROR, align 4
  %278 = call i32 @av_log(i8* %276, i32 %277, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %279 = load i32, i32* @EINVAL, align 4
  %280 = call i32 @AVERROR(i32 %279)
  store i32 %280, i32* %12, align 4
  br label %287

281:                                              ; preds = %263, %222, %181, %140
  store i32 0, i32* %12, align 4
  br label %282

282:                                              ; preds = %281, %103
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %11, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %11, align 4
  br label %21

286:                                              ; preds = %107, %21
  br label %287

287:                                              ; preds = %286, %275, %262, %221, %180, %139, %66
  %288 = load i32, i32* %12, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %287
  %291 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %6, align 8
  %292 = load i8*, i8** %7, align 8
  %293 = load %struct.FFJniField*, %struct.FFJniField** %8, align 8
  %294 = load i32, i32* %9, align 4
  %295 = load i8*, i8** %10, align 8
  %296 = call i32 @ff_jni_reset_jfields(%struct.TYPE_12__** %291, i8* %292, %struct.FFJniField* %293, i32 %294, i8* %295)
  br label %297

297:                                              ; preds = %290, %287
  %298 = load i32, i32* %12, align 4
  ret i32 %298
}

declare dso_local i32 @ff_jni_exception_check(%struct.TYPE_12__**, i32, i8*) #1

declare dso_local i32 @av_log(i8*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_jni_reset_jfields(%struct.TYPE_12__**, i8*, %struct.FFJniField*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
