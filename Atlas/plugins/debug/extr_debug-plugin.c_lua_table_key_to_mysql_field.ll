; ModuleID = '/home/carl/AnghaBench/Atlas/plugins/debug/extr_debug-plugin.c_lua_table_key_to_mysql_field.c'
source_filename = "/home/carl/AnghaBench/Atlas/plugins/debug/extr_debug-plugin.c_lua_table_key_to_mysql_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"(hmm)\00", align 1
@FIELD_TYPE_VAR_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @lua_table_key_to_mysql_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_table_key_to_mysql_field(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %6 = call %struct.TYPE_4__* (...) @network_mysqld_proto_fielddef_new()
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i64 @lua_isstring(i32* %7, i32 -2)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @lua_isnumber(i32* %11, i32 -2)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @lua_tostring(i32* %15, i32 -2)
  %17 = call i8* @g_strdup(i8* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  br label %35

20:                                               ; preds = %10, %2
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @lua_isnumber(i32* %21, i32 -2)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_tointeger(i32* %25, i32 -2)
  %27 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %34

30:                                               ; preds = %20
  %31 = call i8* @g_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34, %14
  %36 = load i32, i32* @FIELD_TYPE_VAR_STRING, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = call i32 @g_ptr_array_add(i32* %39, %struct.TYPE_4__* %40)
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @network_mysqld_proto_fielddef_new(...) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i8* @g_strdup_printf(i8*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @g_ptr_array_add(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
