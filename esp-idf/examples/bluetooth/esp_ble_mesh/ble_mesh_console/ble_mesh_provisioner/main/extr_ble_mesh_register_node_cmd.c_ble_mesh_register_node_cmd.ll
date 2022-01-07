; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_register_node_cmd.c_ble_mesh_register_node_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_register_node_cmd.c_ble_mesh_register_node_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, %struct.TYPE_12__*, i32*, i32* }
%struct.TYPE_12__ = type { i8*, i32, i8*, i8*, i8*, i8*, %struct.TYPE_10__*, i8*, %struct.TYPE_9__*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"bmreg\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ble mesh: provisioner/node register callback\00", align 1
@ble_mesh_register_node_cb = common dso_local global i32 0, align 4
@__const.ble_mesh_register_node_cmd.register_cmd = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i32 0, i32 0), %struct.TYPE_12__* null, i32* @ble_mesh_register_node_cb, i32* null }, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"<value>\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Static OOB value\00", align 1
@oob = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"<length>\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Static OOB value length\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"<size>\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Maximum size of Output OOB\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"<actions>\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Supported Output OOB Actions\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Maximum size of Input OOB\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Supported Input OOB Actions\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"<address>\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"start address assigned by provisioner\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"bmoob\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"ble mesh: provisioner/node config OOB parameters\00", align 1
@ble_mesh_load_oob = common dso_local global i32 0, align 4
@__const.ble_mesh_register_node_cmd.oob_cmd = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i32 0, i32 0), %struct.TYPE_12__* @oob, i32* @ble_mesh_load_oob, i32* null }, align 8
@.str.23 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"<model>\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"mesh model\00", align 1
@component = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.26 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"<index>\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"mesh model op\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"<publish>\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"publish message buffer\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"bminit\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"ble mesh: provisioner/node init\00", align 1
@ble_mesh_init = common dso_local global i32 0, align 4
@__const.ble_mesh_register_node_cmd.model_cmd = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0), %struct.TYPE_12__* @component, i32* @ble_mesh_init, i32* null }, align 8
@.str.33 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"<bearer>\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"supported bearer\00", align 1
@bearer = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.36 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"<enable/disable>\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"bearers node supported\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"bmpbearer\00", align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"ble mesh provisioner: enable/disable different bearers\00", align 1
@ble_mesh_provisioner_enable_bearer = common dso_local global i32 0, align 4
@__const.ble_mesh_register_node_cmd.bearer_cmd = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.40, i32 0, i32 0), %struct.TYPE_12__* @bearer, i32* @ble_mesh_provisioner_enable_bearer, i32* null }, align 8
@.str.41 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"<power>\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"tx power or sense\00", align 1
@power_set = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.44 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"<action>\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"action type\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"bmtxpower\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"ble mesh: set tx power or sense\00", align 1
@ble_mesh_power_set = common dso_local global i32 0, align 4
@__const.ble_mesh_register_node_cmd.power_set_cmd = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0), %struct.TYPE_12__* @power_set, i32* @ble_mesh_power_set, i32* null }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ble_mesh_register_node_cmd() #0 {
  %1 = alloca %struct.TYPE_11__, align 8
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = bitcast %struct.TYPE_11__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_11__* @__const.ble_mesh_register_node_cmd.register_cmd to i8*), i64 40, i1 false)
  %7 = call i32 @esp_console_cmd_register(%struct.TYPE_11__* %1)
  %8 = call i32 @ESP_ERROR_CHECK(i32 %7)
  %9 = call i32 @arg_str0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 14), align 8
  %10 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 13), align 8
  %11 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 12), align 8
  %12 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 11), align 8
  %13 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 10), align 8
  %14 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 9), align 8
  %15 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0))
  %16 = bitcast i8* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 8), align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 8), align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 5, i32* %20, align 4
  %21 = call i8* @arg_end(i32 1)
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 0), align 8
  %22 = bitcast %struct.TYPE_11__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.TYPE_11__* @__const.ble_mesh_register_node_cmd.oob_cmd to i8*), i64 40, i1 false)
  %23 = call i32 @esp_console_cmd_register(%struct.TYPE_11__* %2)
  %24 = call i32 @ESP_ERROR_CHECK(i32 %23)
  %25 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @component, i32 0, i32 7), align 8
  %26 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  %27 = bitcast i8* %26 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @component, i32 0, i32 6), align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @component, i32 0, i32 6), align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 0, i64* %31, align 8
  %32 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0))
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @component, i32 0, i32 5), align 8
  %33 = call i8* @arg_end(i32 1)
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @component, i32 0, i32 0), align 8
  %34 = bitcast %struct.TYPE_11__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 bitcast (%struct.TYPE_11__* @__const.ble_mesh_register_node_cmd.model_cmd to i8*), i64 40, i1 false)
  %35 = call i32 @esp_console_cmd_register(%struct.TYPE_11__* %3)
  %36 = call i32 @ESP_ERROR_CHECK(i32 %35)
  %37 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0))
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bearer, i32 0, i32 4), align 8
  %38 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0))
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bearer, i32 0, i32 3), align 8
  %39 = call i8* @arg_end(i32 1)
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bearer, i32 0, i32 0), align 8
  %40 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 bitcast (%struct.TYPE_11__* @__const.ble_mesh_register_node_cmd.bearer_cmd to i8*), i64 40, i1 false)
  %41 = call i32 @esp_console_cmd_register(%struct.TYPE_11__* %4)
  %42 = call i32 @ESP_ERROR_CHECK(i32 %41)
  %43 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0))
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @power_set, i32 0, i32 2), align 8
  %44 = call i32 @arg_str1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @power_set, i32 0, i32 1), align 8
  %45 = call i8* @arg_end(i32 1)
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @power_set, i32 0, i32 0), align 8
  %46 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 bitcast (%struct.TYPE_11__* @__const.ble_mesh_register_node_cmd.power_set_cmd to i8*), i64 40, i1 false)
  %47 = call i32 @esp_console_cmd_register(%struct.TYPE_11__* %5)
  %48 = call i32 @ESP_ERROR_CHECK(i32 %47)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #2

declare dso_local i32 @esp_console_cmd_register(%struct.TYPE_11__*) #2

declare dso_local i32 @arg_str0(i8*, i32*, i8*, i8*) #2

declare dso_local i8* @arg_int0(i8*, i32*, i8*, i8*) #2

declare dso_local i8* @arg_end(i32) #2

declare dso_local i32 @arg_str1(i8*, i32*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
