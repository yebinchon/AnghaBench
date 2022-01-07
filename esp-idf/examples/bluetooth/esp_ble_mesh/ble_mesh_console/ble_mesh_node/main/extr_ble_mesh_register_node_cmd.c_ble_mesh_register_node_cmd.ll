; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_node/main/extr_ble_mesh_register_node_cmd.c_ble_mesh_register_node_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_node/main/extr_ble_mesh_register_node_cmd.c_ble_mesh_register_node_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, %struct.TYPE_12__*, i32*, i32* }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_10__*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i64* }

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
@.str.18 = private unnamed_addr constant [6 x i8] c"bmoob\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"ble mesh: provisioner/node config OOB parameters\00", align 1
@ble_mesh_load_oob = common dso_local global i32 0, align 4
@__const.ble_mesh_register_node_cmd.oob_cmd = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i32 0, i32 0), %struct.TYPE_12__* @oob, i32* @ble_mesh_load_oob, i32* null }, align 8
@.str.20 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"<model>\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"mesh model\00", align 1
@component = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.23 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"<index>\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"mesh model op\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"<publish>\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"publish message buffer\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"<uuid>\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"device uuid\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"bminit\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"ble mesh: provisioner/node init\00", align 1
@ble_mesh_init = common dso_local global i32 0, align 4
@__const.ble_mesh_register_node_cmd.model_cmd = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i32 0, i32 0), %struct.TYPE_12__* @component, i32* @ble_mesh_init, i32* null }, align 8
@.str.34 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"<bearer>\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"supported bearer\00", align 1
@bearer = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.37 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"<enable/disable>\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"bearers node supported\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"bmnbearer\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"ble mesh node: enable/disable different bearer\00", align 1
@ble_mesh_node_enable_bearer = common dso_local global i32 0, align 4
@__const.ble_mesh_register_node_cmd.bearer_cmd = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0), %struct.TYPE_12__* @bearer, i32* @ble_mesh_node_enable_bearer, i32* null }, align 8
@.str.42 = private unnamed_addr constant [9 x i8] c"bmnreset\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"ble mesh node: reset\00", align 1
@ble_mesh_node_reset = common dso_local global i32 0, align 4
@__const.ble_mesh_register_node_cmd.reset_cmd = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), %struct.TYPE_12__* null, i32* @ble_mesh_node_reset, i32* null }, align 8
@.str.44 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"<action>\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"action type\00", align 1
@node_statistices = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.47 = private unnamed_addr constant [10 x i8] c"<package>\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"package number\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"bmsperf\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"ble mesh server: performance statistics\00", align 1
@ble_mesh_node_statistics_regist = common dso_local global i32 0, align 4
@__const.ble_mesh_register_node_cmd.node_statistices_cmd = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.50, i32 0, i32 0), %struct.TYPE_12__* @node_statistices, i32* @ble_mesh_node_statistics_regist, i32* null }, align 8
@power_set = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.51 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"<power>\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"tx power or sense\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"bmtxpower\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"ble mesh: set tx power or sense\00", align 1
@ble_mesh_power_set = common dso_local global i32 0, align 4
@__const.ble_mesh_register_node_cmd.power_set_cmd = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.55, i32 0, i32 0), %struct.TYPE_12__* @power_set, i32* @ble_mesh_power_set, i32* null }, align 8
@.str.56 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"<net key>\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"network key\00", align 1
@node_network_info = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.59 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"<net index>\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"network key index\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"<unicast address>\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"unicast address\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"<device key>\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"device key\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"<appkey>\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"app key\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"<app index>\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"appkey index\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"<group address>\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"group address\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"bmnnwk\00", align 1
@.str.76 = private unnamed_addr constant [33 x i8] c"ble mesh node: auto join network\00", align 1
@ble_mesh_node_enter_network_auto = common dso_local global i32 0, align 4
@__const.ble_mesh_register_node_cmd.node_network_info_cmd = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.76, i32 0, i32 0), %struct.TYPE_12__* @node_network_info, i32* @ble_mesh_node_enter_network_auto, i32* null }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ble_mesh_register_node_cmd() #0 {
  %1 = alloca %struct.TYPE_11__, align 8
  %2 = alloca %struct.TYPE_11__, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = bitcast %struct.TYPE_11__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_11__* @__const.ble_mesh_register_node_cmd.register_cmd to i8*), i64 40, i1 false)
  %10 = call i32 @esp_console_cmd_register(%struct.TYPE_11__* %1)
  %11 = call i32 @ESP_ERROR_CHECK(i32 %10)
  %12 = call i8* @arg_str0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 22), align 8
  %13 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 21), align 8
  %14 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 20), align 8
  %15 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 19), align 8
  %16 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 18), align 8
  %17 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 17), align 8
  %18 = call i8* @arg_end(i32 1)
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @oob, i32 0, i32 0), align 8
  %19 = bitcast %struct.TYPE_11__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_11__* @__const.ble_mesh_register_node_cmd.oob_cmd to i8*), i64 40, i1 false)
  %20 = call i32 @esp_console_cmd_register(%struct.TYPE_11__* %2)
  %21 = call i32 @ESP_ERROR_CHECK(i32 %20)
  %22 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @component, i32 0, i32 16), align 8
  %23 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %24 = bitcast i8* %23 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @component, i32 0, i32 15), align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @component, i32 0, i32 15), align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 0, i64* %28, align 8
  %29 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0))
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @component, i32 0, i32 14), align 8
  %30 = call i8* @arg_str0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0))
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @component, i32 0, i32 13), align 8
  %31 = call i8* @arg_end(i32 1)
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @component, i32 0, i32 0), align 8
  %32 = bitcast %struct.TYPE_11__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.TYPE_11__* @__const.ble_mesh_register_node_cmd.model_cmd to i8*), i64 40, i1 false)
  %33 = call i32 @esp_console_cmd_register(%struct.TYPE_11__* %3)
  %34 = call i32 @ESP_ERROR_CHECK(i32 %33)
  %35 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0))
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bearer, i32 0, i32 12), align 8
  %36 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0))
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bearer, i32 0, i32 11), align 8
  %37 = call i8* @arg_end(i32 1)
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bearer, i32 0, i32 0), align 8
  %38 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 bitcast (%struct.TYPE_11__* @__const.ble_mesh_register_node_cmd.bearer_cmd to i8*), i64 40, i1 false)
  %39 = call i32 @esp_console_cmd_register(%struct.TYPE_11__* %4)
  %40 = call i32 @ESP_ERROR_CHECK(i32 %39)
  %41 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 bitcast (%struct.TYPE_11__* @__const.ble_mesh_register_node_cmd.reset_cmd to i8*), i64 40, i1 false)
  %42 = call i32 @esp_console_cmd_register(%struct.TYPE_11__* %5)
  %43 = call i32 @ESP_ERROR_CHECK(i32 %42)
  %44 = call i8* @arg_str1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @node_statistices, i32 0, i32 9), align 8
  %45 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0))
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @node_statistices, i32 0, i32 10), align 8
  %46 = call i8* @arg_end(i32 1)
  store i8* %46, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @node_statistices, i32 0, i32 0), align 8
  %47 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 bitcast (%struct.TYPE_11__* @__const.ble_mesh_register_node_cmd.node_statistices_cmd to i8*), i64 40, i1 false)
  %48 = call i32 @esp_console_cmd_register(%struct.TYPE_11__* %6)
  %49 = call i32 @ESP_ERROR_CHECK(i32 %48)
  %50 = call i8* @arg_str1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @power_set, i32 0, i32 9), align 8
  %51 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0))
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @power_set, i32 0, i32 8), align 8
  %52 = call i8* @arg_end(i32 1)
  store i8* %52, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @power_set, i32 0, i32 0), align 8
  %53 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 bitcast (%struct.TYPE_11__* @__const.ble_mesh_register_node_cmd.power_set_cmd to i8*), i64 40, i1 false)
  %54 = call i32 @esp_console_cmd_register(%struct.TYPE_11__* %7)
  %55 = call i32 @ESP_ERROR_CHECK(i32 %54)
  %56 = call i8* @arg_str1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0))
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @node_network_info, i32 0, i32 7), align 8
  %57 = call i8* @arg_int1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i64 0, i64 0))
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @node_network_info, i32 0, i32 6), align 8
  %58 = call i8* @arg_int1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i64 0, i64 0))
  store i8* %58, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @node_network_info, i32 0, i32 5), align 8
  %59 = call i8* @arg_str1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i64 0, i64 0))
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @node_network_info, i32 0, i32 4), align 8
  %60 = call i8* @arg_str1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0))
  store i8* %60, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @node_network_info, i32 0, i32 3), align 8
  %61 = call i8* @arg_int1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i64 0, i64 0))
  store i8* %61, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @node_network_info, i32 0, i32 2), align 8
  %62 = call i8* @arg_int1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i64 0, i64 0))
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @node_network_info, i32 0, i32 1), align 8
  %63 = call i8* @arg_end(i32 1)
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @node_network_info, i32 0, i32 0), align 8
  %64 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 bitcast (%struct.TYPE_11__* @__const.ble_mesh_register_node_cmd.node_network_info_cmd to i8*), i64 40, i1 false)
  %65 = call i32 @esp_console_cmd_register(%struct.TYPE_11__* %8)
  %66 = call i32 @ESP_ERROR_CHECK(i32 %65)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #2

declare dso_local i32 @esp_console_cmd_register(%struct.TYPE_11__*) #2

declare dso_local i8* @arg_str0(i8*, i32*, i8*, i8*) #2

declare dso_local i8* @arg_int0(i8*, i32*, i8*, i8*) #2

declare dso_local i8* @arg_end(i32) #2

declare dso_local i8* @arg_str1(i8*, i32*, i8*, i8*) #2

declare dso_local i8* @arg_int1(i8*, i32*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
