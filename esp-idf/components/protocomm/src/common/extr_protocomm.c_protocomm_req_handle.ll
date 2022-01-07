; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/common/extr_protocomm.c_protocomm_req_handle.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/common/extr_protocomm.c_protocomm_req_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (i32, i32, i32*, i8*, i32*, i8**)*, i64 (i32, i32, i32*, i8*, i32*, i8**)* }
%struct.TYPE_9__ = type { i32, i32, i64 (i32, i32*, i8*, i32**, i8**, i32)* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid params %p %p\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"No registered endpoint for %s\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i64 0, align 8
@SEC_EP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"SEC_EP Req handler returned %d\00", align 1
@REQ_EP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to allocate decrypt buf len %d\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"Decryption of response failed for endpoint %s\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Request handler for %s failed\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Encryption of response failed for endpoint %s\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"No encrypt ret %d\00", align 1
@VER_EP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"VER_EP Req handler returned %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @protocomm_req_handle(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32* %3, i8* %4, i32** %5, i8** %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i8** %6, i8*** %15, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %7
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32**, i32*** %14, align 8
  %31 = icmp ne i32** %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8**, i8*** %15, align 8
  %34 = icmp ne i8** %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32, %29, %26, %7
  %36 = load i32, i32* @TAG, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %37, i8* %38)
  %40 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %40, i64* %8, align 8
  br label %249

41:                                               ; preds = %32
  %42 = load i32**, i32*** %14, align 8
  store i32* null, i32** %42, align 8
  %43 = load i8**, i8*** %15, align 8
  store i8* null, i8** %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call %struct.TYPE_9__* @search_endpoint(%struct.TYPE_8__* %44, i8* %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %16, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @TAG, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  store i64 %53, i64* %8, align 8
  br label %249

54:                                               ; preds = %41
  %55 = load i64, i64* @ESP_FAIL, align 8
  store i64 %55, i64* %17, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SEC_EP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %54
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i64 (i32, i32*, i8*, i32**, i8**, i32)*, i64 (i32, i32*, i8*, i32**, i8**, i32)** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load i32**, i32*** %14, align 8
  %70 = load i8**, i8*** %15, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 %65(i32 %66, i32* %67, i8* %68, i32** %69, i8** %70, i32 %73)
  store i64 %74, i64* %17, align 8
  %75 = load i32, i32* @TAG, align 4
  %76 = load i64, i64* %17, align 8
  %77 = call i32 @ESP_LOGD(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  br label %247

78:                                               ; preds = %54
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @REQ_EP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %222

85:                                               ; preds = %78
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = icmp ne %struct.TYPE_7__* %88, null
  br i1 %89, label %90, label %205

90:                                               ; preds = %85
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64 (i32, i32, i32*, i8*, i32*, i8**)*, i64 (i32, i32, i32*, i8*, i32*, i8**)** %94, align 8
  %96 = icmp ne i64 (i32, i32, i32*, i8*, i32*, i8**)* %95, null
  br i1 %96, label %97, label %205

97:                                               ; preds = %90
  %98 = load i8*, i8** %13, align 8
  %99 = call i64 @malloc(i8* %98)
  %100 = inttoptr i64 %99 to i32*
  store i32* %100, i32** %18, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* @TAG, align 4
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  %107 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %107, i64* %8, align 8
  br label %249

108:                                              ; preds = %97
  %109 = load i8*, i8** %13, align 8
  store i8* %109, i8** %19, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i64 (i32, i32, i32*, i8*, i32*, i8**)*, i64 (i32, i32, i32*, i8*, i32*, i8**)** %113, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32*, i32** %12, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = load i32*, i32** %18, align 8
  %122 = call i64 %114(i32 %117, i32 %118, i32* %119, i8* %120, i32* %121, i8** %19)
  store i64 %122, i64* %17, align 8
  %123 = load i64, i64* %17, align 8
  %124 = load i64, i64* @ESP_OK, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %108
  %127 = load i32, i32* @TAG, align 4
  %128 = load i8*, i8** %10, align 8
  %129 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %127, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %128)
  %130 = load i32*, i32** %18, align 8
  %131 = call i32 @free(i32* %130)
  %132 = load i64, i64* %17, align 8
  store i64 %132, i64* %8, align 8
  br label %249

133:                                              ; preds = %108
  store i32* null, i32** %20, align 8
  store i8* null, i8** %21, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i64 (i32, i32*, i8*, i32**, i8**, i32)*, i64 (i32, i32*, i8*, i32**, i8**, i32)** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32*, i32** %18, align 8
  %139 = load i8*, i8** %19, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i64 %136(i32 %137, i32* %138, i8* %139, i32** %20, i8** %21, i32 %142)
  store i64 %143, i64* %17, align 8
  %144 = load i64, i64* %17, align 8
  %145 = load i64, i64* @ESP_OK, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %133
  %148 = load i32, i32* @TAG, align 4
  %149 = load i8*, i8** %10, align 8
  %150 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %149)
  %151 = load i32*, i32** %20, align 8
  %152 = call i32 @free(i32* %151)
  %153 = load i32*, i32** %18, align 8
  %154 = call i32 @free(i32* %153)
  %155 = load i64, i64* %17, align 8
  store i64 %155, i64* %8, align 8
  br label %249

156:                                              ; preds = %133
  %157 = load i32*, i32** %18, align 8
  %158 = call i32 @free(i32* %157)
  %159 = load i8*, i8** %21, align 8
  %160 = call i64 @malloc(i8* %159)
  %161 = inttoptr i64 %160 to i32*
  store i32* %161, i32** %22, align 8
  %162 = load i32*, i32** %22, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %171, label %164

164:                                              ; preds = %156
  %165 = load i32, i32* @TAG, align 4
  %166 = load i8*, i8** %13, align 8
  %167 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %165, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %166)
  %168 = load i32*, i32** %20, align 8
  %169 = call i32 @free(i32* %168)
  %170 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %170, i64* %8, align 8
  br label %249

171:                                              ; preds = %156
  %172 = load i8*, i8** %21, align 8
  store i8* %172, i8** %23, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i64 (i32, i32, i32*, i8*, i32*, i8**)*, i64 (i32, i32, i32*, i8*, i32*, i8**)** %176, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = load i32*, i32** %20, align 8
  %183 = load i8*, i8** %21, align 8
  %184 = load i32*, i32** %22, align 8
  %185 = call i64 %177(i32 %180, i32 %181, i32* %182, i8* %183, i32* %184, i8** %23)
  store i64 %185, i64* %17, align 8
  %186 = load i64, i64* %17, align 8
  %187 = load i64, i64* @ESP_OK, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %198

189:                                              ; preds = %171
  %190 = load i32, i32* @TAG, align 4
  %191 = load i8*, i8** %10, align 8
  %192 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %190, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %191)
  %193 = load i32*, i32** %22, align 8
  %194 = call i32 @free(i32* %193)
  %195 = load i32*, i32** %20, align 8
  %196 = call i32 @free(i32* %195)
  %197 = load i64, i64* %17, align 8
  store i64 %197, i64* %8, align 8
  br label %249

198:                                              ; preds = %171
  %199 = load i32*, i32** %20, align 8
  %200 = call i32 @free(i32* %199)
  %201 = load i32*, i32** %22, align 8
  %202 = load i32**, i32*** %14, align 8
  store i32* %201, i32** %202, align 8
  %203 = load i8*, i8** %23, align 8
  %204 = load i8**, i8*** %15, align 8
  store i8* %203, i8** %204, align 8
  br label %221

205:                                              ; preds = %90, %85
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i64 (i32, i32*, i8*, i32**, i8**, i32)*, i64 (i32, i32*, i8*, i32**, i8**, i32)** %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = load i32*, i32** %12, align 8
  %211 = load i8*, i8** %13, align 8
  %212 = load i32**, i32*** %14, align 8
  %213 = load i8**, i8*** %15, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i64 %208(i32 %209, i32* %210, i8* %211, i32** %212, i8** %213, i32 %216)
  store i64 %217, i64* %17, align 8
  %218 = load i32, i32* @TAG, align 4
  %219 = load i64, i64* %17, align 8
  %220 = call i32 @ESP_LOGD(i32 %218, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i64 %219)
  br label %221

221:                                              ; preds = %205, %198
  br label %246

222:                                              ; preds = %78
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @VER_EP, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %245

229:                                              ; preds = %222
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 2
  %232 = load i64 (i32, i32*, i8*, i32**, i8**, i32)*, i64 (i32, i32*, i8*, i32**, i8**, i32)** %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = load i32*, i32** %12, align 8
  %235 = load i8*, i8** %13, align 8
  %236 = load i32**, i32*** %14, align 8
  %237 = load i8**, i8*** %15, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i64 %232(i32 %233, i32* %234, i8* %235, i32** %236, i8** %237, i32 %240)
  store i64 %241, i64* %17, align 8
  %242 = load i32, i32* @TAG, align 4
  %243 = load i64, i64* %17, align 8
  %244 = call i32 @ESP_LOGD(i32 %242, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i64 %243)
  br label %245

245:                                              ; preds = %229, %222
  br label %246

246:                                              ; preds = %245, %221
  br label %247

247:                                              ; preds = %246, %62
  %248 = load i64, i64* %17, align 8
  store i64 %248, i64* %8, align 8
  br label %249

249:                                              ; preds = %247, %189, %164, %147, %126, %103, %49, %35
  %250 = load i64, i64* %8, align 8
  ret i64 %250
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @search_endpoint(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i64) #1

declare dso_local i64 @malloc(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
