; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lbaselib.c_luaB_newproxy.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lbaselib.c_luaB_newproxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"boolean or proxy expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_newproxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_newproxy(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @lua_settop(i32* %5, i32 1)
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @lua_newuserdata(i32* %7, i32 0)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_toboolean(i32* %9, i32 1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @lua_isboolean(i32* %14, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @lua_newtable(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_pushvalue(i32* %20, i32 -1)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_pushboolean(i32* %22, i32 1)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_upvalueindex(i32 1)
  %26 = call i32 @lua_rawset(i32* %24, i32 %25)
  br label %45

27:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @lua_getmetatable(i32* %28, i32 1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_upvalueindex(i32 1)
  %34 = call i32 @lua_rawget(i32* %32, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @lua_toboolean(i32* %35, i32 -1)
  store i32 %36, i32* %4, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @lua_pop(i32* %37, i32 1)
  br label %39

39:                                               ; preds = %31, %27
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @luaL_argcheck(i32* %40, i32 %41, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @lua_getmetatable(i32* %43, i32 1)
  br label %45

45:                                               ; preds = %39, %17
  br label %46

46:                                               ; preds = %45
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_setmetatable(i32* %47, i32 2)
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i64 @lua_isboolean(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i64 @lua_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
