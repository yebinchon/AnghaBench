; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_reg_test_perf_client_cmd.c_ble_mesh_performance_client_model_command.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_console/ble_mesh_provisioner/main/extr_ble_mesh_reg_test_perf_client_cmd.c_ble_mesh_performance_client_model_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_8__*, i8*, i8*, i8*, i8*, %struct.TYPE_7__*, i8* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_10__*, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"<action>\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"action type\00", align 1
@test_perf_client_model = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"<byte>\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"playload byte\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"<number>\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"test number\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"<opcode>\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"opcode\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"<address>\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"unicast address\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"<ttl>\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ttl\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"<appkey>\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"appkey index\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"<network key>\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"network key index\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"<role>\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"device role\00", align 1
@ROLE_PROVISIONER = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [8 x i8] c"bmtpcvm\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"ble mesh test performance client vendor model\00", align 1
@ble_mesh_test_performance_client_model = common dso_local global i32 0, align 4
@__const.ble_mesh_performance_client_model_command.test_perf_client_model_cmd = private unnamed_addr constant %struct.TYPE_9__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i32 0, i32 0), %struct.TYPE_10__* @test_perf_client_model, i32* @ble_mesh_test_performance_client_model, i32* null }, align 8
@test_perf_client_model_statistics = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.29 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"<test size>\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"test size\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"<node number>\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"node number\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"<test number>\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"bmcperf\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"ble mesh client: test performance\00", align 1
@ble_mesh_test_performance_client_model_performance = common dso_local global i32 0, align 4
@__const.ble_mesh_performance_client_model_command.test_perf_client_model_performance_cmd = private unnamed_addr constant %struct.TYPE_9__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), %struct.TYPE_10__* @test_perf_client_model_statistics, i32* @ble_mesh_test_performance_client_model_performance, i32* null }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ble_mesh_performance_client_model_command() #0 {
  %1 = alloca %struct.TYPE_9__, align 8
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = call i8* @arg_str1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model, i32 0, i32 4), align 8
  %4 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model, i32 0, i32 11), align 8
  %5 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %6 = bitcast i8* %5 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model, i32 0, i32 10), align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model, i32 0, i32 10), align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 1000, i32* %10, align 4
  %11 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model, i32 0, i32 9), align 8
  %12 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model, i32 0, i32 8), align 8
  %13 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model, i32 0, i32 1), align 8
  %14 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model, i32 0, i32 7), align 8
  %15 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model, i32 0, i32 6), align 8
  %16 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  %17 = bitcast i8* %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model, i32 0, i32 5), align 8
  %18 = load i32, i32* @ROLE_PROVISIONER, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model, i32 0, i32 5), align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = call i8* @arg_end(i32 1)
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model, i32 0, i32 0), align 8
  %24 = bitcast %struct.TYPE_9__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_9__* @__const.ble_mesh_performance_client_model_command.test_perf_client_model_cmd to i8*), i64 40, i1 false)
  %25 = call i32 @esp_console_cmd_register(%struct.TYPE_9__* %1)
  %26 = call i32 @ESP_ERROR_CHECK(i32 %25)
  %27 = call i8* @arg_str1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model_statistics, i32 0, i32 4), align 8
  %28 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0))
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model_statistics, i32 0, i32 3), align 8
  %29 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0))
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model_statistics, i32 0, i32 2), align 8
  %30 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model_statistics, i32 0, i32 1), align 8
  %31 = call i8* @arg_end(i32 1)
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @test_perf_client_model_statistics, i32 0, i32 0), align 8
  %32 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.TYPE_9__* @__const.ble_mesh_performance_client_model_command.test_perf_client_model_performance_cmd to i8*), i64 40, i1 false)
  %33 = call i32 @esp_console_cmd_register(%struct.TYPE_9__* %2)
  %34 = call i32 @ESP_ERROR_CHECK(i32 %33)
  ret void
}

declare dso_local i8* @arg_str1(i8*, i32*, i8*, i8*) #1

declare dso_local i8* @arg_int0(i8*, i32*, i8*, i8*) #1

declare dso_local i8* @arg_end(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_console_cmd_register(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
