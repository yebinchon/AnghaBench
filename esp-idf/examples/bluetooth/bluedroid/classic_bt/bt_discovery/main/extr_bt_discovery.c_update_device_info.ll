; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_discovery/main/extr_bt_discovery.c_update_device_info.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_discovery/main/extr_bt_discovery.c_update_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8*, i64, i8*, i64, i32, i8*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i64 }

@GAP_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Device found: %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"--Class of Device: 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--RSSI: %d\00", align 1
@m_dev_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ESP_BD_ADDR_LEN = common dso_local global i64 0, align 8
@ESP_BT_COD_MAJOR_DEV_PHONE = common dso_local global i64 0, align 8
@ESP_BT_GAP_MAX_BDNAME_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Found a target device, address %s, name %s\00", align 1
@APP_GAP_STATE_DEVICE_DISCOVER_COMPLETE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Cancel device discovery ...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @update_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_device_info(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca [18 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 -129, i32* %5, align 4
  %11 = load i32, i32* @GAP_TAG, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 0
  %17 = call i32 @bda2str(i64* %15, i8* %16, i32 18)
  %18 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %59, %1
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %19
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i64 %32
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %6, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %57 [
    i32 130, label %37
    i32 128, label %46
    i32 131, label %56
  ]

37:                                               ; preds = %26
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @GAP_TAG, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %58

46:                                               ; preds = %26
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8**
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @GAP_TAG, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %58

56:                                               ; preds = %26
  br label %57

57:                                               ; preds = %26, %56
  br label %58

58:                                               ; preds = %57, %46, %37
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %19

62:                                               ; preds = %19
  store %struct.TYPE_10__* @m_dev_info, %struct.TYPE_10__** %8, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* @ESP_BD_ADDR_LEN, align 8
  %76 = call i64 @memcmp(i64* %71, i8* %74, i64 %75)
  %77 = icmp ne i64 0, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %220

79:                                               ; preds = %67, %62
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @esp_bt_gap_is_valid_cod(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* %4, align 4
  %85 = call i64 @esp_bt_gap_get_cod_major_dev(i32 %84)
  %86 = load i64, i64* @ESP_BT_COD_MAJOR_DEV_PHONE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %89, label %88

88:                                               ; preds = %83, %79
  br label %220

89:                                               ; preds = %83
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @ESP_BD_ADDR_LEN, align 8
  %98 = call i32 @memcpy(i8* %92, i64* %96, i64 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %185, %89
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %102, %106
  br i1 %107, label %108, label %188

108:                                              ; preds = %101
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %114
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %6, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %183 [
    i32 130, label %119
    i32 128, label %127
    i32 131, label %135
    i32 129, label %166
  ]

119:                                              ; preds = %108
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 8
  br label %184

127:                                              ; preds = %108
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i8**
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 7
  store i8* %132, i8** %134, align 8
  br label %184

135:                                              ; preds = %108
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @ESP_BT_GAP_MAX_BDNAME_LEN, align 8
  %140 = icmp ugt i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i64, i64* @ESP_BT_GAP_MAX_BDNAME_LEN, align 8
  br label %147

143:                                              ; preds = %135
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  br label %147

147:                                              ; preds = %143, %141
  %148 = phi i64 [ %142, %141 ], [ %146, %143 ]
  store i64 %148, i64* %10, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i64*
  %156 = load i64, i64* %10, align 8
  %157 = call i32 @memcpy(i8* %151, i64* %155, i64 %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = load i64, i64* %10, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8 0, i8* %162, align 1
  %163 = load i64, i64* %10, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 3
  store i64 %163, i64* %165, align 8
  br label %184

166:                                              ; preds = %108
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 4
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to i64*
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @memcpy(i8* %169, i64* %173, i64 %176)
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 5
  store i64 %180, i64* %182, align 8
  br label %184

183:                                              ; preds = %108
  br label %184

184:                                              ; preds = %183, %166, %147, %127, %119
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %101

188:                                              ; preds = %101
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 4
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %220

193:                                              ; preds = %188
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %220

198:                                              ; preds = %193
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 4
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 3
  %207 = call i32 @get_name_from_eir(i8* %201, i8* %204, i64* %206)
  %208 = load i32, i32* @GAP_TAG, align 4
  %209 = getelementptr inbounds [18 x i8], [18 x i8]* %3, i64 0, i64 0
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 2
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %208, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %209, i8* %212)
  %214 = load i32, i32* @APP_GAP_STATE_DEVICE_DISCOVER_COMPLETE, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 6
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* @GAP_TAG, align 4
  %218 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %217, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %219 = call i32 (...) @esp_bt_gap_cancel_discovery()
  br label %220

220:                                              ; preds = %78, %88, %198, %193, %188
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @bda2str(i64*, i8*, i32) #1

declare dso_local i64 @memcmp(i64*, i8*, i64) #1

declare dso_local i32 @esp_bt_gap_is_valid_cod(i32) #1

declare dso_local i64 @esp_bt_gap_get_cod_major_dev(i32) #1

declare dso_local i32 @memcpy(i8*, i64*, i64) #1

declare dso_local i32 @get_name_from_eir(i8*, i8*, i64*) #1

declare dso_local i32 @esp_bt_gap_cancel_discovery(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
