; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lua.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lua.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"cannot create state: not enough memory\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@pmain = common dso_local global i32 0, align 4
@LUA_OK = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32* (...) @luaL_newstate()
  store i32* %9, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @l_message(i8* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %17, i32* %3, align 4
  br label %48

18:                                               ; preds = %2
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @lua_pushcfunction(i32* %19, i32* @pmain)
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @lua_pushinteger(i32* %21, i32 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @lua_pushlightuserdata(i32* %24, i8** %25)
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @lua_pcall(i32* %27, i32 2, i32 1, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @lua_toboolean(i32* %29, i32 -1)
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @report(i32* %31, i32 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @lua_close(i32* %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %18
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @LUA_OK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %46

44:                                               ; preds = %38, %18
  %45 = load i32, i32* @EXIT_FAILURE, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %12
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32* @luaL_newstate(...) #1

declare dso_local i32 @l_message(i8*, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i8**) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @report(i32*, i32) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
