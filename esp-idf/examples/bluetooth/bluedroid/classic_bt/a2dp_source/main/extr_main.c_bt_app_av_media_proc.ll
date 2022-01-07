; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_source/main/extr_main.c_bt_app_av_media_proc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/classic_bt/a2dp_source/main/extr_main.c_bt_app_av_media_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@s_media_state = common dso_local global i32 0, align 4
@BT_APP_HEART_BEAT_EVT = common dso_local global i32 0, align 4
@BT_AV_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"a2dp media ready checking ...\00", align 1
@ESP_A2D_MEDIA_CTRL_CHECK_SRC_RDY = common dso_local global i32 0, align 4
@ESP_A2D_MEDIA_CTRL_ACK_EVT = common dso_local global i32 0, align 4
@ESP_A2D_MEDIA_CTRL_ACK_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"a2dp media ready, starting ...\00", align 1
@ESP_A2D_MEDIA_CTRL_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"a2dp media start successfully.\00", align 1
@s_intv_cnt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"a2dp media start failed.\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"a2dp media stopping...\00", align 1
@ESP_A2D_MEDIA_CTRL_STOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"a2dp media stopped successfully, disconnecting...\00", align 1
@s_peer_bda = common dso_local global i32 0, align 4
@APP_AV_STATE_DISCONNECTING = common dso_local global i32 0, align 4
@s_a2d_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @bt_app_av_media_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt_app_av_media_proc(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %6 = load i32, i32* @s_media_state, align 4
  switch i32 %6, label %120 [
    i32 131, label %7
    i32 129, label %44
    i32 130, label %72
    i32 128, label %87
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BT_APP_HEART_BEAT_EVT, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i32, i32* @BT_AV_TAG, align 4
  %13 = call i32 @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ESP_A2D_MEDIA_CTRL_CHECK_SRC_RDY, align 4
  %15 = call i32 @esp_a2d_media_ctrl(i32 %14)
  br label %43

16:                                               ; preds = %7
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ESP_A2D_MEDIA_CTRL_ACK_EVT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %5, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ESP_A2D_MEDIA_CTRL_CHECK_SRC_RDY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %20
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ESP_A2D_MEDIA_CTRL_ACK_SUCCESS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* @BT_AV_TAG, align 4
  %38 = call i32 @ESP_LOGI(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ESP_A2D_MEDIA_CTRL_START, align 4
  %40 = call i32 @esp_a2d_media_ctrl(i32 %39)
  store i32 129, i32* @s_media_state, align 4
  br label %41

41:                                               ; preds = %36, %29, %20
  br label %42

42:                                               ; preds = %41, %16
  br label %43

43:                                               ; preds = %42, %11
  br label %120

44:                                               ; preds = %2
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @ESP_A2D_MEDIA_CTRL_ACK_EVT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = bitcast i8* %49 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %5, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ESP_A2D_MEDIA_CTRL_START, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ESP_A2D_MEDIA_CTRL_ACK_SUCCESS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @BT_AV_TAG, align 4
  %66 = call i32 @ESP_LOGI(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* @s_intv_cnt, align 4
  store i32 130, i32* @s_media_state, align 4
  br label %70

67:                                               ; preds = %57, %48
  %68 = load i32, i32* @BT_AV_TAG, align 4
  %69 = call i32 @ESP_LOGI(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 131, i32* @s_media_state, align 4
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %44
  br label %120

72:                                               ; preds = %2
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @BT_APP_HEART_BEAT_EVT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = load i32, i32* @s_intv_cnt, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @s_intv_cnt, align 4
  %79 = icmp sge i32 %78, 10
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* @BT_AV_TAG, align 4
  %82 = call i32 @ESP_LOGI(i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* @ESP_A2D_MEDIA_CTRL_STOP, align 4
  %84 = call i32 @esp_a2d_media_ctrl(i32 %83)
  store i32 128, i32* @s_media_state, align 4
  store i32 0, i32* @s_intv_cnt, align 4
  br label %85

85:                                               ; preds = %80, %76
  br label %86

86:                                               ; preds = %85, %72
  br label %120

87:                                               ; preds = %2
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @ESP_A2D_MEDIA_CTRL_ACK_EVT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %87
  %92 = load i8*, i8** %4, align 8
  %93 = bitcast i8* %92 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %93, %struct.TYPE_4__** %5, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ESP_A2D_MEDIA_CTRL_STOP, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %91
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ESP_A2D_MEDIA_CTRL_ACK_SUCCESS, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* @BT_AV_TAG, align 4
  %109 = call i32 @ESP_LOGI(i32 %108, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  store i32 131, i32* @s_media_state, align 4
  %110 = load i32, i32* @s_peer_bda, align 4
  %111 = call i32 @esp_a2d_source_disconnect(i32 %110)
  %112 = load i32, i32* @APP_AV_STATE_DISCONNECTING, align 4
  store i32 %112, i32* @s_a2d_state, align 4
  br label %118

113:                                              ; preds = %100, %91
  %114 = load i32, i32* @BT_AV_TAG, align 4
  %115 = call i32 @ESP_LOGI(i32 %114, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %116 = load i32, i32* @ESP_A2D_MEDIA_CTRL_STOP, align 4
  %117 = call i32 @esp_a2d_media_ctrl(i32 %116)
  br label %118

118:                                              ; preds = %113, %107
  br label %119

119:                                              ; preds = %118, %87
  br label %120

120:                                              ; preds = %2, %119, %86, %71, %43
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_a2d_media_ctrl(i32) #1

declare dso_local i32 @esp_a2d_source_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
