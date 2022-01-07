; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_esp_spiffs_format.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spiffs/extr_esp_spiffs.c_esp_spiffs_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8*, i32 }

@ESP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"failed to get index of the partition just mounted\00", align 1
@_efs = common dso_local global %struct.TYPE_6__** null, align 8
@SPIFFS_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"format failed, %i\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@spiffs_api_check = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"mount failed, %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_spiffs_format(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @esp_spiffs_by_label(i8* %9, i32* %5)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @ESP_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 1, i32* %18, align 8
  %19 = call i64 @esp_spiffs_init(%struct.TYPE_5__* %7)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @ESP_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i64, i64* %6, align 8
  store i64 %24, i64* %2, align 8
  br label %183

25:                                               ; preds = %14
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @esp_spiffs_by_label(i8* %26, i32* %5)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @ESP_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i1 [ false, %25 ], [ true, %31 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  br label %48

36:                                               ; preds = %1
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @SPIFFS_mounted(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %36
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %49, i64 %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @SPIFFS_unmount(i32 %55)
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %57, i64 %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @SPIFFS_format(i32 %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @SPIFFS_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %48
  %69 = load i32, i32* @TAG, align 4
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %70, i64 %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @SPIFFS_errno(i32 %76)
  %78 = call i32 @ESP_LOGE(i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %79, i64 %81
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @SPIFFS_clearerr(i32 %85)
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %68
  %90 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %90, i64 %92
  %94 = call i32 @esp_spiffs_free(%struct.TYPE_6__** %93)
  br label %95

95:                                               ; preds = %89, %68
  %96 = load i64, i64* @ESP_FAIL, align 8
  store i64 %96, i64* %2, align 8
  br label %183

97:                                               ; preds = %48
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %175

100:                                              ; preds = %97
  %101 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %101, i64 %103
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %108, i64 %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 6
  %114 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %114, i64 %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %121, i64 %123
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %128, i64 %130
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %135, i64 %137
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %142, i64 %144
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @spiffs_api_check, align 4
  %150 = call i64 @SPIFFS_mount(i32 %107, i32* %113, i32 %120, i32 %127, i32 %134, i32 %141, i32 %148, i32 %149)
  store i64 %150, i64* %8, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* @SPIFFS_OK, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %174

154:                                              ; preds = %100
  %155 = load i32, i32* @TAG, align 4
  %156 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %156, i64 %158
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @SPIFFS_errno(i32 %162)
  %164 = call i32 @ESP_LOGE(i32 %155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %165, i64 %167
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @SPIFFS_clearerr(i32 %171)
  %173 = load i64, i64* @ESP_FAIL, align 8
  store i64 %173, i64* %2, align 8
  br label %183

174:                                              ; preds = %100
  br label %181

175:                                              ; preds = %97
  %176 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @_efs, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %176, i64 %178
  %180 = call i32 @esp_spiffs_free(%struct.TYPE_6__** %179)
  br label %181

181:                                              ; preds = %175, %174
  %182 = load i64, i64* @ESP_OK, align 8
  store i64 %182, i64* %2, align 8
  br label %183

183:                                              ; preds = %181, %154, %95, %23
  %184 = load i64, i64* %2, align 8
  ret i64 %184
}

declare dso_local i64 @esp_spiffs_by_label(i8*, i32*) #1

declare dso_local i64 @esp_spiffs_init(%struct.TYPE_5__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @SPIFFS_mounted(i32) #1

declare dso_local i32 @SPIFFS_unmount(i32) #1

declare dso_local i64 @SPIFFS_format(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @SPIFFS_errno(i32) #1

declare dso_local i32 @SPIFFS_clearerr(i32) #1

declare dso_local i32 @esp_spiffs_free(%struct.TYPE_6__**) #1

declare dso_local i64 @SPIFFS_mount(i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
