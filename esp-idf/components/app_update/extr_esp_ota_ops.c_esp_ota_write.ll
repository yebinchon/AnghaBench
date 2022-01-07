; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i64*, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"write data is invalid\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@s_ota_ops_entries_head = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"must erase the partition before writing to it\00", align 1
@ESP_IMAGE_HEADER_MAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"OTA image has invalid magic byte (expected 0xE9, saw 0x%02x)\00", align 1
@ESP_ERR_OTA_VALIDATE_FAILED = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@entries = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"not found the handle\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_ota_write(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %19, i64* %4, align 8
  br label %197

20:                                               ; preds = %3
  %21 = call %struct.TYPE_5__* @LIST_FIRST(i32* @s_ota_ops_entries_head)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %10, align 8
  br label %22

22:                                               ; preds = %189, %20
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %193

25:                                               ; preds = %22
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %188

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %31
  %38 = phi i1 [ false, %31 ], [ true, %36 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %37
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i64*, i64** %8, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ESP_IMAGE_HEADER_MAGIC, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i32, i32* @TAG, align 4
  %61 = load i64*, i64** %8, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %60, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  %65 = load i64, i64* @ESP_ERR_OTA_VALIDATE_FAILED, align 8
  store i64 %65, i64* %4, align 8
  br label %197

66:                                               ; preds = %53, %50, %45, %37
  %67 = call i64 (...) @esp_flash_encryption_enabled()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %167

69:                                               ; preds = %66
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %138

74:                                               ; preds = %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 16, %77
  %79 = load i64, i64* %7, align 8
  %80 = call i64 @MIN(i32 %78, i64 %79)
  store i64 %80, i64* %11, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %83, i64 %87
  %89 = load i64*, i64** %8, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @memcpy(i64* %88, i64* %89, i64 %90)
  %92 = load i64, i64* %11, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = add i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 16
  br i1 %102, label %103, label %105

103:                                              ; preds = %74
  %104 = load i64, i64* @ESP_OK, align 8
  store i64 %104, i64* %4, align 8
  br label %197

105:                                              ; preds = %74
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = load i64*, i64** %113, align 8
  %115 = call i64 @esp_partition_write(i32 %108, i64 %111, i64* %114, i64 16)
  store i64 %115, i64* %9, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* @ESP_OK, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %105
  %120 = load i64, i64* %9, align 8
  store i64 %120, i64* %4, align 8
  br label %197

121:                                              ; preds = %105
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  store i32 0, i32* %123, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  %126 = load i64*, i64** %125, align 8
  %127 = call i32 @memset(i64* %126, i32 255, i32 16)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 16
  store i64 %131, i64* %129, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load i64*, i64** %8, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 %132
  store i64* %134, i64** %8, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* %7, align 8
  %137 = sub i64 %136, %135
  store i64 %137, i64* %7, align 8
  br label %138

138:                                              ; preds = %121, %69
  %139 = load i64, i64* %7, align 8
  %140 = urem i64 %139, 16
  %141 = trunc i64 %140 to i32
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %138
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* %7, align 8
  %154 = sub i64 %153, %152
  store i64 %154, i64* %7, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 4
  %157 = load i64*, i64** %156, align 8
  %158 = load i64*, i64** %8, align 8
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = call i32 @memcpy(i64* %157, i64* %160, i64 %164)
  br label %166

166:                                              ; preds = %148, %138
  br label %167

167:                                              ; preds = %166, %66
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64*, i64** %8, align 8
  %175 = load i64, i64* %7, align 8
  %176 = call i64 @esp_partition_write(i32 %170, i64 %173, i64* %174, i64 %175)
  store i64 %176, i64* %9, align 8
  %177 = load i64, i64* %9, align 8
  %178 = load i64, i64* @ESP_OK, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %167
  %181 = load i64, i64* %7, align 8
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = add i64 %184, %181
  store i64 %185, i64* %183, align 8
  br label %186

186:                                              ; preds = %180, %167
  %187 = load i64, i64* %9, align 8
  store i64 %187, i64* %4, align 8
  br label %197

188:                                              ; preds = %25
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %191 = load i32, i32* @entries, align 4
  %192 = call %struct.TYPE_5__* @LIST_NEXT(%struct.TYPE_5__* %190, i32 %191)
  store %struct.TYPE_5__* %192, %struct.TYPE_5__** %10, align 8
  br label %22

193:                                              ; preds = %22
  %194 = load i32, i32* @TAG, align 4
  %195 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %194, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %196 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %196, i64* %4, align 8
  br label %197

197:                                              ; preds = %193, %186, %119, %103, %59, %16
  %198 = load i64, i64* %4, align 8
  ret i64 %198
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local %struct.TYPE_5__* @LIST_FIRST(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @esp_flash_encryption_enabled(...) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i64 @esp_partition_write(i32, i64, i64*, i64) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @LIST_NEXT(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
