; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_node/main/extr_ble_mesh_register_server_cmd.c_ble_mesh_register_server_operation.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_node/main/extr_ble_mesh_register_server_cmd.c_ble_mesh_register_server_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_5__*, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<data>\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"message data\00", align 1
@msg_publish = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"<opcode>\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"operation opcode\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"<module>\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"module published to\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"<role>\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"device role\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"bmpublish\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"ble mesh: publish message\00", align 1
@ble_mesh_module_publish_message = common dso_local global i32 0, align 4
@__const.ble_mesh_register_server_operation.msg_publish_cmd = private unnamed_addr constant %struct.TYPE_4__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0), %struct.TYPE_5__* @msg_publish, i32* @ble_mesh_module_publish_message, i32* null }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ble_mesh_register_server_operation() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = call i32 @arg_str1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msg_publish, i32 0, i32 4), align 8
  %3 = call i8* @arg_int1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msg_publish, i32 0, i32 3), align 8
  %4 = call i8* @arg_int1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msg_publish, i32 0, i32 2), align 8
  %5 = call i8* @arg_int1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  store i8* %5, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msg_publish, i32 0, i32 1), align 8
  %6 = call i32 @arg_end(i32 1)
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msg_publish, i32 0, i32 0), align 8
  %7 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_4__* @__const.ble_mesh_register_server_operation.msg_publish_cmd to i8*), i64 40, i1 false)
  %8 = call i32 @esp_console_cmd_register(%struct.TYPE_4__* %1)
  %9 = call i32 @ESP_ERROR_CHECK(i32 %8)
  ret void
}

declare dso_local i32 @arg_str1(i8*, i32*, i8*, i8*) #1

declare dso_local i8* @arg_int1(i8*, i32*, i8*, i8*) #1

declare dso_local i32 @arg_end(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_console_cmd_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
