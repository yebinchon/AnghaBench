; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_esp_image_format.c_process_segment.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_esp_image_format.c_process_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bootloader_flash_read failed at 0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"segment data length 0x%x data starts 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unaligned segment length 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"segment %d: paddr=0x%08x vaddr=0x%08x size=0x%05x (%6d) %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"free data page_count 0x%08x\00", align 1
@MMAP_ALIGNED_MASK = common dso_local global i32 0, align 4
@SPI_FLASH_MMU_PAGE_SIZE = common dso_local global i32 0, align 4
@ESP_ERR_IMAGE_INVALID = common dso_local global i64 0, align 8
@SOC_DRAM_HIGH = common dso_local global i64 0, align 8
@STACK_LOAD_HEADROOM = common dso_local global i64 0, align 8
@_loader_text_end = common dso_local global i32 0, align 4
@_loader_text_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.TYPE_6__*, i32, i32, i32*, i32*)* @process_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @process_segment(i32 %0, i32 %1, %struct.TYPE_6__* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %26 = call i64 @bootloader_flash_read(i32 %24, %struct.TYPE_6__* %25, i32 16, i32 1)
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* @ESP_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %7
  %31 = load i32, i32* @TAG, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 (i32, i8*, i32, ...) @ESP_LOGE(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* %16, align 8
  store i64 %34, i64* %8, align 8
  br label %160

35:                                               ; preds = %7
  %36 = load i32*, i32** %14, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32*, i32** %14, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %41 = call i32 @bootloader_sha256_data(i32* %39, %struct.TYPE_6__* %40, i32 16)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %17, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 16
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* @TAG, align 4
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @ESP_LOGV(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i64 @verify_segment_header(i32 %57, %struct.TYPE_6__* %58, i32 %59, i32 %60)
  store i64 %61, i64* %16, align 8
  %62 = load i64, i64* %16, align 8
  %63 = load i64, i64* @ESP_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %42
  %66 = load i64, i64* %16, align 8
  store i64 %66, i64* %8, align 8
  br label %160

67:                                               ; preds = %42
  %68 = load i32, i32* %18, align 4
  %69 = srem i32 %68, 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @FAIL_LOAD(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i64, i64* %17, align 8
  %76 = call i32 @should_map(i64 %75)
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i64, i64* %17, align 8
  %81 = call i64 @should_load(i64 %80)
  %82 = icmp ne i64 %81, 0
  br label %83

83:                                               ; preds = %79, %74
  %84 = phi i1 [ false, %74 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %106, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @TAG, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i64, i64* %17, align 8
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %103

98:                                               ; preds = %88
  %99 = load i32, i32* %20, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  br label %103

103:                                              ; preds = %98, %97
  %104 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %97 ], [ %102, %98 ]
  %105 = call i32 @ESP_LOGI(i32 %89, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %91, i64 %92, i32 %93, i32 %94, i8* %104)
  br label %106

106:                                              ; preds = %103, %83
  %107 = call i32 (...) @bootloader_mmap_get_free_pages()
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* @TAG, align 4
  %109 = load i32, i32* %21, align 4
  %110 = call i32 @ESP_LOGD(i32 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %22, align 8
  br label %113

113:                                              ; preds = %142, %106
  %114 = load i64, i64* %22, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %150

116:                                              ; preds = %113
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* @MMAP_ALIGNED_MASK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 1, i32 0
  store i32 %122, i32* %23, align 4
  %123 = load i64, i64* %22, align 8
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* %23, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load i32, i32* @SPI_FLASH_MMU_PAGE_SIZE, align 4
  %128 = mul nsw i32 %126, %127
  %129 = call i32 @MIN(i64 %123, i32 %128)
  store i32 %129, i32* %18, align 4
  %130 = load i64, i64* %17, align 8
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32*, i32** %14, align 8
  %135 = load i32*, i32** %15, align 8
  %136 = call i64 @process_segment_data(i64 %130, i32 %131, i32 %132, i32 %133, i32* %134, i32* %135)
  store i64 %136, i64* %16, align 8
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* @ESP_OK, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %116
  %141 = load i64, i64* %16, align 8
  store i64 %141, i64* %8, align 8
  br label %160

142:                                              ; preds = %116
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %22, align 8
  %149 = sub nsw i64 %148, %147
  store i64 %149, i64* %22, align 8
  br label %113

150:                                              ; preds = %113
  %151 = load i64, i64* @ESP_OK, align 8
  store i64 %151, i64* %8, align 8
  br label %160

152:                                              ; No predecessors!
  %153 = load i64, i64* %16, align 8
  %154 = load i64, i64* @ESP_OK, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i64, i64* @ESP_ERR_IMAGE_INVALID, align 8
  store i64 %157, i64* %16, align 8
  br label %158

158:                                              ; preds = %156, %152
  %159 = load i64, i64* %16, align 8
  store i64 %159, i64* %8, align 8
  br label %160

160:                                              ; preds = %158, %150, %140, %65, %30
  %161 = load i64, i64* %8, align 8
  ret i64 %161
}

declare dso_local i64 @bootloader_flash_read(i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, ...) #1

declare dso_local i32 @bootloader_sha256_data(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ESP_LOGV(i32, i8*, i32, i32) #1

declare dso_local i64 @verify_segment_header(i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @FAIL_LOAD(i8*, i32) #1

declare dso_local i32 @should_map(i64) #1

declare dso_local i64 @should_load(i64) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32, i64, i32, i32, i8*) #1

declare dso_local i32 @bootloader_mmap_get_free_pages(...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i64 @process_segment_data(i64, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
