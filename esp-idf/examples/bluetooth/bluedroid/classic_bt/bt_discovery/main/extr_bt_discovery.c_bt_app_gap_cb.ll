; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_discovery/main/extr_bt_discovery.c_bt_app_gap_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/bt_discovery/main/extr_bt_discovery.c_bt_app_gap_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@m_dev_info = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@ESP_BT_GAP_DISCOVERY_STOPPED = common dso_local global i32 0, align 4
@GAP_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Device discovery stopped.\00", align 1
@APP_GAP_STATE_DEVICE_DISCOVER_COMPLETE = common dso_local global i32 0, align 4
@APP_GAP_STATE_DEVICE_DISCOVERING = common dso_local global i32 0, align 4
@APP_GAP_STATE_SERVICE_DISCOVERING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Discover services ...\00", align 1
@ESP_BT_GAP_DISCOVERY_STARTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Discovery started.\00", align 1
@ESP_BD_ADDR_LEN = common dso_local global i32 0, align 4
@APP_GAP_STATE_SERVICE_DISCOVER_COMPLETE = common dso_local global i32 0, align 4
@ESP_BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Services for device %s found\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Services for device %s not found\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"event: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bt_app_gap_cb(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca [18 x i8], align 16
  %7 = alloca [37 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* @m_dev_info, %struct.TYPE_11__** %5, align 8
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %134 [
    i32 131, label %11
    i32 130, label %14
    i32 129, label %63
    i32 128, label %133
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = call i32 @update_device_info(%struct.TYPE_10__* %12)
  br label %138

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ESP_BT_GAP_DISCOVERY_STOPPED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %14
  %22 = load i32, i32* @GAP_TAG, align 4
  %23 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @APP_GAP_STATE_DEVICE_DISCOVER_COMPLETE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @APP_GAP_STATE_DEVICE_DISCOVERING, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29, %21
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* @APP_GAP_STATE_SERVICE_DISCOVERING, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @GAP_TAG, align 4
  %45 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @esp_bt_gap_get_remote_services(i32 %48)
  br label %50

50:                                               ; preds = %40, %35, %29
  br label %62

51:                                               ; preds = %14
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ESP_BT_GAP_DISCOVERY_STARTED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @GAP_TAG, align 4
  %60 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %51
  br label %62

62:                                               ; preds = %61, %50
  br label %138

63:                                               ; preds = %2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %72 = call i32 @memcmp(i32 %67, i32 %70, i32 %71)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %132

74:                                               ; preds = %63
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @APP_GAP_STATE_SERVICE_DISCOVERING, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %132

80:                                               ; preds = %74
  %81 = load i32, i32* @APP_GAP_STATE_SERVICE_DISCOVER_COMPLETE, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ESP_BT_STATUS_SUCCESS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %123

90:                                               ; preds = %80
  %91 = load i32, i32* @GAP_TAG, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  %96 = call i32 @bda2str(i32 %94, i8* %95, i32 18)
  %97 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %119, %90
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %98
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i32*
  store i32* %113, i32** %9, align 8
  %114 = load i32, i32* @GAP_TAG, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = getelementptr inbounds [37 x i8], [37 x i8]* %7, i64 0, i64 0
  %117 = call i32 @uuid2str(i32* %115, i8* %116, i32 37)
  %118 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %105
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %98

122:                                              ; preds = %98
  br label %131

123:                                              ; preds = %80
  %124 = load i32, i32* @GAP_TAG, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [18 x i8], [18 x i8]* %6, i64 0, i64 0
  %129 = call i32 @bda2str(i32 %127, i8* %128, i32 18)
  %130 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %124, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %123, %122
  br label %132

132:                                              ; preds = %131, %74, %63
  br label %138

133:                                              ; preds = %2
  br label %134

134:                                              ; preds = %2, %133
  %135 = load i32, i32* @GAP_TAG, align 4
  %136 = load i32, i32* %3, align 4
  %137 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %132, %62, %11
  ret void
}

declare dso_local i32 @update_device_info(%struct.TYPE_10__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_bt_gap_get_remote_services(i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @bda2str(i32, i8*, i32) #1

declare dso_local i32 @uuid2str(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
