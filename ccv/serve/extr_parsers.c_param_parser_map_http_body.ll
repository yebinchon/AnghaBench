; ModuleID = '/home/carl/AnghaBench/ccv/serve/extr_parsers.c_param_parser_map_http_body.c'
source_filename = "/home/carl/AnghaBench/ccv/serve/extr_parsers.c_param_parser_map_http_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i64 }
%struct.TYPE_5__ = type { i8*, i32 }

@param_parser_map_http_body.int_type = internal constant [8 x i8] c"integer\00", align 1
@param_parser_map_http_body.bool_type = internal constant [8 x i8] c"boolean\00", align 1
@param_parser_map_http_body.number_type = internal constant [7 x i8] c"number\00", align 1
@param_parser_map_http_body.size_type = internal constant [5 x i8] c"size\00", align 1
@param_parser_map_http_body.point_type = internal constant [6 x i8] c"point\00", align 1
@param_parser_map_http_body.string_type = internal constant [7 x i8] c"string\00", align 1
@param_parser_map_http_body.blob_type = internal constant [5 x i8] c"blob\00", align 1
@ebb_http_header = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"{\22request\22:{\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c",\22response\22:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @param_parser_map_http_body(%struct.TYPE_6__* noalias sret %0, %struct.TYPE_5__* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* %3, i8** %7, align 8
  store i64 12, i64* %9, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %58, %4
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %61

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = add nsw i32 %25, 6
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %9, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %57 [
    i32 131, label %36
    i32 132, label %36
    i32 133, label %39
    i32 134, label %39
    i32 135, label %42
    i32 130, label %45
    i32 129, label %48
    i32 128, label %51
    i32 137, label %54
    i32 136, label %54
  ]

36:                                               ; preds = %18, %18
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 7
  store i64 %38, i64* %9, align 8
  br label %57

39:                                               ; preds = %18, %18
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 6
  store i64 %41, i64* %9, align 8
  br label %57

42:                                               ; preds = %18
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 7
  store i64 %44, i64* %9, align 8
  br label %57

45:                                               ; preds = %18
  %46 = load i64, i64* %9, align 8
  %47 = add i64 %46, 5
  store i64 %47, i64* %9, align 8
  br label %57

48:                                               ; preds = %18
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %9, align 8
  br label %57

51:                                               ; preds = %18
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 6
  store i64 %53, i64* %9, align 8
  br label %57

54:                                               ; preds = %18, %18
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %18, %54, %51, %48, %45, %42, %39, %36
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %13

61:                                               ; preds = %13
  %62 = load i8*, i8** %7, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = add nsw i32 12, %66
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %64, %61
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add i64 192, %74
  %76 = trunc i64 %75 to i32
  %77 = call i64 @malloc(i32 %76)
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** %10, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** @ebb_http_header, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @snprintf(i8* %79, i32 192, i8* %80, i64 %81)
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i32 %84, i32* %85, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  %91 = call i32 @memcpy(i8* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 12)
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 13
  store i32 %94, i32* %92, align 8
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %264, %71
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %6, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %267

100:                                              ; preds = %95
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  store i8 34, i8* %106, align 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @strlen(i8* %112)
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %11, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i32 @memcpy(i8* %119, i8* %125, i64 %126)
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %128, 3
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = add i64 %132, %129
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %130, align 8
  %135 = load i8*, i8** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %137, 3
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %135, i64 %139
  store i8 34, i8* %140, align 1
  %141 = load i8*, i8** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %141, i64 %145
  store i8 58, i8* %146, align 1
  %147 = load i8*, i8** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %147, i64 %151
  store i8 34, i8* %152, align 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  switch i32 %158, label %243 [
    i32 131, label %159
    i32 132, label %159
    i32 133, label %171
    i32 134, label %171
    i32 135, label %183
    i32 130, label %195
    i32 129, label %207
    i32 128, label %219
    i32 137, label %231
    i32 136, label %231
  ]

159:                                              ; preds = %100, %100
  %160 = load i8*, i8** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = call i32 @memcpy(i8* %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @param_parser_map_http_body.int_type, i64 0, i64 0), i64 7)
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = add i64 %168, 10
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %166, align 8
  br label %243

171:                                              ; preds = %100, %100
  %172 = load i8*, i8** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %172, i64 %175
  %177 = call i32 @memcpy(i8* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @param_parser_map_http_body.number_type, i64 0, i64 0), i64 6)
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = add i64 %180, 9
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %178, align 8
  br label %243

183:                                              ; preds = %100
  %184 = load i8*, i8** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = call i32 @memcpy(i8* %188, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @param_parser_map_http_body.bool_type, i64 0, i64 0), i64 7)
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = add i64 %192, 10
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 8
  br label %243

195:                                              ; preds = %100
  %196 = load i8*, i8** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %196, i64 %199
  %201 = call i32 @memcpy(i8* %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @param_parser_map_http_body.point_type, i64 0, i64 0), i64 5)
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = add i64 %204, 8
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %202, align 8
  br label %243

207:                                              ; preds = %100
  %208 = load i8*, i8** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %208, i64 %211
  %213 = call i32 @memcpy(i8* %212, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @param_parser_map_http_body.size_type, i64 0, i64 0), i64 4)
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = add i64 %216, 7
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %214, align 8
  br label %243

219:                                              ; preds = %100
  %220 = load i8*, i8** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %220, i64 %223
  %225 = call i32 @memcpy(i8* %224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @param_parser_map_http_body.string_type, i64 0, i64 0), i64 6)
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = add i64 %228, 9
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %226, align 8
  br label %243

231:                                              ; preds = %100, %100
  %232 = load i8*, i8** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %232, i64 %235
  %237 = call i32 @memcpy(i8* %236, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @param_parser_map_http_body.blob_type, i64 0, i64 0), i64 4)
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = add i64 %240, 7
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %238, align 8
  br label %243

243:                                              ; preds = %100, %231, %219, %207, %195, %183, %171, %159
  %244 = load i8*, i8** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sub nsw i32 %246, 3
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %244, i64 %248
  store i8 34, i8* %249, align 1
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = load i64, i64* %6, align 8
  %253 = sub i64 %252, 1
  %254 = icmp eq i64 %251, %253
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i32 125, i32 44
  %257 = trunc i32 %256 to i8
  %258 = load i8*, i8** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sub nsw i32 %260, 2
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %258, i64 %262
  store i8 %257, i8* %263, align 1
  br label %264

264:                                              ; preds = %243
  %265 = load i32, i32* %8, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %8, align 4
  br label %95

267:                                              ; preds = %95
  %268 = load i8*, i8** %7, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %299

270:                                              ; preds = %267
  %271 = load i8*, i8** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %271, i64 %274
  %276 = getelementptr inbounds i8, i8* %275, i64 -1
  %277 = call i32 @memcpy(i8* %276, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 12)
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 11
  store i32 %280, i32* %278, align 8
  %281 = load i8*, i8** %7, align 8
  %282 = call i32 @strlen(i8* %281)
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %12, align 8
  %284 = load i8*, i8** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %284, i64 %287
  %289 = load i8*, i8** %7, align 8
  %290 = load i64, i64* %12, align 8
  %291 = call i32 @memcpy(i8* %288, i8* %289, i64 %290)
  %292 = load i64, i64* %12, align 8
  %293 = add i64 %292, 1
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  %297 = add i64 %296, %293
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %294, align 8
  br label %299

299:                                              ; preds = %270, %267
  %300 = load i8*, i8** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = sub nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, i8* %300, i64 %304
  store i8 125, i8* %305, align 1
  %306 = load i8*, i8** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %306, i64 %309
  store i8 10, i8* %310, align 1
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = add nsw i32 %312, 1
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i32 %313, i32* %314, align 4
  %315 = load i8*, i8** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i8* %315, i8** %316, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  store i64 0, i64* %317, align 8
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
