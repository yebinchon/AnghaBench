; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_smartconfig_ack.c_sc_ack_send_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_smartconfig_ack.c_sc_ack_send_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.sockaddr_in = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr = type { i32 }

@SC_TYPE_ESPTOUCH = common dso_local global i64 0, align 8
@SC_ACK_TOUCH_SERVER_PORT = common dso_local global i32 0, align 4
@SC_ACK_AIRKISS_SERVER_PORT = common dso_local global i32 0, align 4
@SC_ACK_TOUCH_LEN = common dso_local global i32 0, align 4
@SC_ACK_AIRKISS_LEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@WIFI_IF_STA = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@s_sc_ack_send = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"WIFI_STA_DEF\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@LWIP_SOCKET_OFFSET = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Creat udp socket failed\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SC_ACK_MAX_COUNT = common dso_local global i64 0, align 8
@SC_EVENT = common dso_local global i32 0, align 4
@SC_EVENT_SEND_ACK_DONE = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"send failed, errno %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sc_ack_send_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc_ack_send_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @memcpy(i32* %18, i32* %22, i32 16)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SC_TYPE_ESPTOUCH, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @SC_ACK_TOUCH_SERVER_PORT, align 4
  br label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @SC_ACK_AIRKISS_SERVER_PORT, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %6, align 4
  store i32 12, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SC_TYPE_ESPTOUCH, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @SC_ACK_TOUCH_LEN, align 4
  br label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @SC_ACK_AIRKISS_LEN, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %46 = call i32 @bzero(%struct.sockaddr_in* %7, i32 12)
  %47 = load i32, i32* @AF_INET, align 4
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %52 = call i32 @memcpy(i32* %50, i32* %51, i32 16)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @htons(i32 %53)
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @WIFI_IF_STA, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @esp_wifi_get_mac(i32 %56, i32 %60)
  %62 = load i32, i32* @portTICK_RATE_MS, align 4
  %63 = sdiv i32 200, %62
  %64 = call i32 @vTaskDelay(i32 %63)
  br label %65

65:                                               ; preds = %169, %44
  %66 = load i64, i64* @s_sc_ack_send, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %170

68:                                               ; preds = %65
  %69 = call i32 @esp_netif_get_handle_from_ifkey(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %70 = call i32 @esp_netif_get_ip_info(i32 %69, %struct.TYPE_11__* %4)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* @ESP_OK, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %165

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @INADDR_ANY, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %165

80:                                               ; preds = %74
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SC_TYPE_ESPTOUCH, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = bitcast i64* %92 to i32*
  %94 = call i32 @memcpy(i32* %90, i32* %93, i32 4)
  br label %95

95:                                               ; preds = %86, %80
  %96 = load i32, i32* @AF_INET, align 4
  %97 = load i32, i32* @SOCK_DGRAM, align 4
  %98 = call i32 @socket(i32 %96, i32 %97, i32 0)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @LWIP_SOCKET_OFFSET, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @FD_SETSIZE, align 4
  %105 = sub nsw i32 %104, 1
  %106 = icmp sgt i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %95
  %108 = load i32, i32* @TAG, align 4
  %109 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %108, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %171

110:                                              ; preds = %102
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @SOL_SOCKET, align 4
  %113 = load i32, i32* @SO_BROADCAST, align 4
  %114 = load i32, i32* @SO_REUSEADDR, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @setsockopt(i32 %111, i32 %112, i32 %115, i32* %10, i32 4)
  br label %117

117:                                              ; preds = %163, %155, %110
  %118 = load i64, i64* @s_sc_ack_send, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %164

120:                                              ; preds = %117
  %121 = load i32, i32* @portTICK_RATE_MS, align 4
  %122 = sdiv i32 100, %121
  %123 = call i32 @vTaskDelay(i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %12, align 4
  %128 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @sendto(i32 %124, %struct.TYPE_12__* %126, i32 %127, i32 0, %struct.sockaddr* %128, i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %120
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  %136 = sext i32 %134 to i64
  %137 = load i64, i64* @SC_ACK_MAX_COUNT, align 8
  %138 = icmp sge i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load i32, i32* @SC_EVENT, align 4
  %141 = load i32, i32* @SC_EVENT_SEND_ACK_DONE, align 4
  %142 = load i32, i32* @portMAX_DELAY, align 4
  %143 = call i32 @esp_event_post(i32 %140, i32 %141, i32* null, i32 0, i32 %142)
  br label %171

144:                                              ; preds = %133
  br label %163

145:                                              ; preds = %120
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @sc_ack_send_get_errno(i32 %146)
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @EAGAIN, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151, %145
  %156 = load i32, i32* @TAG, align 4
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @ESP_LOGD(i32 %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  br label %117

159:                                              ; preds = %151
  %160 = load i32, i32* @TAG, align 4
  %161 = load i32, i32* %14, align 4
  %162 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %161)
  br label %171

163:                                              ; preds = %144
  br label %117

164:                                              ; preds = %117
  br label %169

165:                                              ; preds = %74, %68
  %166 = load i32, i32* @portTICK_RATE_MS, align 4
  %167 = sdiv i32 100, %166
  %168 = call i32 @vTaskDelay(i32 %167)
  br label %169

169:                                              ; preds = %165, %164
  br label %65

170:                                              ; preds = %65
  br label %171

171:                                              ; preds = %170, %159, %139, %107
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @LWIP_SOCKET_OFFSET, align 4
  %174 = icmp sge i32 %172, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @FD_SETSIZE, align 4
  %178 = sub nsw i32 %177, 1
  %179 = icmp sle i32 %176, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @close(i32 %181)
  br label %183

183:                                              ; preds = %180, %175, %171
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %185 = call i32 @free(%struct.TYPE_10__* %184)
  %186 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @esp_wifi_get_mac(i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @esp_netif_get_ip_info(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @esp_netif_get_handle_from_ifkey(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sendto(i32, %struct.TYPE_12__*, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @esp_event_post(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @sc_ack_send_get_errno(i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
