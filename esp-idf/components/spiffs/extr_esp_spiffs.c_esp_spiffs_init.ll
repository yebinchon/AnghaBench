; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_esp_spiffs_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_esp_spiffs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_18__, %struct.TYPE_21__*, i8*, i32*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, i64, i32* }

@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"max mounted partitions reached\00", align 1
@g_rom_flashchip = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@CONFIG_SPIFFS_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"SPIFFS_PAGE_SIZE is not multiple of flash chip page size (%d)\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@ESP_PARTITION_SUBTYPE_ANY = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_DATA_SPIFFS = common dso_local global i32 0, align 4
@ESP_PARTITION_TYPE_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"spiffs partition could not be found\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"spiffs can not run on encrypted partition\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"esp_spiffs could not be malloced\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@spiffs_api_erase = common dso_local global i32 0, align 4
@spiffs_api_read = common dso_local global i32 0, align 4
@spiffs_api_write = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"mutex lock could not be created\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"fd buffer could not be malloced\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"work buffer could not be malloced\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"spiffs could not be malloced\00", align 1
@spiffs_api_check = common dso_local global i32 0, align 4
@SPIFFS_OK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"mount failed, %i. formatting...\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"format failed, %i\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"mount failed, %i\00", align 1
@_efs = common dso_local global %struct.TYPE_20__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*)* @esp_spiffs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @esp_spiffs_init(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @esp_spiffs_by_label(i32* %14, i32* %4)
  %16 = load i64, i64* @ESP_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %19, i64* %2, align 8
  br label %329

20:                                               ; preds = %1
  %21 = call i64 @esp_spiffs_get_empty(i32* %4)
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @TAG, align 4
  %26 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %27, i64* %2, align 8
  br label %329

28:                                               ; preds = %20
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @g_rom_flashchip, i32 0, i32 0), align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @CONFIG_SPIFFS_PAGE_SIZE, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = srem i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @TAG, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %36, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %39, i64* %2, align 8
  br label %329

40:                                               ; preds = %28
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @ESP_PARTITION_SUBTYPE_ANY, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @ESP_PARTITION_SUBTYPE_DATA_SPIFFS, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call %struct.TYPE_21__* @esp_partition_find_first(i32 %51, i32 %52, i32* %55)
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %8, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %58 = icmp ne %struct.TYPE_21__* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @TAG, align 4
  %61 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  store i64 %62, i64* %2, align 8
  br label %329

63:                                               ; preds = %49
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @TAG, align 4
  %70 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %71, i64* %2, align 8
  br label %329

72:                                               ; preds = %63
  %73 = call i8* @malloc(i32 112)
  %74 = bitcast i8* %73 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %9, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %76 = icmp eq %struct.TYPE_20__* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @TAG, align 4
  %79 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %80, i64* %2, align 8
  br label %329

81:                                               ; preds = %72
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %83 = call i32 @memset(%struct.TYPE_20__* %82, i32 0, i32 112)
  %84 = load i32, i32* @spiffs_api_erase, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 7
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @spiffs_api_read, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 6
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* @spiffs_api_write, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 5
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @g_rom_flashchip, i32 0, i32 1), align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 4
  store i32 %96, i32* %99, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @g_rom_flashchip, i32 0, i32 1), align 4
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  %121 = zext i1 %120 to i32
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 10
  store i32 %121, i32* %123, align 8
  %124 = call i32* (...) @xSemaphoreCreateMutex()
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 9
  store i32* %124, i32** %126, align 8
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 9
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %81
  %132 = load i32, i32* @TAG, align 4
  %133 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %134 = call i32 @esp_spiffs_free(%struct.TYPE_20__** %9)
  %135 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %135, i64* %2, align 8
  br label %329

136:                                              ; preds = %81
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @malloc(i32 %147)
  %149 = bitcast i8* %148 to %struct.TYPE_20__*
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 4
  store %struct.TYPE_20__* %149, %struct.TYPE_20__** %151, align 8
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 4
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %153, align 8
  %155 = icmp eq %struct.TYPE_20__* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %136
  %157 = load i32, i32* @TAG, align 4
  %158 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %159 = call i32 @esp_spiffs_free(%struct.TYPE_20__** %9)
  %160 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %160, i64* %2, align 8
  br label %329

161:                                              ; preds = %136
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %163, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @memset(%struct.TYPE_20__* %164, i32 0, i32 %167)
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = mul nsw i32 %172, 2
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = call i8* @malloc(i32 %174)
  %176 = bitcast i8* %175 to %struct.TYPE_20__*
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 5
  store %struct.TYPE_20__* %176, %struct.TYPE_20__** %178, align 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 5
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %180, align 8
  %182 = icmp eq %struct.TYPE_20__* %181, null
  br i1 %182, label %183, label %188

183:                                              ; preds = %161
  %184 = load i32, i32* @TAG, align 4
  %185 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %184, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %186 = call i32 @esp_spiffs_free(%struct.TYPE_20__** %9)
  %187 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %187, i64* %2, align 8
  br label %329

188:                                              ; preds = %161
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 5
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @memset(%struct.TYPE_20__* %191, i32 0, i32 %192)
  %194 = call i8* @malloc(i32 4)
  %195 = bitcast i8* %194 to %struct.TYPE_20__*
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 2
  store %struct.TYPE_20__* %195, %struct.TYPE_20__** %197, align 8
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %199, align 8
  %201 = icmp eq %struct.TYPE_20__* %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %188
  %203 = load i32, i32* @TAG, align 4
  %204 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %203, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %205 = call i32 @esp_spiffs_free(%struct.TYPE_20__** %9)
  %206 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %206, i64* %2, align 8
  br label %329

207:                                              ; preds = %188
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %209, align 8
  %211 = call i32 @memset(%struct.TYPE_20__* %210, i32 0, i32 4)
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %213 = bitcast %struct.TYPE_20__* %212 to i8*
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 8
  store i8* %213, i8** %217, align 8
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 7
  store %struct.TYPE_21__* %218, %struct.TYPE_21__** %220, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 6
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 5
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %227, align 8
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 4
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %230, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 3
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %236, align 8
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @spiffs_api_check, align 4
  %242 = call i64 @SPIFFS_mount(%struct.TYPE_20__* %223, %struct.TYPE_18__* %225, %struct.TYPE_20__* %228, %struct.TYPE_20__* %231, i32 %234, %struct.TYPE_20__* %237, i32 %240, i32 %241)
  store i64 %242, i64* %11, align 8
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %305

247:                                              ; preds = %207
  %248 = load i64, i64* %11, align 8
  %249 = load i64, i64* @SPIFFS_OK, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %305

251:                                              ; preds = %247
  %252 = load i32, i32* @TAG, align 4
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %254, align 8
  %256 = call i32 @SPIFFS_errno(%struct.TYPE_20__* %255)
  %257 = call i32 @ESP_LOGW(i32 %252, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %256)
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %259, align 8
  %261 = call i32 @SPIFFS_clearerr(%struct.TYPE_20__* %260)
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %263, align 8
  %265 = call i64 @SPIFFS_format(%struct.TYPE_20__* %264)
  store i64 %265, i64* %11, align 8
  %266 = load i64, i64* %11, align 8
  %267 = load i64, i64* @SPIFFS_OK, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %282

269:                                              ; preds = %251
  %270 = load i32, i32* @TAG, align 4
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 2
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %272, align 8
  %274 = call i32 @SPIFFS_errno(%struct.TYPE_20__* %273)
  %275 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %270, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %274)
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 2
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %277, align 8
  %279 = call i32 @SPIFFS_clearerr(%struct.TYPE_20__* %278)
  %280 = call i32 @esp_spiffs_free(%struct.TYPE_20__** %9)
  %281 = load i64, i64* @ESP_FAIL, align 8
  store i64 %281, i64* %2, align 8
  br label %329

282:                                              ; preds = %251
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %284, align 8
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 6
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %288, i32 0, i32 5
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %289, align 8
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 4
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %292, align 8
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 3
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %298, align 8
  %300 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @spiffs_api_check, align 4
  %304 = call i64 @SPIFFS_mount(%struct.TYPE_20__* %285, %struct.TYPE_18__* %287, %struct.TYPE_20__* %290, %struct.TYPE_20__* %293, i32 %296, %struct.TYPE_20__* %299, i32 %302, i32 %303)
  store i64 %304, i64* %11, align 8
  br label %305

305:                                              ; preds = %282, %247, %207
  %306 = load i64, i64* %11, align 8
  %307 = load i64, i64* @SPIFFS_OK, align 8
  %308 = icmp ne i64 %306, %307
  br i1 %308, label %309, label %322

309:                                              ; preds = %305
  %310 = load i32, i32* @TAG, align 4
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 2
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %312, align 8
  %314 = call i32 @SPIFFS_errno(%struct.TYPE_20__* %313)
  %315 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %310, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %314)
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 2
  %318 = load %struct.TYPE_20__*, %struct.TYPE_20__** %317, align 8
  %319 = call i32 @SPIFFS_clearerr(%struct.TYPE_20__* %318)
  %320 = call i32 @esp_spiffs_free(%struct.TYPE_20__** %9)
  %321 = load i64, i64* @ESP_FAIL, align 8
  store i64 %321, i64* %2, align 8
  br label %329

322:                                              ; preds = %305
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %324 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @_efs, align 8
  %325 = load i32, i32* %4, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %324, i64 %326
  store %struct.TYPE_20__* %323, %struct.TYPE_20__** %327, align 8
  %328 = load i64, i64* @ESP_OK, align 8
  store i64 %328, i64* %2, align 8
  br label %329

329:                                              ; preds = %322, %309, %269, %202, %183, %156, %131, %77, %68, %59, %35, %24, %18
  %330 = load i64, i64* %2, align 8
  ret i64 %330
}

declare dso_local i64 @esp_spiffs_by_label(i32*, i32*) #1

declare dso_local i64 @esp_spiffs_get_empty(i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local %struct.TYPE_21__* @esp_partition_find_first(i32, i32, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32* @xSemaphoreCreateMutex(...) #1

declare dso_local i32 @esp_spiffs_free(%struct.TYPE_20__**) #1

declare dso_local i64 @SPIFFS_mount(%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, i32) #1

declare dso_local i32 @SPIFFS_errno(%struct.TYPE_20__*) #1

declare dso_local i32 @SPIFFS_clearerr(%struct.TYPE_20__*) #1

declare dso_local i64 @SPIFFS_format(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
