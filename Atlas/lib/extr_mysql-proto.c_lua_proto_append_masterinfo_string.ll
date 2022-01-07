; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_mysql-proto.c_lua_proto_append_masterinfo_string.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_mysql-proto.c_lua_proto_append_masterinfo_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTABLE = common dso_local global i32 0, align 4
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
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_proto_append_masterinfo_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_proto_append_masterinfo_string(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @LUA_TTABLE, align 4
  %7 = call i32 @luaL_checktype(i32* %5, i32 1, i32 %6)
  %8 = call i32* (...) @network_mysqld_masterinfo_new()
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @master_lines, align 4
  %11 = call i32 @LUA_IMPORT_INT(i32* %9, i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @master_log_file, align 4
  %14 = call i32 @LUA_IMPORT_STR(i32* %12, i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @master_log_pos, align 4
  %17 = call i32 @LUA_IMPORT_INT(i32* %15, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @master_host, align 4
  %20 = call i32 @LUA_IMPORT_STR(i32* %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @master_user, align 4
  %23 = call i32 @LUA_IMPORT_STR(i32* %21, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @master_password, align 4
  %26 = call i32 @LUA_IMPORT_STR(i32* %24, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @master_port, align 4
  %29 = call i32 @LUA_IMPORT_INT(i32* %27, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @master_connect_retry, align 4
  %32 = call i32 @LUA_IMPORT_INT(i32* %30, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @master_ssl, align 4
  %35 = call i32 @LUA_IMPORT_INT(i32* %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @master_ssl_ca, align 4
  %38 = call i32 @LUA_IMPORT_STR(i32* %36, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @master_ssl_capath, align 4
  %41 = call i32 @LUA_IMPORT_STR(i32* %39, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @master_ssl_cert, align 4
  %44 = call i32 @LUA_IMPORT_STR(i32* %42, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @master_ssl_cipher, align 4
  %47 = call i32 @LUA_IMPORT_STR(i32* %45, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @master_ssl_key, align 4
  %50 = call i32 @LUA_IMPORT_STR(i32* %48, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @master_ssl_verify_server_cert, align 4
  %53 = call i32 @LUA_IMPORT_INT(i32* %51, i32 %52)
  %54 = call i32* @g_string_new(i32* null)
  store i32* %54, i32** %3, align 8
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @network_mysqld_masterinfo_append(i32* %55, i32* %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @network_mysqld_masterinfo_free(i32* %58)
  %60 = load i32*, i32** %2, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @S(i32* %61)
  %63 = call i32 @lua_pushlstring(i32* %60, i32 %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @g_string_free(i32* %64, i32 %65)
  ret i32 1
}

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32* @network_mysqld_masterinfo_new(...) #1

declare dso_local i32 @LUA_IMPORT_INT(i32*, i32) #1

declare dso_local i32 @LUA_IMPORT_STR(i32*, i32) #1

declare dso_local i32* @g_string_new(i32*) #1

declare dso_local i32 @network_mysqld_masterinfo_append(i32*, i32*) #1

declare dso_local i32 @network_mysqld_masterinfo_free(i32*) #1

declare dso_local i32 @lua_pushlstring(i32*, i32) #1

declare dso_local i32 @S(i32*) #1

declare dso_local i32 @g_string_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
