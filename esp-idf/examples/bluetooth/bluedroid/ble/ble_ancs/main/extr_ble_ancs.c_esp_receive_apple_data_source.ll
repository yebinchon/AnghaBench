; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_ancs/main/extr_ble_ancs.c_esp_receive_apple_data_source.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_ancs/main/extr_ble_ancs.c_esp_receive_apple_data_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLE_ANCS_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"recevice Notification Attributes response Command_id %d NotificationUID %d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"data error\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Identifier\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Subtitle\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Message\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"MessageSize\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"PActionLabel\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"NActionLabel\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"unknownAttributeID\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"recevice APP Attributes response\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"recevice Perform Notification Action\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"unknown Command ID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_receive_apple_data_source(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %142

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %139 [
    i32 137, label %22
    i32 138, label %133
    i32 136, label %136
  ]

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %25, %29
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %30, %34
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 24
  %40 = or i32 %35, %39
  store i32 %40, i32* %6, align 4
  %41 = load i64, i64* %4, align 8
  %42 = sub nsw i64 %41, 5
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  store i32* %45, i32** %8, align 8
  %46 = load i32, i32* @BLE_ANCS_TAG, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %46, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %121, %22
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %132

53:                                               ; preds = %50
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %59, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %67, 3
  %69 = sext i32 %68 to i64
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %53
  %72 = load i32, i32* @BLE_ANCS_TAG, align 4
  %73 = call i32 @ESP_LOGE(i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %132

74:                                               ; preds = %53
  %75 = load i32, i32* %9, align 4
  switch i32 %75, label %116 [
    i32 135, label %76
    i32 128, label %81
    i32 129, label %86
    i32 133, label %91
    i32 132, label %96
    i32 134, label %101
    i32 130, label %106
    i32 131, label %111
  ]

76:                                               ; preds = %74
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @esp_log_buffer_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %78, i64 %79)
  br label %121

81:                                               ; preds = %74
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @esp_log_buffer_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %83, i64 %84)
  br label %121

86:                                               ; preds = %74
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @esp_log_buffer_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %88, i64 %89)
  br label %121

91:                                               ; preds = %74
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @esp_log_buffer_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %93, i64 %94)
  br label %121

96:                                               ; preds = %74
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @esp_log_buffer_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %98, i64 %99)
  br label %121

101:                                              ; preds = %74
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @esp_log_buffer_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %103, i64 %104)
  br label %121

106:                                              ; preds = %74
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  %109 = load i64, i64* %10, align 8
  %110 = call i32 @esp_log_buffer_hex(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* %108, i64 %109)
  br label %121

111:                                              ; preds = %74
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @esp_log_buffer_hex(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32* %113, i64 %114)
  br label %121

116:                                              ; preds = %74
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @esp_log_buffer_hex(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32* %118, i64 %119)
  br label %121

121:                                              ; preds = %116, %111, %106, %101, %96, %91, %86, %81, %76
  %122 = load i64, i64* %10, align 8
  %123 = add nsw i64 3, %122
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 %123
  store i32* %125, i32** %8, align 8
  %126 = load i64, i64* %10, align 8
  %127 = add nsw i64 3, %126
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = sub nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %7, align 4
  br label %50

132:                                              ; preds = %71, %50
  br label %142

133:                                              ; preds = %17
  %134 = load i32, i32* @BLE_ANCS_TAG, align 4
  %135 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %142

136:                                              ; preds = %17
  %137 = load i32, i32* @BLE_ANCS_TAG, align 4
  %138 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %137, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %142

139:                                              ; preds = %17
  %140 = load i32, i32* @BLE_ANCS_TAG, align 4
  %141 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %140, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %142

142:                                              ; preds = %16, %139, %136, %133, %132
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_log_buffer_char(i8*, i32*, i64) #1

declare dso_local i32 @esp_log_buffer_hex(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
