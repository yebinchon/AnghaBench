; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_parse_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmsgpack_dom_value = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8* }
%struct.buffer = type { i32, i8* }

@RDT_BINARY = common dso_local global i32 0, align 4
@RDT_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i8* } (i32, i8*, %struct.rmsgpack_dom_value*, i8**)* @query_parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i8* } @query_parse_string(i32 %0, i8* %1, %struct.rmsgpack_dom_value* %2, i8** %3) #0 {
  %5 = alloca %struct.buffer, align 8
  %6 = alloca %struct.buffer, align 8
  %7 = alloca %struct.rmsgpack_dom_value*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer, align 8
  %14 = alloca %struct.buffer, align 8
  %15 = alloca %struct.buffer, align 8
  %16 = alloca %struct.buffer, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = bitcast %struct.buffer* %6 to { i32, i8* }*
  %26 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %25, i32 0, i32 0
  store i32 %0, i32* %26, align 8
  %27 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %25, i32 0, i32 1
  store i8* %1, i8** %27, align 8
  store %struct.rmsgpack_dom_value* %2, %struct.rmsgpack_dom_value** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i8* null, i8** %9, align 8
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  store i32 0, i32* %12, align 4
  %28 = load i8, i8* %11, align 1
  %29 = load i8**, i8*** %8, align 8
  %30 = bitcast %struct.buffer* %6 to { i32, i8* }*
  %31 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %30, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call { i32, i8* } @query_get_char(i32 %32, i8* %34, i8* %10, i8** %29)
  %36 = bitcast %struct.buffer* %13 to { i32, i8* }*
  %37 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %36, i32 0, i32 0
  %38 = extractvalue { i32, i8* } %35, 0
  store i32 %38, i32* %37, align 8
  %39 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %36, i32 0, i32 1
  %40 = extractvalue { i32, i8* } %35, 1
  store i8* %40, i8** %39, align 8
  %41 = bitcast %struct.buffer* %6 to i8*
  %42 = bitcast %struct.buffer* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = load i8**, i8*** %8, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %4
  %47 = bitcast %struct.buffer* %5 to i8*
  %48 = bitcast %struct.buffer* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  br label %292

49:                                               ; preds = %4
  %50 = load i8, i8* %10, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 98
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  store i32 1, i32* %12, align 4
  %54 = load i8**, i8*** %8, align 8
  %55 = bitcast %struct.buffer* %6 to { i32, i8* }*
  %56 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %55, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call { i32, i8* } @query_get_char(i32 %57, i8* %59, i8* %10, i8** %54)
  %61 = bitcast %struct.buffer* %14 to { i32, i8* }*
  %62 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %61, i32 0, i32 0
  %63 = extractvalue { i32, i8* } %60, 0
  store i32 %63, i32* %62, align 8
  %64 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %61, i32 0, i32 1
  %65 = extractvalue { i32, i8* } %60, 1
  store i8* %65, i8** %64, align 8
  %66 = bitcast %struct.buffer* %6 to i8*
  %67 = bitcast %struct.buffer* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 16, i1 false)
  br label %68

68:                                               ; preds = %53, %49
  %69 = load i8, i8* %10, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 34
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i8, i8* %10, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 39
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 8
  %80 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i8**, i8*** %8, align 8
  %83 = call i32 @query_raise_expected_string(i32 %81, i8** %82)
  br label %84

84:                                               ; preds = %76, %72, %68
  %85 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  store i8* %90, i8** %9, align 8
  %91 = load i8**, i8*** %8, align 8
  %92 = bitcast %struct.buffer* %6 to { i32, i8* }*
  %93 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %92, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call { i32, i8* } @query_get_char(i32 %94, i8* %96, i8* %11, i8** %91)
  %98 = bitcast %struct.buffer* %15 to { i32, i8* }*
  %99 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %98, i32 0, i32 0
  %100 = extractvalue { i32, i8* } %97, 0
  store i32 %100, i32* %99, align 8
  %101 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %98, i32 0, i32 1
  %102 = extractvalue { i32, i8* } %97, 1
  store i8* %102, i8** %101, align 8
  %103 = bitcast %struct.buffer* %6 to i8*
  %104 = bitcast %struct.buffer* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 16, i1 false)
  br label %105

105:                                              ; preds = %117, %84
  %106 = load i8**, i8*** %8, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  %109 = xor i1 %108, true
  br i1 %109, label %110, label %132

110:                                              ; preds = %105
  %111 = load i8, i8* %11, align 1
  %112 = sext i8 %111 to i32
  %113 = load i8, i8* %10, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %132

117:                                              ; preds = %110
  %118 = load i8**, i8*** %8, align 8
  %119 = bitcast %struct.buffer* %6 to { i32, i8* }*
  %120 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %119, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call { i32, i8* } @query_get_char(i32 %121, i8* %123, i8* %11, i8** %118)
  %125 = bitcast %struct.buffer* %16 to { i32, i8* }*
  %126 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %125, i32 0, i32 0
  %127 = extractvalue { i32, i8* } %124, 0
  store i32 %127, i32* %126, align 8
  %128 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %125, i32 0, i32 1
  %129 = extractvalue { i32, i8* } %124, 1
  store i8* %129, i8** %128, align 8
  %130 = bitcast %struct.buffer* %6 to i8*
  %131 = bitcast %struct.buffer* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 16, i1 false)
  br label %105

132:                                              ; preds = %116, %105
  %133 = load i8**, i8*** %8, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %289, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @RDT_BINARY, align 4
  br label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @RDT_STRING, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  %145 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %146 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  %147 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = load i8*, i8** %9, align 8
  %154 = ptrtoint i8* %152 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sub nsw i64 %156, 1
  %158 = trunc i64 %157 to i32
  %159 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %160 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  store i32 %158, i32* %162, align 8
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %143
  %166 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %167 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  %172 = sdiv i32 %171, 2
  br label %180

173:                                              ; preds = %143
  %174 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %175 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  br label %180

180:                                              ; preds = %173, %165
  %181 = phi i32 [ %172, %165 ], [ %179, %173 ]
  %182 = sext i32 %181 to i64
  store i64 %182, i64* %17, align 8
  %183 = load i64, i64* %17, align 8
  %184 = call i64 @calloc(i64 %183, i32 1)
  %185 = inttoptr i64 %184 to i8*
  %186 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %187 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  store i8* %185, i8** %189, align 8
  %190 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %191 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %180
  %197 = load i8**, i8*** %8, align 8
  %198 = call i32 @query_raise_enomem(i8** %197)
  br label %288

199:                                              ; preds = %180
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %273

202:                                              ; preds = %199
  %203 = load i8*, i8** %9, align 8
  store i8* %203, i8** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %204

204:                                              ; preds = %264, %202
  %205 = load i32, i32* %18, align 4
  %206 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %207 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ult i32 %205, %210
  br i1 %211, label %212, label %267

212:                                              ; preds = %204
  %213 = load i8*, i8** %19, align 8
  %214 = load i32, i32* %18, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i8, i8* %216, align 1
  store i8 %217, i8* %23, align 1
  %218 = load i8*, i8** %19, align 8
  %219 = load i32, i32* %18, align 4
  %220 = add i32 %219, 1
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %218, i64 %221
  %223 = load i8, i8* %222, align 1
  store i8 %223, i8* %24, align 1
  %224 = load i8, i8* %23, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp sle i32 %225, 57
  br i1 %226, label %227, label %231

227:                                              ; preds = %212
  %228 = load i8, i8* %23, align 1
  %229 = sext i8 %228 to i32
  %230 = sub nsw i32 %229, 48
  store i32 %230, i32* %21, align 4
  br label %236

231:                                              ; preds = %212
  %232 = load i8, i8* %23, align 1
  %233 = sext i8 %232 to i32
  %234 = sub nsw i32 %233, 65
  %235 = add nsw i32 %234, 10
  store i32 %235, i32* %21, align 4
  br label %236

236:                                              ; preds = %231, %227
  %237 = load i8, i8* %24, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp sle i32 %238, 57
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = load i8, i8* %24, align 1
  %242 = sext i8 %241 to i32
  %243 = sub nsw i32 %242, 48
  store i32 %243, i32* %22, align 4
  br label %249

244:                                              ; preds = %236
  %245 = load i8, i8* %24, align 1
  %246 = sext i8 %245 to i32
  %247 = sub nsw i32 %246, 65
  %248 = add nsw i32 %247, 10
  store i32 %248, i32* %22, align 4
  br label %249

249:                                              ; preds = %244, %240
  %250 = load i32, i32* %21, align 4
  %251 = mul nsw i32 %250, 16
  %252 = load i32, i32* %22, align 4
  %253 = add nsw i32 %251, %252
  %254 = trunc i32 %253 to i8
  %255 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %256 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = load i32, i32* %20, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %20, align 4
  %262 = zext i32 %260 to i64
  %263 = getelementptr inbounds i8, i8* %259, i64 %262
  store i8 %254, i8* %263, align 1
  br label %264

264:                                              ; preds = %249
  %265 = load i32, i32* %18, align 4
  %266 = add i32 %265, 2
  store i32 %266, i32* %18, align 4
  br label %204

267:                                              ; preds = %204
  %268 = load i32, i32* %20, align 4
  %269 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %270 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 0
  store i32 %268, i32* %272, align 8
  br label %287

273:                                              ; preds = %199
  %274 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %275 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 1
  %278 = load i8*, i8** %277, align 8
  %279 = bitcast i8* %278 to i32*
  %280 = load i8*, i8** %9, align 8
  %281 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %7, align 8
  %282 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @memcpy(i32* %279, i8* %280, i32 %285)
  br label %287

287:                                              ; preds = %273, %267
  br label %288

288:                                              ; preds = %287, %196
  br label %289

289:                                              ; preds = %288, %132
  %290 = bitcast %struct.buffer* %5 to i8*
  %291 = bitcast %struct.buffer* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %290, i8* align 8 %291, i64 16, i1 false)
  br label %292

292:                                              ; preds = %289, %46
  %293 = bitcast %struct.buffer* %5 to { i32, i8* }*
  %294 = load { i32, i8* }, { i32, i8* }* %293, align 8
  ret { i32, i8* } %294
}

declare dso_local { i32, i8* } @query_get_char(i32, i8*, i8*, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @query_raise_expected_string(i32, i8**) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @query_raise_enomem(i8**) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
