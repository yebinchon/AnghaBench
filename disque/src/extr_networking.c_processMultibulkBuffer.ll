; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_processMultibulkBuffer.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_processMultibulkBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i8*, i32, i32* }

@PROTO_INLINE_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Protocol error: too big mbulk count string\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Protocol error: invalid multibulk length\00", align 1
@C_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Protocol error: too big bulk count string\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Protocol error: expected '$', got '%c'\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Protocol error: invalid bulk length\00", align 1
@PROTO_MBULK_BIG_ARG = common dso_local global i64 0, align 8
@OBJ_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processMultibulkBuffer(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %136

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @serverAssertWithInfo(%struct.TYPE_7__* %14, i32* null, i32 %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 13)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %13
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @sdslen(i8* %30)
  %32 = load i32, i32* @PROTO_INLINE_MAX_SIZE, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = call i32 @addReplyError(%struct.TYPE_7__* %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = call i32 @setProtocolError(%struct.TYPE_7__* %37, i32 0)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load i32, i32* @C_ERR, align 4
  store i32 %40, i32* %2, align 4
  br label %421

41:                                               ; preds = %13
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %42 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @sdslen(i8* %51)
  %53 = sub nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = icmp sgt i64 %48, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* @C_ERR, align 4
  store i32 %57, i32* %2, align 4
  br label %421

58:                                               ; preds = %41
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 42
  %67 = zext i1 %66 to i32
  %68 = call i32 @serverAssertWithInfo(%struct.TYPE_7__* %59, i32* null, i32 %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8*, i8** %4, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = ptrtoint i8* %73 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @string2ll(i8* %72, i32 %81, i64* %7)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %58
  %86 = load i64, i64* %7, align 8
  %87 = icmp sgt i64 %86, 1048576
  br i1 %87, label %88, label %95

88:                                               ; preds = %85, %58
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = call i32 @addReplyError(%struct.TYPE_7__* %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @setProtocolError(%struct.TYPE_7__* %91, i32 %92)
  %94 = load i32, i32* @C_ERR, align 4
  store i32 %94, i32* %2, align 4
  br label %421

95:                                               ; preds = %85
  %96 = load i8*, i8** %4, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = ptrtoint i8* %96 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = add nsw i64 %102, 2
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %5, align 4
  %105 = load i64, i64* %7, align 8
  %106 = icmp sle i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %95
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @sdsrange(i8* %110, i32 %111, i32 -1)
  %113 = load i32, i32* @C_OK, align 4
  store i32 %113, i32* %2, align 4
  br label %421

114:                                              ; preds = %95
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @zfree(i32* %125)
  br label %127

127:                                              ; preds = %122, %114
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = mul i64 8, %130
  %132 = trunc i64 %131 to i32
  %133 = call i32* @zmalloc(i32 %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 4
  store i32* %133, i32** %135, align 8
  br label %136

136:                                              ; preds = %127, %1
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @serverAssertWithInfo(%struct.TYPE_7__* %137, i32* null, i32 %142)
  br label %144

144:                                              ; preds = %402, %136
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %403

149:                                              ; preds = %144
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %306

154:                                              ; preds = %149
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = call i8* @strchr(i8* %160, i8 signext 13)
  store i8* %161, i8** %4, align 8
  %162 = load i8*, i8** %4, align 8
  %163 = icmp eq i8* %162, null
  br i1 %163, label %164, label %178

164:                                              ; preds = %154
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @sdslen(i8* %167)
  %169 = load i32, i32* @PROTO_INLINE_MAX_SIZE, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %164
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %173 = call i32 @addReplyError(%struct.TYPE_7__* %172, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %175 = call i32 @setProtocolError(%struct.TYPE_7__* %174, i32 0)
  %176 = load i32, i32* @C_ERR, align 4
  store i32 %176, i32* %2, align 4
  br label %421

177:                                              ; preds = %164
  br label %403

178:                                              ; preds = %154
  %179 = load i8*, i8** %4, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load i8*, i8** %181, align 8
  %183 = ptrtoint i8* %179 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 @sdslen(i8* %188)
  %190 = sub nsw i32 %189, 2
  %191 = sext i32 %190 to i64
  %192 = icmp sgt i64 %185, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %178
  br label %403

194:                                              ; preds = %178
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp ne i32 %202, 36
  br i1 %203, label %204, label %218

204:                                              ; preds = %194
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = call i32 @addReplyErrorFormat(%struct.TYPE_7__* %205, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8 signext %212)
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @setProtocolError(%struct.TYPE_7__* %214, i32 %215)
  %217 = load i32, i32* @C_ERR, align 4
  store i32 %217, i32* %2, align 4
  br label %421

218:                                              ; preds = %194
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  %221 = load i8*, i8** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  %226 = load i8*, i8** %4, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 2
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = getelementptr inbounds i8, i8* %232, i64 1
  %234 = ptrtoint i8* %226 to i64
  %235 = ptrtoint i8* %233 to i64
  %236 = sub i64 %234, %235
  %237 = trunc i64 %236 to i32
  %238 = call i32 @string2ll(i8* %225, i32 %237, i64* %7)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %218
  %242 = load i64, i64* %7, align 8
  %243 = icmp slt i64 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %241
  %245 = load i64, i64* %7, align 8
  %246 = icmp sgt i64 %245, 536870912
  br i1 %246, label %247, label %254

247:                                              ; preds = %244, %241, %218
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %249 = call i32 @addReplyError(%struct.TYPE_7__* %248, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %251 = load i32, i32* %5, align 4
  %252 = call i32 @setProtocolError(%struct.TYPE_7__* %250, i32 %251)
  %253 = load i32, i32* @C_ERR, align 4
  store i32 %253, i32* %2, align 4
  br label %421

254:                                              ; preds = %244
  %255 = load i8*, i8** %4, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 2
  %258 = load i8*, i8** %257, align 8
  %259 = load i32, i32* %5, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = ptrtoint i8* %255 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = add nsw i64 %264, 2
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %267, %265
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %5, align 4
  %270 = load i64, i64* %7, align 8
  %271 = load i64, i64* @PROTO_MBULK_BIG_ARG, align 8
  %272 = icmp sge i64 %270, %271
  br i1 %272, label %273, label %301

273:                                              ; preds = %254
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 2
  %276 = load i8*, i8** %275, align 8
  %277 = load i32, i32* %5, align 4
  %278 = call i32 @sdsrange(i8* %276, i32 %277, i32 -1)
  store i32 0, i32* %5, align 4
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 2
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @sdslen(i8* %281)
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %8, align 8
  %284 = load i64, i64* %8, align 8
  %285 = load i64, i64* %7, align 8
  %286 = add i64 %285, 2
  %287 = icmp ult i64 %284, %286
  br i1 %287, label %288, label %300

288:                                              ; preds = %273
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 2
  %291 = load i8*, i8** %290, align 8
  %292 = load i64, i64* %7, align 8
  %293 = add nsw i64 %292, 2
  %294 = load i64, i64* %8, align 8
  %295 = sub i64 %293, %294
  %296 = trunc i64 %295 to i32
  %297 = call i8* @sdsMakeRoomFor(i8* %291, i32 %296)
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 2
  store i8* %297, i8** %299, align 8
  br label %300

300:                                              ; preds = %288, %273
  br label %301

301:                                              ; preds = %300, %254
  %302 = load i64, i64* %7, align 8
  %303 = trunc i64 %302 to i32
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 3
  store i32 %303, i32* %305, align 8
  br label %306

306:                                              ; preds = %301, %149
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 2
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @sdslen(i8* %309)
  %311 = load i32, i32* %5, align 4
  %312 = sub nsw i32 %310, %311
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 2
  %317 = icmp ult i32 %312, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %306
  br label %403

319:                                              ; preds = %306
  %320 = load i32, i32* %5, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %370

322:                                              ; preds = %319
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 8
  %326 = sext i32 %325 to i64
  %327 = load i64, i64* @PROTO_MBULK_BIG_ARG, align 8
  %328 = icmp sge i64 %326, %327
  br i1 %328, label %329, label %370

329:                                              ; preds = %322
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 2
  %332 = load i8*, i8** %331, align 8
  %333 = call i32 @sdslen(i8* %332)
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 8
  %337 = add nsw i32 %336, 2
  %338 = icmp eq i32 %333, %337
  br i1 %338, label %339, label %370

339:                                              ; preds = %329
  %340 = load i32, i32* @OBJ_STRING, align 4
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 2
  %343 = load i8*, i8** %342, align 8
  %344 = call i32 @createObject(i32 %340, i8* %343)
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 4
  %347 = load i32*, i32** %346, align 8
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = add nsw i64 %350, 1
  store i64 %351, i64* %349, align 8
  %352 = getelementptr inbounds i32, i32* %347, i64 %350
  store i32 %344, i32* %352, align 4
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 2
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 @sdsIncrLen(i8* %355, i32 -2)
  %357 = call i8* (...) @sdsempty()
  %358 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 2
  store i8* %357, i8** %359, align 8
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 2
  %362 = load i8*, i8** %361, align 8
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 8
  %366 = add nsw i32 %365, 2
  %367 = call i8* @sdsMakeRoomFor(i8* %362, i32 %366)
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 2
  store i8* %367, i8** %369, align 8
  store i32 0, i32* %5, align 4
  br label %395

370:                                              ; preds = %329, %322, %319
  %371 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 2
  %373 = load i8*, i8** %372, align 8
  %374 = load i32, i32* %5, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8, i8* %373, i64 %375
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @createStringObject(i8* %376, i32 %379)
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 4
  %383 = load i32*, i32** %382, align 8
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 1
  %386 = load i64, i64* %385, align 8
  %387 = add nsw i64 %386, 1
  store i64 %387, i64* %385, align 8
  %388 = getelementptr inbounds i32, i32* %383, i64 %386
  store i32 %380, i32* %388, align 4
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 8
  %392 = add nsw i32 %391, 2
  %393 = load i32, i32* %5, align 4
  %394 = add nsw i32 %393, %392
  store i32 %394, i32* %5, align 4
  br label %395

395:                                              ; preds = %370, %339
  %396 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 3
  store i32 -1, i32* %397, align 8
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = add nsw i64 %400, -1
  store i64 %401, i64* %399, align 8
  br label %402

402:                                              ; preds = %395
  br label %144

403:                                              ; preds = %318, %193, %177, %144
  %404 = load i32, i32* %5, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %412

406:                                              ; preds = %403
  %407 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 2
  %409 = load i8*, i8** %408, align 8
  %410 = load i32, i32* %5, align 4
  %411 = call i32 @sdsrange(i8* %409, i32 %410, i32 -1)
  br label %412

412:                                              ; preds = %406, %403
  %413 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = icmp eq i64 %415, 0
  br i1 %416, label %417, label %419

417:                                              ; preds = %412
  %418 = load i32, i32* @C_OK, align 4
  store i32 %418, i32* %2, align 4
  br label %421

419:                                              ; preds = %412
  %420 = load i32, i32* @C_ERR, align 4
  store i32 %420, i32* %2, align 4
  br label %421

421:                                              ; preds = %419, %417, %247, %204, %171, %107, %88, %56, %39
  %422 = load i32, i32* %2, align 4
  ret i32 %422
}

declare dso_local i32 @serverAssertWithInfo(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @addReplyError(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @setProtocolError(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @string2ll(i8*, i32, i64*) #1

declare dso_local i32 @sdsrange(i8*, i32, i32) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32* @zmalloc(i32) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_7__*, i8*, i8 signext) #1

declare dso_local i8* @sdsMakeRoomFor(i8*, i32) #1

declare dso_local i32 @createObject(i32, i8*) #1

declare dso_local i32 @sdsIncrLen(i8*, i32) #1

declare dso_local i8* @sdsempty(...) #1

declare dso_local i32 @createStringObject(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
