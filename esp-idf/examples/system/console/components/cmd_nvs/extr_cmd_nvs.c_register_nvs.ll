; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_nvs/extr_cmd_nvs.c_register_nvs.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_nvs/extr_cmd_nvs.c_register_nvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_10__*, i32*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"<key>\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"key of the value to be set\00", align 1
@set_args = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"<type>\00", align 1
@ARG_TYPE_STR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"<value>\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"value to be stored\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"key of the value to be read\00", align 1
@get_args = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"key of the value to be erased\00", align 1
@erase_args = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"<namespace>\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"namespace to be erased\00", align 1
@erase_all_args = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [42 x i8] c"namespace of the partition to be selected\00", align 1
@namespace_args = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"<partition>\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"partition name\00", align 1
@list_args = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"namespace name\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"nvs_set\00", align 1
@.str.20 = private unnamed_addr constant [161 x i8] c"Set key-value pair in selected namespace.\0AExamples:\0A nvs_set VarName i32 -v 123 \0A nvs_set VarName srt -v YourString \0A nvs_set VarName blob -v 0123456789abcdef \0A\00", align 1
@set_value = common dso_local global i32 0, align 4
@__const.register_nvs.set_cmd = private unnamed_addr constant %struct.TYPE_9__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.20, i32 0, i32 0), %struct.TYPE_10__* @set_args, i32* @set_value, i32* null }, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"nvs_get\00", align 1
@.str.22 = private unnamed_addr constant [74 x i8] c"Get key-value pair from selected namespace. \0AExample: nvs_get VarName i32\00", align 1
@get_value = common dso_local global i32 0, align 4
@__const.register_nvs.get_cmd = private unnamed_addr constant %struct.TYPE_9__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.22, i32 0, i32 0), %struct.TYPE_10__* @get_args, i32* @get_value, i32* null }, align 8
@.str.23 = private unnamed_addr constant [10 x i8] c"nvs_erase\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"Erase key-value pair from current namespace\00", align 1
@erase_value = common dso_local global i32 0, align 4
@__const.register_nvs.erase_cmd = private unnamed_addr constant %struct.TYPE_9__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i32 0, i32 0), %struct.TYPE_10__* @erase_args, i32* @erase_value, i32* null }, align 8
@.str.25 = private unnamed_addr constant [20 x i8] c"nvs_erase_namespace\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Erases specified namespace\00", align 1
@erase_namespace = common dso_local global i32 0, align 4
@__const.register_nvs.erase_namespace_cmd = private unnamed_addr constant %struct.TYPE_9__ { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0), %struct.TYPE_10__* @erase_all_args, i32* @erase_namespace, i32* null }, align 8
@.str.27 = private unnamed_addr constant [14 x i8] c"nvs_namespace\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Set current namespace\00", align 1
@set_namespace = common dso_local global i32 0, align 4
@__const.register_nvs.namespace_cmd = private unnamed_addr constant %struct.TYPE_9__ { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0), %struct.TYPE_10__* @namespace_args, i32* @set_namespace, i32* null }, align 8
@.str.29 = private unnamed_addr constant [9 x i8] c"nvs_list\00", align 1
@.str.30 = private unnamed_addr constant [265 x i8] c"List stored key-value pairs stored in NVS.Namespace and type can be specified to print only those key-value pairs.\0AFollowing command list variables stored inside 'nvs' partition, under namespace 'storage' with type uint32_tExample: nvs_list nvs -n storage -t u32 \0A\00", align 1
@list_entries = common dso_local global i32 0, align 4
@__const.register_nvs.list_entries_cmd = private unnamed_addr constant %struct.TYPE_9__ { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([265 x i8], [265 x i8]* @.str.30, i32 0, i32 0), %struct.TYPE_10__* @list_args, i32* @list_entries, i32* null }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_nvs() #0 {
  %1 = alloca %struct.TYPE_9__, align 8
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = call i8* @arg_str1(i8* null, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @set_args, i32 0, i32 4), align 8
  %8 = load i8*, i8** @ARG_TYPE_STR, align 8
  %9 = call i8* @arg_str1(i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %8)
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @set_args, i32 0, i32 1), align 8
  %10 = call i8* @arg_str1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @set_args, i32 0, i32 5), align 8
  %11 = call i8* @arg_end(i32 2)
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @set_args, i32 0, i32 0), align 8
  %12 = call i8* @arg_str1(i8* null, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @get_args, i32 0, i32 4), align 8
  %13 = load i8*, i8** @ARG_TYPE_STR, align 8
  %14 = call i8* @arg_str1(i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  store i8* %14, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @get_args, i32 0, i32 1), align 8
  %15 = call i8* @arg_end(i32 2)
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @get_args, i32 0, i32 0), align 8
  %16 = call i8* @arg_str1(i8* null, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @erase_args, i32 0, i32 4), align 8
  %17 = call i8* @arg_end(i32 2)
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @erase_args, i32 0, i32 0), align 8
  %18 = call i8* @arg_str1(i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @erase_all_args, i32 0, i32 2), align 8
  %19 = call i8* @arg_end(i32 2)
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @erase_all_args, i32 0, i32 0), align 8
  %20 = call i8* @arg_str1(i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @namespace_args, i32 0, i32 2), align 8
  %21 = call i8* @arg_end(i32 2)
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @namespace_args, i32 0, i32 0), align 8
  %22 = call i8* @arg_str1(i8* null, i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @list_args, i32 0, i32 3), align 8
  %23 = call i8* @arg_str0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @list_args, i32 0, i32 2), align 8
  %24 = load i8*, i8** @ARG_TYPE_STR, align 8
  %25 = call i8* @arg_str0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @list_args, i32 0, i32 1), align 8
  %26 = call i8* @arg_end(i32 2)
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @list_args, i32 0, i32 0), align 8
  %27 = bitcast %struct.TYPE_9__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.TYPE_9__* @__const.register_nvs.set_cmd to i8*), i64 40, i1 false)
  %28 = bitcast %struct.TYPE_9__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%struct.TYPE_9__* @__const.register_nvs.get_cmd to i8*), i64 40, i1 false)
  %29 = bitcast %struct.TYPE_9__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 bitcast (%struct.TYPE_9__* @__const.register_nvs.erase_cmd to i8*), i64 40, i1 false)
  %30 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 bitcast (%struct.TYPE_9__* @__const.register_nvs.erase_namespace_cmd to i8*), i64 40, i1 false)
  %31 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 bitcast (%struct.TYPE_9__* @__const.register_nvs.namespace_cmd to i8*), i64 40, i1 false)
  %32 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.TYPE_9__* @__const.register_nvs.list_entries_cmd to i8*), i64 40, i1 false)
  %33 = call i32 @esp_console_cmd_register(%struct.TYPE_9__* %1)
  %34 = call i32 @ESP_ERROR_CHECK(i32 %33)
  %35 = call i32 @esp_console_cmd_register(%struct.TYPE_9__* %2)
  %36 = call i32 @ESP_ERROR_CHECK(i32 %35)
  %37 = call i32 @esp_console_cmd_register(%struct.TYPE_9__* %3)
  %38 = call i32 @ESP_ERROR_CHECK(i32 %37)
  %39 = call i32 @esp_console_cmd_register(%struct.TYPE_9__* %5)
  %40 = call i32 @ESP_ERROR_CHECK(i32 %39)
  %41 = call i32 @esp_console_cmd_register(%struct.TYPE_9__* %6)
  %42 = call i32 @ESP_ERROR_CHECK(i32 %41)
  %43 = call i32 @esp_console_cmd_register(%struct.TYPE_9__* %4)
  %44 = call i32 @ESP_ERROR_CHECK(i32 %43)
  ret void
}

declare dso_local i8* @arg_str1(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @arg_end(i32) #1

declare dso_local i8* @arg_str0(i8*, i8*, i8*, i8*) #1

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
