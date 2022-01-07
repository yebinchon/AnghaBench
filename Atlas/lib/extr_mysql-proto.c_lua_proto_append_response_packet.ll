; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_mysql-proto.c_lua_proto_append_response_packet.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_mysql-proto.c_lua_proto_append_response_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTABLE = common dso_local global i32 0, align 4
@capabilities = common dso_local global i32 0, align 4
@max_packet_size = common dso_local global i32 0, align 4
@charset = common dso_local global i32 0, align 4
@username = common dso_local global i32 0, align 4
@response = common dso_local global i32 0, align 4
@database = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"to_response_packet() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_proto_append_response_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_proto_append_response_packet(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @LUA_TTABLE, align 4
  %8 = call i32 @luaL_checktype(i32* %6, i32 1, i32 %7)
  %9 = call i32* @g_string_new(i32* null)
  store i32* %9, i32** %4, align 8
  %10 = call i32* (...) @network_mysqld_auth_response_new()
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @capabilities, align 4
  %13 = call i32 @LUA_IMPORT_INT(i32* %11, i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @max_packet_size, align 4
  %16 = call i32 @LUA_IMPORT_INT(i32* %14, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @charset, align 4
  %19 = call i32 @LUA_IMPORT_INT(i32* %17, i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @username, align 4
  %22 = call i32 @LUA_IMPORT_STR(i32* %20, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @response, align 4
  %25 = call i32 @LUA_IMPORT_STR(i32* %23, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @database, align 4
  %28 = call i32 @LUA_IMPORT_STR(i32* %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @network_mysqld_proto_append_auth_response(i32* %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %1
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @network_mysqld_auth_response_free(i32* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @g_string_free(i32* %36, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @luaL_error(i32* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @g_string_free(i32* %41, i32 %42)
  store i32 0, i32* %2, align 4
  br label %54

44:                                               ; preds = %1
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @network_mysqld_auth_response_free(i32* %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @S(i32* %48)
  %50 = call i32 @lua_pushlstring(i32* %47, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i32 @g_string_free(i32* %51, i32 %52)
  store i32 1, i32* %2, align 4
  br label %54

54:                                               ; preds = %44, %33
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32* @g_string_new(i32*) #1

declare dso_local i32* @network_mysqld_auth_response_new(...) #1

declare dso_local i32 @LUA_IMPORT_INT(i32*, i32) #1

declare dso_local i32 @LUA_IMPORT_STR(i32*, i32) #1

declare dso_local i64 @network_mysqld_proto_append_auth_response(i32*, i32*) #1

declare dso_local i32 @network_mysqld_auth_response_free(i32*) #1

declare dso_local i32 @g_string_free(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushlstring(i32*, i32) #1

declare dso_local i32 @S(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
