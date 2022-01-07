; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl.c_esp_local_ctrl_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl.c_esp_local_ctrl_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 (i32*, i32*)*, i64 (i32*, i8*, i32)*, i64 (i32, i32*)* }
%struct.TYPE_9__ = type { i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"NULL configuration provided\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"No transport provided\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"max_properties must be greater than 0\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Handlers cannot be null\00", align 1
@local_ctrl_inst_ctx = common dso_local global %struct.TYPE_13__* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Service already active\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to allocate memory for instance\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"Failed to allocate memory for properties\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"esp_local_ctrl/version\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"esp_local_ctrl/session\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"esp_local_ctrl/control\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Failed to create new protocomm instance\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@ESP_LOCAL_CTRL_VERSION = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"Failed to set version endpoint\00", align 1
@protocomm_security0 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"Failed to set session endpoint\00", align 1
@esp_local_ctrl_data_handler = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"Failed to set control endpoint\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_local_ctrl_start(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = icmp ne %struct.TYPE_11__* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 @ESP_LOGE(i32 %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %11, i64* %2, align 8
  br label %255

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @TAG, align 4
  %19 = call i32 @ESP_LOGE(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %20, i64* %2, align 8
  br label %255

21:                                               ; preds = %12
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %29, i64* %2, align 8
  br label %255

30:                                               ; preds = %21
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* @TAG, align 4
  %44 = call i32 @ESP_LOGE(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %45, i64* %2, align 8
  br label %255

46:                                               ; preds = %36
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %48 = icmp ne %struct.TYPE_13__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @TAG, align 4
  %51 = call i32 @ESP_LOGW(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %52, i64* %2, align 8
  br label %255

53:                                               ; preds = %46
  %54 = call i8* @calloc(i32 1, i32 4)
  %55 = bitcast i8* %54 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %57 = icmp ne %struct.TYPE_13__* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @TAG, align 4
  %60 = call i32 @ESP_LOGE(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %61 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %61, i64* %2, align 8
  br label %255

62:                                               ; preds = %53
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = call i32 @memcpy(%struct.TYPE_12__* %64, %struct.TYPE_11__* %65, i32 8)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @calloc(i32 %70, i32 8)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %62
  %79 = load i32, i32* @TAG, align 4
  %80 = call i32 @ESP_LOGE(i32 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %82 = call i32 @free(%struct.TYPE_13__* %81)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %83 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %83, i64* %2, align 8
  br label %255

84:                                               ; preds = %62
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %88, align 8
  %90 = icmp ne i64 (i32*, i32*)* %89, null
  br i1 %90, label %91, label %110

91:                                               ; preds = %84
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %95, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = call i64 %96(i32* %99, i32* %101)
  store i64 %102, i64* %4, align 8
  %103 = load i64, i64* %4, align 8
  %104 = load i64, i64* @ESP_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %91
  %107 = call i32 (...) @esp_local_ctrl_stop()
  %108 = load i64, i64* %4, align 8
  store i64 %108, i64* %2, align 8
  br label %255

109:                                              ; preds = %91
  br label %110

110:                                              ; preds = %109, %84
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i64 (i32*, i8*, i32)*, i64 (i32*, i8*, i32)** %114, align 8
  %116 = icmp ne i64 (i32*, i8*, i32)* %115, null
  br i1 %116, label %117, label %172

117:                                              ; preds = %110
  store i32 65360, i32* %5, align 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64 (i32*, i8*, i32)*, i64 (i32*, i8*, i32)** %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  %128 = call i64 %122(i32* %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  store i64 %128, i64* %4, align 8
  %129 = load i64, i64* %4, align 8
  %130 = load i64, i64* @ESP_OK, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %117
  %133 = call i32 (...) @esp_local_ctrl_stop()
  %134 = load i64, i64* %4, align 8
  store i64 %134, i64* %2, align 8
  br label %255

135:                                              ; preds = %117
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i64 (i32*, i8*, i32)*, i64 (i32*, i8*, i32)** %139, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  %146 = call i64 %140(i32* %143, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %144)
  store i64 %146, i64* %4, align 8
  %147 = load i64, i64* %4, align 8
  %148 = load i64, i64* @ESP_OK, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %135
  %151 = call i32 (...) @esp_local_ctrl_stop()
  %152 = load i64, i64* %4, align 8
  store i64 %152, i64* %2, align 8
  br label %255

153:                                              ; preds = %135
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load i64 (i32*, i8*, i32)*, i64 (i32*, i8*, i32)** %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  %164 = call i64 %158(i32* %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %162)
  store i64 %164, i64* %4, align 8
  %165 = load i64, i64* %4, align 8
  %166 = load i64, i64* @ESP_OK, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %153
  %169 = call i32 (...) @esp_local_ctrl_stop()
  %170 = load i64, i64* %4, align 8
  store i64 %170, i64* %2, align 8
  br label %255

171:                                              ; preds = %153
  br label %172

172:                                              ; preds = %171, %110
  %173 = call i32 (...) @protocomm_new()
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %172
  %181 = load i32, i32* @TAG, align 4
  %182 = call i32 @ESP_LOGE(i32 %181, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %183 = call i32 (...) @esp_local_ctrl_stop()
  %184 = load i64, i64* @ESP_FAIL, align 8
  store i64 %184, i64* %2, align 8
  br label %255

185:                                              ; preds = %172
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 2
  %190 = load i64 (i32, i32*)*, i64 (i32, i32*)** %189, align 8
  %191 = icmp ne i64 (i32, i32*)* %190, null
  br i1 %191, label %192, label %212

192:                                              ; preds = %185
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 2
  %197 = load i64 (i32, i32*)*, i64 (i32, i32*)** %196, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 1
  %204 = call i64 %197(i32 %200, i32* %203)
  store i64 %204, i64* %4, align 8
  %205 = load i64, i64* %4, align 8
  %206 = load i64, i64* @ESP_OK, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %192
  %209 = call i32 (...) @esp_local_ctrl_stop()
  %210 = load i64, i64* %4, align 8
  store i64 %210, i64* %2, align 8
  br label %255

211:                                              ; preds = %192
  br label %212

212:                                              ; preds = %211, %185
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @ESP_LOCAL_CTRL_VERSION, align 4
  %217 = call i64 @protocomm_set_version(i32 %215, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %216)
  store i64 %217, i64* %4, align 8
  %218 = load i64, i64* %4, align 8
  %219 = load i64, i64* @ESP_OK, align 8
  %220 = icmp ne i64 %218, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %212
  %222 = load i32, i32* @TAG, align 4
  %223 = call i32 @ESP_LOGE(i32 %222, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %224 = call i32 (...) @esp_local_ctrl_stop()
  %225 = load i64, i64* %4, align 8
  store i64 %225, i64* %2, align 8
  br label %255

226:                                              ; preds = %212
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i64 @protocomm_set_security(i32 %229, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32* @protocomm_security0, i32* null)
  store i64 %230, i64* %4, align 8
  %231 = load i64, i64* %4, align 8
  %232 = load i64, i64* @ESP_OK, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %239

234:                                              ; preds = %226
  %235 = load i32, i32* @TAG, align 4
  %236 = call i32 @ESP_LOGE(i32 %235, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %237 = call i32 (...) @esp_local_ctrl_stop()
  %238 = load i64, i64* %4, align 8
  store i64 %238, i64* %2, align 8
  br label %255

239:                                              ; preds = %226
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** @local_ctrl_inst_ctx, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @esp_local_ctrl_data_handler, align 4
  %244 = call i64 @protocomm_add_endpoint(i32 %242, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %243, i32* null)
  store i64 %244, i64* %4, align 8
  %245 = load i64, i64* %4, align 8
  %246 = load i64, i64* @ESP_OK, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %239
  %249 = load i32, i32* @TAG, align 4
  %250 = call i32 @ESP_LOGE(i32 %249, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %251 = call i32 (...) @esp_local_ctrl_stop()
  %252 = load i64, i64* %4, align 8
  store i64 %252, i64* %2, align 8
  br label %255

253:                                              ; preds = %239
  %254 = load i64, i64* @ESP_OK, align 8
  store i64 %254, i64* %2, align 8
  br label %255

255:                                              ; preds = %253, %248, %234, %221, %208, %180, %168, %150, %132, %106, %78, %58, %49, %42, %26, %17, %8
  %256 = load i64, i64* %2, align 8
  ret i64 %256
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i32 @esp_local_ctrl_stop(...) #1

declare dso_local i32 @protocomm_new(...) #1

declare dso_local i64 @protocomm_set_version(i32, i8*, i32) #1

declare dso_local i64 @protocomm_set_security(i32, i8*, i32*, i32*) #1

declare dso_local i64 @protocomm_add_endpoint(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
