; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/lua/extr_testlib.c_create_db.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/lua/extr_testlib.c_create_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"second argument must be a function\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"testlib_get_value\00", align 1
@RETRO_VFS_FILE_ACCESS_WRITE = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not open destination file\00", align 1
@value_provider = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @create_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_db(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i8* @luaL_checkstring(i32* %5, i32 -2)
  store i8* %6, i8** %4, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_isfunction(i32* %7, i32 -1)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_pushstring(i32* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @lua_error(i32* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %18 = call i32 @lua_setfield(i32* %16, i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @RETRO_VFS_FILE_ACCESS_WRITE, align 4
  %21 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %22 = call i32* @filestream_open(i8* %19, i32 %20, i32 %21)
  store i32* %22, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @lua_pushstring(i32* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @lua_error(i32* %28)
  br label %30

30:                                               ; preds = %25, %15
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @libretrodb_create(i32* %31, i32* @value_provider, i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @filestream_close(i32* %34)
  ret i32 0
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_error(i32*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32* @filestream_open(i8*, i32, i32) #1

declare dso_local i32 @libretrodb_create(i32*, i32*, i32*) #1

declare dso_local i32 @filestream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
