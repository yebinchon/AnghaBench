; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_utility.c_bootloader_utility_load_partition_table.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_utility.c_bootloader_utility_load_partition_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, i32, %struct.TYPE_8__*, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__, i32 }

@ESP_PARTITION_TABLE_OFFSET = common dso_local global i64 0, align 8
@ESP_PARTITION_TABLE_MAX_LEN = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"bootloader_mmap(0x%x, 0x%x) failed\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"mapped partition table 0x%x at 0x%x\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to verify partition table\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Partition Table:\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"## Label            Usage          Type ST Offset   Length\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"load partition table entry 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"type=%x subtype=%x\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"factory app\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"test app\00", align 1
@PART_SUBTYPE_OTA_MASK = common dso_local global i64 0, align 8
@PART_SUBTYPE_OTA_FLAG = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"OTA app\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Unknown app\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"OTA data\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"RF data\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"WiFi data\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"NVS keys\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"efuse\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Unknown data\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"%2d %-16s %-16s %02x %02x %08x %08x\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"End of partition table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bootloader_utility_load_partition_table(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %10 = load i64, i64* @ESP_PARTITION_TABLE_OFFSET, align 8
  %11 = load i32, i32* @ESP_PARTITION_TABLE_MAX_LEN, align 4
  %12 = call %struct.TYPE_9__* @bootloader_mmap(i64 %10, i32 %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @TAG, align 4
  %17 = load i64, i64* @ESP_PARTITION_TABLE_OFFSET, align 8
  %18 = load i32, i32* @ESP_PARTITION_TABLE_MAX_LEN, align 4
  %19 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %18)
  store i32 0, i32* %2, align 4
  br label %159

20:                                               ; preds = %1
  %21 = load i32, i32* @TAG, align 4
  %22 = load i64, i64* @ESP_PARTITION_TABLE_OFFSET, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = ptrtoint %struct.TYPE_9__* %23 to i64
  %25 = call i32 (i32, i8*, i64, ...) @ESP_LOGD(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %22, i64 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call i64 @esp_partition_table_verify(%struct.TYPE_9__* %26, i32 1, i32* %7)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @ESP_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @TAG, align 4
  %33 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %159

34:                                               ; preds = %20
  %35 = load i32, i32* @TAG, align 4
  %36 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* @TAG, align 4
  %38 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %151, %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %154

43:                                               ; preds = %39
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %46
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %9, align 8
  %48 = load i32, i32* @TAG, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = ptrtoint %struct.TYPE_9__* %49 to i64
  %51 = call i32 (i32, i8*, i64, ...) @ESP_LOGD(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @TAG, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i32, i8*, i64, ...) @ESP_LOGD(i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %55, i64 %58)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  switch i64 %62, label %128 [
    i64 129, label %63
    i64 128, label %111
  ]

63:                                               ; preds = %43
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  switch i64 %66, label %81 [
    i64 131, label %67
    i64 130, label %74
  ]

67:                                               ; preds = %63
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = bitcast %struct.TYPE_8__* %69 to i8*
  %73 = bitcast %struct.TYPE_8__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 8, i1 false)
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %110

74:                                               ; preds = %63
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = bitcast %struct.TYPE_8__* %76 to i8*
  %80 = bitcast %struct.TYPE_8__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 8, i1 false)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %110

81:                                               ; preds = %63
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PART_SUBTYPE_OTA_MASK, align 8
  %86 = xor i64 %85, -1
  %87 = and i64 %84, %86
  %88 = load i64, i64* @PART_SUBTYPE_OTA_FLAG, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %81
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PART_SUBTYPE_OTA_MASK, align 8
  %98 = and i64 %96, %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %98
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = bitcast %struct.TYPE_8__* %99 to i8*
  %103 = bitcast %struct.TYPE_8__* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 8 %103, i64 8, i1 false)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %109

108:                                              ; preds = %81
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %109

109:                                              ; preds = %108, %90
  br label %110

110:                                              ; preds = %109, %74, %67
  br label %129

111:                                              ; preds = %43
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  switch i64 %114, label %126 [
    i64 134, label %115
    i64 133, label %122
    i64 132, label %123
    i64 135, label %124
    i64 136, label %125
  ]

115:                                              ; preds = %111
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = bitcast %struct.TYPE_8__* %117 to i8*
  %121 = bitcast %struct.TYPE_8__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 8, i1 false)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  br label %127

122:                                              ; preds = %111
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %5, align 8
  br label %127

123:                                              ; preds = %111
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %5, align 8
  br label %127

124:                                              ; preds = %111
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8** %5, align 8
  br label %127

125:                                              ; preds = %111
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** %5, align 8
  br label %127

126:                                              ; preds = %111
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8** %5, align 8
  br label %127

127:                                              ; preds = %126, %125, %124, %123, %122, %115
  br label %129

128:                                              ; preds = %43
  br label %129

129:                                              ; preds = %128, %127, %110
  %130 = load i32, i32* @TAG, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i32 %131, i32 %134, i8* %135, i64 %138, i64 %141, i32 %145, i32 %149)
  br label %151

151:                                              ; preds = %129
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %39

154:                                              ; preds = %39
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = call i32 @bootloader_munmap(%struct.TYPE_9__* %155)
  %157 = load i32, i32* @TAG, align 4
  %158 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %159

159:                                              ; preds = %154, %31, %15
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_9__* @bootloader_mmap(i64, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i64, ...) #1

declare dso_local i64 @esp_partition_table_verify(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bootloader_munmap(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
