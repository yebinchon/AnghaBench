; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/lua/extr_lua_converter.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/lua/extr_lua_converter.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"usage:\0A%s <db file> <lua file> [args ...]\0A\00", align 1
@LUA_COMMON = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_WRITE = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not open destination file '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@value_provider = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 1, i32* %3, align 4
  br label %65

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = call i32* (...) @luaL_newstate()
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @luaL_openlibs(i32* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @LUA_COMMON, align 4
  %30 = call i32 @luaL_dostring(i32* %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @luaL_dofile(i32* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %65

36:                                               ; preds = %18
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, 2
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = call i32 @call_init(i32* %37, i32 %39, i8** %41)
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @RETRO_VFS_FILE_ACCESS_WRITE, align 4
  %45 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %46 = call i32* @filestream_open(i8* %43, i32 %44, i32 %45)
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %36
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* @errno, align 4
  %52 = call i8* @strerror(i32 %51)
  %53 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %52)
  %54 = load i32, i32* @errno, align 4
  store i32 %54, i32* %10, align 4
  br label %59

55:                                               ; preds = %36
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @libretrodb_create(i32* %56, i32* @value_provider, i32* %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @lua_close(i32* %60)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @filestream_close(i32* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %59, %35, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32* @luaL_newstate(...) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @luaL_dostring(i32*, i32) #1

declare dso_local i64 @luaL_dofile(i32*, i8*) #1

declare dso_local i32 @call_init(i32*, i32, i8**) #1

declare dso_local i32* @filestream_open(i8*, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @libretrodb_create(i32*, i32*, i32*) #1

declare dso_local i32 @lua_close(i32*) #1

declare dso_local i32 @filestream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
