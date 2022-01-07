; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_partition.c_load_partitions.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_partition.c_load_partitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32, i64*, i32, i32, i32 }

@ESP_PARTITION_TABLE_OFFSET = common dso_local global i32 0, align 4
@SPI_FLASH_SEC_SIZE = common dso_local global i32 0, align 4
@SPI_FLASH_MMAP_DATA = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@ESP_PARTITION_MAGIC = common dso_local global i64 0, align 8
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@esp_flash_default_chip = common dso_local global i32 0, align 4
@PART_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@PART_TYPE_APP = common dso_local global i64 0, align 8
@PART_TYPE_DATA = common dso_local global i64 0, align 8
@PART_SUBTYPE_DATA_OTA = common dso_local global i64 0, align 8
@PART_SUBTYPE_DATA_NVS_KEYS = common dso_local global i64 0, align 8
@s_partition_list = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @load_partitions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_partitions() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = load i32, i32* @ESP_PARTITION_TABLE_OFFSET, align 4
  %10 = and i32 %9, -65536
  %11 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %12 = load i32, i32* @SPI_FLASH_MMAP_DATA, align 4
  %13 = bitcast i32** %2 to i8**
  %14 = call i64 @spi_flash_mmap(i32 %10, i32 %11, i32 %12, i8** %13, i32* %3)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @ESP_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %1, align 8
  br label %168

20:                                               ; preds = %0
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @ESP_PARTITION_TABLE_OFFSET, align 4
  %23 = and i32 %22, 65535
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = bitcast i32* %26 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %5, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = load i32, i32* @SPI_FLASH_SEC_SIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 48
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 %31
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  br label %33

33:                                               ; preds = %161, %20
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = icmp ne %struct.TYPE_11__* %34, %35
  br i1 %36, label %37, label %164

37:                                               ; preds = %33
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ESP_PARTITION_MAGIC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %164

44:                                               ; preds = %37
  %45 = call i64 @calloc(i32 56, i32 1)
  %46 = inttoptr i64 %45 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %8, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = icmp eq %struct.TYPE_10__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %50, i64* %4, align 8
  br label %164

51:                                               ; preds = %44
  %52 = load i32, i32* @esp_flash_default_chip, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 6
  store i32 %52, i32* %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 5
  store i32 %59, i32* %62, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i64 %78, i64* %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PART_FLAG_ENCRYPTED, align 4
  %86 = and i32 %84, %85
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = call i32 (...) @esp_flash_encryption_enabled()
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %51
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  store i32 0, i32* %97, align 8
  br label %133

98:                                               ; preds = %51
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PART_TYPE_APP, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %128, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PART_TYPE_DATA, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PART_SUBTYPE_DATA_OTA, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %128, label %116

116:                                              ; preds = %110, %104
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @PART_TYPE_DATA, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %116
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @PART_SUBTYPE_DATA_NVS_KEYS, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122, %110, %98
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  store i32 1, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %122, %116
  br label %133

133:                                              ; preds = %132, %94
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 3
  %137 = load i64*, i64** %136, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 @strncpy(i64* %137, i8* %141, i32 7)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 8
  store i64 0, i64* %147, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %149 = icmp eq %struct.TYPE_10__* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %133
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %152 = load i32, i32* @next, align 4
  %153 = call i32 @SLIST_INSERT_HEAD(i32* @s_partition_list, %struct.TYPE_10__* %151, i32 %152)
  br label %159

154:                                              ; preds = %133
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %157 = load i32, i32* @next, align 4
  %158 = call i32 @SLIST_INSERT_AFTER(%struct.TYPE_10__* %155, %struct.TYPE_10__* %156, i32 %157)
  br label %159

159:                                              ; preds = %154, %150
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %160, %struct.TYPE_10__** %7, align 8
  br label %161

161:                                              ; preds = %159
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 1
  store %struct.TYPE_11__* %163, %struct.TYPE_11__** %5, align 8
  br label %33

164:                                              ; preds = %49, %43, %33
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @spi_flash_munmap(i32 %165)
  %167 = load i64, i64* %4, align 8
  store i64 %167, i64* %1, align 8
  br label %168

168:                                              ; preds = %164, %18
  %169 = load i64, i64* %1, align 8
  ret i64 %169
}

declare dso_local i64 @spi_flash_mmap(i32, i32, i32, i8**, i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @esp_flash_encryption_enabled(...) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @SLIST_INSERT_AFTER(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @spi_flash_munmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
