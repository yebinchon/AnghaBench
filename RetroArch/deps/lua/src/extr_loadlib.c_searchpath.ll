; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_loadlib.c_searchpath.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_loadlib.c_searchpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_PATH_MARK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"\0A\09no file '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*, i8*, i8*)* @searchpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @searchpath(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @luaL_buffinit(i32* %14, i32* %12)
  %16 = load i8*, i8** %10, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i8* @luaL_gsub(i32* %21, i8* %22, i8* %23, i8* %24)
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %20, %5
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i8* @pushnexttemplate(i32* %28, i8* %29)
  store i8* %30, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i8* @lua_tostring(i32* %34, i32 -1)
  %36 = load i8*, i8** @LUA_PATH_MARK, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @luaL_gsub(i32* %33, i8* %35, i8* %36, i8* %37)
  store i8* %38, i8** %13, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @lua_remove(i32* %39, i32 -2)
  %41 = load i8*, i8** %13, align 8
  %42 = call i64 @readable(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i8*, i8** %13, align 8
  store i8* %45, i8** %6, align 8
  br label %55

46:                                               ; preds = %32
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @lua_pushfstring(i32* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @lua_remove(i32* %50, i32 -2)
  %52 = call i32 @luaL_addvalue(i32* %12)
  br label %27

53:                                               ; preds = %27
  %54 = call i32 @luaL_pushresult(i32* %12)
  store i8* null, i8** %6, align 8
  br label %55

55:                                               ; preds = %53, %44
  %56 = load i8*, i8** %6, align 8
  ret i8* %56
}

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i8* @luaL_gsub(i32*, i8*, i8*, i8*) #1

declare dso_local i8* @pushnexttemplate(i32*, i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i64 @readable(i8*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*) #1

declare dso_local i32 @luaL_addvalue(i32*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
