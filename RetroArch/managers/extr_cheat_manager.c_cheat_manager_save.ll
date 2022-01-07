; ModuleID = '/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_save.c'
source_filename = "/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cheat%u_handler\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cheat%u_memory_search_size\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"cheat%u_cheat_type\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"cheat%u_value\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"cheat%u_address\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"cheat%u_address_bit_position\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"cheat%u_rumble_type\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"cheat%u_rumble_value\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"cheat%u_rumble_port\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"cheat%u_rumble_primary_strength\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"cheat%u_rumble_primary_duration\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"cheat%u_rumble_secondary_strength\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"cheat%u_rumble_secondary_duration\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"cheat%u_repeat_count\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"cheat%u_repeat_add_to_value\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"cheat%u_repeat_add_to_address\00", align 1
@__const.cheat_manager_save.keys = private unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0)], align 16
@cheat_manager_state = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c".cht\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"cheats\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"cheat%u_big_endian\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"cheat%u_desc\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"cheat%u_code\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"cheat%u_enable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cheat_manager_save(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca [16 x i32*], align 16
  %15 = alloca [16 x i8*], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [100 x i8], align 16
  %19 = alloca [256 x i8], align 16
  %20 = alloca [256 x i8], align 16
  %21 = alloca [256 x i8], align 16
  %22 = alloca [256 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  %30 = bitcast [16 x i32*]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 128, i1 false)
  %31 = bitcast [16 x i8*]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([16 x i8*]* @__const.cheat_manager_save.keys to i8*), i64 128, i1 false)
  %32 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 0, i8* %32, align 16
  %33 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %33, align 16
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 0), align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %280

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %5, align 8
  %45 = trunc i64 %28 to i32
  %46 = call i32 @strlcpy(i8* %29, i8* %44, i32 %45)
  br label %54

47:                                               ; preds = %40
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = trunc i64 %24 to i32
  %51 = call i32 @fill_pathname_join(i8* %26, i8* %48, i8* %49, i32 %50)
  %52 = trunc i64 %28 to i32
  %53 = call i32 @fill_pathname_noext(i8* %29, i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %47, %43
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call %struct.TYPE_14__* @config_file_new_from_path_to_string(i8* %29)
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %13, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %61 = icmp ne %struct.TYPE_14__* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = call %struct.TYPE_14__* (...) @config_file_new_alloc()
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %13, align 8
  %64 = icmp ne %struct.TYPE_14__* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %280

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %59
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 0), align 8
  %72 = call i32 @config_set_int(%struct.TYPE_14__* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %71)
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %271, %67
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 0), align 8
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %274

77:                                               ; preds = %73
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  store i8 0, i8* %78, align 16
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  store i8 0, i8* %79, align 16
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  store i8 0, i8* %80, align 16
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  store i8 0, i8* %81, align 16
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %82, align 16
  %83 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @snprintf(i8* %83, i32 100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @snprintf(i8* %86, i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 %87)
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @snprintf(i8* %89, i32 256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 %90)
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @snprintf(i8* %92, i32 256, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 19
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @string_is_empty(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %77
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 19
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @config_set_string(%struct.TYPE_14__* %104, i8* %105, i32 %111)
  br label %123

113:                                              ; preds = %77
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %117 = load i32, i32* %9, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 18
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @config_set_string(%struct.TYPE_14__* %114, i8* %115, i32 %121)
  br label %123

123:                                              ; preds = %113, %103
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 0
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %127 = load i32, i32* %9, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 18
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @config_set_string(%struct.TYPE_14__* %124, i8* %125, i32 %131)
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %134 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %136 = load i32, i32* %9, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 17
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @config_set_bool(%struct.TYPE_14__* %133, i8* %134, i32 %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %143 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %145 = load i32, i32* %9, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 16
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @config_set_bool(%struct.TYPE_14__* %142, i8* %143, i32 %149)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %152 = load i32, i32* %9, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 0
  store i32* %155, i32** %156, align 16
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %158 = load i32, i32* %9, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 1
  store i32* %161, i32** %162, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %164 = load i32, i32* %9, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 2
  store i32* %167, i32** %168, align 16
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %170 = load i32, i32* %9, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 3
  %174 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 3
  store i32* %173, i32** %174, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %176 = load i32, i32* %9, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 4
  %180 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 4
  store i32* %179, i32** %180, align 16
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %182 = load i32, i32* %9, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 5
  %186 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 5
  store i32* %185, i32** %186, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %188 = load i32, i32* %9, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 6
  %192 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 6
  store i32* %191, i32** %192, align 16
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %194 = load i32, i32* %9, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 7
  %198 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 7
  store i32* %197, i32** %198, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %200 = load i32, i32* %9, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 8
  %204 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 8
  store i32* %203, i32** %204, align 16
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %206 = load i32, i32* %9, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 9
  %210 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 9
  store i32* %209, i32** %210, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %212 = load i32, i32* %9, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 10
  %216 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 10
  store i32* %215, i32** %216, align 16
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %218 = load i32, i32* %9, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 11
  %222 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 11
  store i32* %221, i32** %222, align 8
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %224 = load i32, i32* %9, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 12
  %228 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 12
  store i32* %227, i32** %228, align 16
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %230 = load i32, i32* %9, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 13
  %234 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 13
  store i32* %233, i32** %234, align 8
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %236 = load i32, i32* %9, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 14
  %240 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 14
  store i32* %239, i32** %240, align 16
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cheat_manager_state, i32 0, i32 1), align 8
  %242 = load i32, i32* %9, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 15
  %246 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 15
  store i32* %245, i32** %246, align 8
  store i32 0, i32* %17, align 4
  br label %247

247:                                              ; preds = %267, %123
  %248 = load i32, i32* %17, align 4
  %249 = icmp ult i32 %248, 16
  br i1 %249, label %250, label %270

250:                                              ; preds = %247
  %251 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %251, align 16
  %252 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %253 = load i32, i32* %17, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = load i32, i32* %9, align 4
  %258 = call i32 @snprintf(i8* %252, i32 256, i8* %256, i32 %257)
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %260 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %261 = load i32, i32* %17, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds [16 x i32*], [16 x i32*]* %14, i64 0, i64 %262
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @config_set_uint(%struct.TYPE_14__* %259, i8* %260, i32 %265)
  br label %267

267:                                              ; preds = %250
  %268 = load i32, i32* %17, align 4
  %269 = add i32 %268, 1
  store i32 %269, i32* %17, align 4
  br label %247

270:                                              ; preds = %247
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %9, align 4
  %273 = add i32 %272, 1
  store i32 %273, i32* %9, align 4
  br label %73

274:                                              ; preds = %73
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %276 = call i32 @config_file_write(%struct.TYPE_14__* %275, i8* %29, i32 1)
  store i32 %276, i32* %8, align 4
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %278 = call i32 @config_file_free(%struct.TYPE_14__* %277)
  %279 = load i32, i32* %8, align 4
  store i32 %279, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %280

280:                                              ; preds = %274, %65, %39
  %281 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %281)
  %282 = load i32, i32* %4, align 4
  ret i32 %282
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #3

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i32) #3

declare dso_local i32 @fill_pathname_noext(i8*, i8*, i8*, i32) #3

declare dso_local %struct.TYPE_14__* @config_file_new_from_path_to_string(i8*) #3

declare dso_local %struct.TYPE_14__* @config_file_new_alloc(...) #3

declare dso_local i32 @config_set_int(%struct.TYPE_14__*, i8*, i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #3

declare dso_local i32 @string_is_empty(i32) #3

declare dso_local i32 @config_set_string(%struct.TYPE_14__*, i8*, i32) #3

declare dso_local i32 @config_set_bool(%struct.TYPE_14__*, i8*, i32) #3

declare dso_local i32 @config_set_uint(%struct.TYPE_14__*, i8*, i32) #3

declare dso_local i32 @config_file_write(%struct.TYPE_14__*, i8*, i32) #3

declare dso_local i32 @config_file_free(%struct.TYPE_14__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
