; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_mysql-proto.c_lua_proto_get_masterinfo_string.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_mysql-proto.c_lua_proto_get_masterinfo_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i64 }

@.str = private unnamed_addr constant [43 x i8] c"%s: network_mysqld_masterinfo_get() failed\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@master_lines = common dso_local global i32 0, align 4
@master_log_file = common dso_local global i32 0, align 4
@master_log_pos = common dso_local global i32 0, align 4
@master_host = common dso_local global i32 0, align 4
@master_user = common dso_local global i32 0, align 4
@master_password = common dso_local global i32 0, align 4
@master_port = common dso_local global i32 0, align 4
@master_connect_retry = common dso_local global i32 0, align 4
@master_ssl = common dso_local global i32 0, align 4
@master_ssl_ca = common dso_local global i32 0, align 4
@master_ssl_capath = common dso_local global i32 0, align 4
@master_ssl_cert = common dso_local global i32 0, align 4
@master_ssl_cipher = common dso_local global i32 0, align 4
@master_ssl_key = common dso_local global i32 0, align 4
@master_ssl_verify_server_cert = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_proto_get_masterinfo_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_proto_get_masterinfo_string(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 1, i64* %4)
  store i8* %11, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = call %struct.TYPE_11__* (...) @network_mysqld_masterinfo_new()
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = call i64 @network_mysqld_masterinfo_get(%struct.TYPE_10__* %7, %struct.TYPE_11__* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %21, %1
  %26 = phi i1 [ true, %1 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = call i32 @network_mysqld_masterinfo_free(%struct.TYPE_11__* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @G_STRLOC, align 4
  %35 = call i32 @luaL_error(i32* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %2, align 4
  br label %92

36:                                               ; preds = %25
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @lua_newtable(i32* %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = load i32, i32* @master_lines, align 4
  %41 = call i32 @LUA_EXPORT_INT(%struct.TYPE_11__* %39, i32 %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = load i32, i32* @master_log_file, align 4
  %44 = call i32 @LUA_EXPORT_STR(%struct.TYPE_11__* %42, i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = load i32, i32* @master_log_pos, align 4
  %47 = call i32 @LUA_EXPORT_INT(%struct.TYPE_11__* %45, i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = load i32, i32* @master_host, align 4
  %50 = call i32 @LUA_EXPORT_STR(%struct.TYPE_11__* %48, i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = load i32, i32* @master_user, align 4
  %53 = call i32 @LUA_EXPORT_STR(%struct.TYPE_11__* %51, i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = load i32, i32* @master_password, align 4
  %56 = call i32 @LUA_EXPORT_STR(%struct.TYPE_11__* %54, i32 %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = load i32, i32* @master_port, align 4
  %59 = call i32 @LUA_EXPORT_INT(%struct.TYPE_11__* %57, i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = load i32, i32* @master_connect_retry, align 4
  %62 = call i32 @LUA_EXPORT_INT(%struct.TYPE_11__* %60, i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = load i32, i32* @master_ssl, align 4
  %65 = call i32 @LUA_EXPORT_INT(%struct.TYPE_11__* %63, i32 %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = load i32, i32* @master_ssl_ca, align 4
  %68 = call i32 @LUA_EXPORT_STR(%struct.TYPE_11__* %66, i32 %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = load i32, i32* @master_ssl_capath, align 4
  %71 = call i32 @LUA_EXPORT_STR(%struct.TYPE_11__* %69, i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = load i32, i32* @master_ssl_cert, align 4
  %74 = call i32 @LUA_EXPORT_STR(%struct.TYPE_11__* %72, i32 %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = load i32, i32* @master_ssl_cipher, align 4
  %77 = call i32 @LUA_EXPORT_STR(%struct.TYPE_11__* %75, i32 %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = load i32, i32* @master_ssl_key, align 4
  %80 = call i32 @LUA_EXPORT_STR(%struct.TYPE_11__* %78, i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %83, 15
  br i1 %84, label %85, label %89

85:                                               ; preds = %36
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = load i32, i32* @master_ssl_verify_server_cert, align 4
  %88 = call i32 @LUA_EXPORT_INT(%struct.TYPE_11__* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %36
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = call i32 @network_mysqld_masterinfo_free(%struct.TYPE_11__* %90)
  store i32 1, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %30
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local %struct.TYPE_11__* @network_mysqld_masterinfo_new(...) #1

declare dso_local i64 @network_mysqld_masterinfo_get(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @network_mysqld_masterinfo_free(%struct.TYPE_11__*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @LUA_EXPORT_INT(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @LUA_EXPORT_STR(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
