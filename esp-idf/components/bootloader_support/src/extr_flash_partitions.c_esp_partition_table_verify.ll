; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_flash_partitions.c_esp_partition_table_verify.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_flash_partitions.c_esp_partition_table_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.MD5Context = type { i32 }

@g_rom_flashchip = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ESP_PARTITION_TABLE_MAX_ENTRIES = common dso_local global i32 0, align 4
@ESP_PARTITION_MAGIC = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"partition %d invalid - offset 0x%x size 0x%x exceeds flash chip size 0x%x\00", align 1
@ESP_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@ESP_PARTITION_MAGIC_MD5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Only one MD5 checksum is allowed\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Incorrect MD5 checksum\00", align 1
@PART_TYPE_END = common dso_local global i64 0, align 8
@PART_SUBTYPE_END = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"partition table verified, %d entries\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"partition %d invalid magic number 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"partition table has no terminating entry, not valid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_partition_table_verify(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.MD5Context, align 4
  %14 = alloca [16 x i8], align 16
  %15 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_rom_flashchip, i32 0, i32 0), align 8
  store i64 %16, i64* %10, align 8
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %151, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @ESP_PARTITION_TABLE_MAX_ENTRIES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %154

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %11, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ESP_PARTITION_MAGIC, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %22
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %12, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load i64, i64* %10, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %40, %32
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load i32, i32* @TAG, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %54, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %58, i64 %61, i64 %62)
  br label %64

64:                                               ; preds = %53, %50
  %65 = load i32, i32* @ESP_ERR_INVALID_SIZE, align 4
  store i32 %65, i32* %4, align 4
  br label %162

66:                                               ; preds = %40
  br label %150

67:                                               ; preds = %22
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ESP_PARTITION_MAGIC_MD5, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %111

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @TAG, align 4
  %81 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %83, i32* %4, align 4
  br label %162

84:                                               ; preds = %73
  %85 = call i32 @MD5Init(%struct.MD5Context* %13)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = bitcast %struct.TYPE_6__* %86 to i8*
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 40
  %91 = trunc i64 %90 to i32
  %92 = call i32 @MD5Update(%struct.MD5Context* %13, i8* %87, i32 %91)
  %93 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %94 = call i32 @MD5Final(i8* %93, %struct.MD5Context* %13)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %96 = bitcast %struct.TYPE_6__* %95 to i8*
  %97 = getelementptr inbounds i8, i8* %96, i64 16
  store i8* %97, i8** %15, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %100 = call i64 @memcmp(i8* %98, i8* %99, i32 16)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %84
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @TAG, align 4
  %107 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %109, i32* %4, align 4
  br label %162

110:                                              ; preds = %84
  store i32 1, i32* %8, align 4
  br label %149

111:                                              ; preds = %67
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 65535
  br i1 %115, label %116, label %137

116:                                              ; preds = %111
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @PART_TYPE_END, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %116
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @PART_SUBTYPE_END, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load i32, i32* @TAG, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @ESP_LOGD(i32 %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %8, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load i32*, i32** %7, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* @ESP_OK, align 4
  store i32 %136, i32* %4, align 4
  br label %162

137:                                              ; preds = %122, %116, %111
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32, i32* @TAG, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %141, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %140, %137
  %148 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %148, i32* %4, align 4
  br label %162

149:                                              ; preds = %110
  br label %150

150:                                              ; preds = %149, %66
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %18

154:                                              ; preds = %18
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* @TAG, align 4
  %159 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %158, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %154
  %161 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %160, %147, %128, %108, %82, %64
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @MD5Init(%struct.MD5Context*) #1

declare dso_local i32 @MD5Update(%struct.MD5Context*, i8*, i32) #1

declare dso_local i32 @MD5Final(i8*, %struct.MD5Context*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
