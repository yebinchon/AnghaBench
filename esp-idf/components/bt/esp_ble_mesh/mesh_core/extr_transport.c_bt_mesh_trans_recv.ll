; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_bt_mesh_trans_recv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_transport.c_bt_mesh_trans_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf_simple = type { i32, i32 }
%struct.bt_mesh_net_rx = type { i32, i64, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net_buf_simple_state = type { i32 }

@TRANS_SEQ_AUTH_NVAL = common dso_local global i64 0, align 8
@BLE_MESH_FRIEND_PDU_SINGLE = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_FRIEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"src 0x%04x dst 0x%04x seq 0x%08x friend_match %u\00", align 1
@BLE_MESH_NET_HDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Payload %s\00", align 1
@CONFIG_BLE_MESH_NODE = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_LOW_POWER = common dso_local global i32 0, align 4
@BLE_MESH_NET_IF_ADV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Ignoring unexpected message in Low Power mode\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_trans_recv(%struct.net_buf_simple* %0, %struct.bt_mesh_net_rx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_buf_simple*, align 8
  %5 = alloca %struct.bt_mesh_net_rx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_buf_simple_state, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_buf_simple* %0, %struct.net_buf_simple** %4, align 8
  store %struct.bt_mesh_net_rx* %1, %struct.bt_mesh_net_rx** %5, align 8
  %11 = load i64, i64* @TRANS_SEQ_AUTH_NVAL, align 8
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* @BLE_MESH_FRIEND_PDU_SINGLE, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @CONFIG_BLE_MESH_FRIEND, align 4
  %14 = call i64 @IS_ENABLED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %18 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %17, i32 0, i32 6
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %23 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bt_mesh_friend_match(i32 %21, i32 %25)
  %27 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %28 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %32

29:                                               ; preds = %2
  %30 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %31 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %16
  %33 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %34 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %38 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %42 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %45 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40, i32 %43, i32 %46)
  %48 = load %struct.net_buf_simple*, %struct.net_buf_simple** %4, align 8
  %49 = load i32, i32* @BLE_MESH_NET_HDR_LEN, align 4
  %50 = call i32 @net_buf_simple_pull(%struct.net_buf_simple* %48, i32 %49)
  %51 = load %struct.net_buf_simple*, %struct.net_buf_simple** %4, align 8
  %52 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.net_buf_simple*, %struct.net_buf_simple** %4, align 8
  %55 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bt_hex(i32 %53, i32 %56)
  %58 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @CONFIG_BLE_MESH_NODE, align 4
  %60 = call i64 @IS_ENABLED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %32
  %63 = call i64 (...) @bt_mesh_is_provisioned()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = load i32, i32* @CONFIG_BLE_MESH_LOW_POWER, align 4
  %67 = call i64 @IS_ENABLED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = call i64 (...) @bt_mesh_lpn_established()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %74 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BLE_MESH_NET_IF_ADV, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = call i64 (...) @bt_mesh_lpn_waiting_update()
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %83 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %81, %78
  %87 = call i32 @BT_WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @EAGAIN, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %183

90:                                               ; preds = %81, %72, %69, %65
  br label %91

91:                                               ; preds = %90, %62, %32
  %92 = load %struct.net_buf_simple*, %struct.net_buf_simple** %4, align 8
  %93 = call i32 @net_buf_simple_save(%struct.net_buf_simple* %92, %struct.net_buf_simple_state* %8)
  %94 = load %struct.net_buf_simple*, %struct.net_buf_simple** %4, align 8
  %95 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @SEG(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %91
  %100 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %101 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %106 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %183

110:                                              ; preds = %104, %99
  %111 = load %struct.net_buf_simple*, %struct.net_buf_simple** %4, align 8
  %112 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %113 = call i32 @trans_seg(%struct.net_buf_simple* %111, %struct.bt_mesh_net_rx* %112, i32* %7, i64* %6, i32* %9)
  store i32 %113, i32* %10, align 4
  br label %118

114:                                              ; preds = %91
  store i32 1, i32* %9, align 4
  %115 = load %struct.net_buf_simple*, %struct.net_buf_simple** %4, align 8
  %116 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %117 = call i32 @trans_unseg(%struct.net_buf_simple* %115, %struct.bt_mesh_net_rx* %116, i64* %6)
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %114, %110
  %119 = load i32, i32* @CONFIG_BLE_MESH_NODE, align 4
  %120 = call i64 @IS_ENABLED(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %142

122:                                              ; preds = %118
  %123 = call i64 (...) @bt_mesh_is_provisioned()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %122
  %126 = load i32, i32* @CONFIG_BLE_MESH_LOW_POWER, align 4
  %127 = call i64 @IS_ENABLED(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %125
  %130 = call i64 (...) @bt_mesh_lpn_timer()
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = call i64 (...) @bt_mesh_lpn_established()
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = call i64 (...) @bt_mesh_lpn_waiting_update()
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135, %129
  %139 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %140 = call i32 @bt_mesh_lpn_msg_received(%struct.bt_mesh_net_rx* %139)
  br label %141

141:                                              ; preds = %138, %135, %132, %125
  br label %142

142:                                              ; preds = %141, %122, %118
  %143 = load %struct.net_buf_simple*, %struct.net_buf_simple** %4, align 8
  %144 = call i32 @net_buf_simple_restore(%struct.net_buf_simple* %143, %struct.net_buf_simple_state* %8)
  %145 = load i32, i32* @CONFIG_BLE_MESH_NODE, align 4
  %146 = call i64 @IS_ENABLED(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %181

148:                                              ; preds = %142
  %149 = call i64 (...) @bt_mesh_is_provisioned()
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %181

151:                                              ; preds = %148
  %152 = load i32, i32* @CONFIG_BLE_MESH_FRIEND, align 4
  %153 = call i64 @IS_ENABLED(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %180

155:                                              ; preds = %151
  %156 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %157 = getelementptr inbounds %struct.bt_mesh_net_rx, %struct.bt_mesh_net_rx* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %155
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %180, label %163

163:                                              ; preds = %160
  %164 = load i64, i64* %6, align 8
  %165 = load i64, i64* @TRANS_SEQ_AUTH_NVAL, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.net_buf_simple*, %struct.net_buf_simple** %4, align 8
  %172 = call i32 @bt_mesh_friend_enqueue_rx(%struct.bt_mesh_net_rx* %168, i32 %169, i64* null, i32 %170, %struct.net_buf_simple* %171)
  br label %179

173:                                              ; preds = %163
  %174 = load %struct.bt_mesh_net_rx*, %struct.bt_mesh_net_rx** %5, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.net_buf_simple*, %struct.net_buf_simple** %4, align 8
  %178 = call i32 @bt_mesh_friend_enqueue_rx(%struct.bt_mesh_net_rx* %174, i32 %175, i64* %6, i32 %176, %struct.net_buf_simple* %177)
  br label %179

179:                                              ; preds = %173, %167
  br label %180

180:                                              ; preds = %179, %160, %155, %151
  br label %181

181:                                              ; preds = %180, %148, %142
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %181, %109, %86
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @bt_mesh_friend_match(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @net_buf_simple_pull(%struct.net_buf_simple*, i32) #1

declare dso_local i32 @bt_hex(i32, i32) #1

declare dso_local i64 @bt_mesh_is_provisioned(...) #1

declare dso_local i64 @bt_mesh_lpn_established(...) #1

declare dso_local i64 @bt_mesh_lpn_waiting_update(...) #1

declare dso_local i32 @BT_WARN(i8*) #1

declare dso_local i32 @net_buf_simple_save(%struct.net_buf_simple*, %struct.net_buf_simple_state*) #1

declare dso_local i64 @SEG(i32) #1

declare dso_local i32 @trans_seg(%struct.net_buf_simple*, %struct.bt_mesh_net_rx*, i32*, i64*, i32*) #1

declare dso_local i32 @trans_unseg(%struct.net_buf_simple*, %struct.bt_mesh_net_rx*, i64*) #1

declare dso_local i64 @bt_mesh_lpn_timer(...) #1

declare dso_local i32 @bt_mesh_lpn_msg_received(%struct.bt_mesh_net_rx*) #1

declare dso_local i32 @net_buf_simple_restore(%struct.net_buf_simple*, %struct.net_buf_simple_state*) #1

declare dso_local i32 @bt_mesh_friend_enqueue_rx(%struct.bt_mesh_net_rx*, i32, i64*, i32, %struct.net_buf_simple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
