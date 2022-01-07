; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_master.c_spi_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_spi_master.c_spi_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i32, i32 }

@MALLOC_CAP_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Transmitting %d bytes...\0A\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Huh? Sendbuf corrupted at byte %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Error at %d! Sent vs recved: (starting from %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Success!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @spi_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_test(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @srand(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 3
  %18 = and i32 %17, -4
  %19 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %20 = call i8* @heap_caps_malloc(i32 %18, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 3
  %23 = and i32 %22, -4
  %24 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %25 = call i8* @heap_caps_malloc(i32 %23, i32 %24)
  store i8* %25, i8** %9, align 8
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %42, %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = call i32 (...) @rand()
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 %33, i8* %37, align 1
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8 85, i8* %41, align 1
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %26

45:                                               ; preds = %26
  %46 = call i32 @memset(%struct.TYPE_4__* %10, i32 0, i32 32)
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 %47, 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32 15, i32* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  store i32 85, i32* %55, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = call i64 @spi_device_transmit(i32 %58, %struct.TYPE_4__* %10)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @ESP_OK, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @TEST_ASSERT(i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @srand(i32 %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %101, %45
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %67
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = call i32 (...) @rand()
  %79 = and i32 %78, 255
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = call i32 @TEST_ASSERT(i32 0)
  br label %85

85:                                               ; preds = %81, %71
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %91, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %104

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %67

104:                                              ; preds = %99, %67
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %168

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %109, 16
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %113, %108
  store i32 0, i32* %7, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %116)
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %138, %114
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %119, 32
  br i1 %120, label %121, label %141

121:                                              ; preds = %118
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %4, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load i8*, i8** %8, align 8
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %128, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %127, %121
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %118

141:                                              ; preds = %118
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %143

143:                                              ; preds = %163, %141
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %144, 32
  br i1 %145, label %146, label %166

146:                                              ; preds = %143
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %4, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %146
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %153, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %152, %146
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %143

166:                                              ; preds = %143
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %104
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %168
  %174 = load i8*, i8** %8, align 8
  %175 = call i32 @free(i8* %174)
  %176 = load i8*, i8** %9, align 8
  %177 = call i32 @free(i8* %176)
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local i32 @srand(i32) #1

declare dso_local i8* @heap_caps_malloc(i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @spi_device_transmit(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
