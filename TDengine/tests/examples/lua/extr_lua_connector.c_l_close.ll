; ModuleID = '/home/carl/AnghaBench/TDengine/tests/examples/lua/extr_lua_connector.c_l_close.c'
source_filename = "/home/carl/AnghaBench/TDengine/tests/examples/lua/extr_lua_connector.c_l_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"null pointer.\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"done.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @l_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_close(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32* @lua_topointer(i32* %5, i32 1)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_newtable(i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_gettop(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @lua_pushnumber(i32* %14, i32 -1)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @lua_setfield(i32* %16, i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_pushstring(i32* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @lua_setfield(i32* %21, i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %37

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @taos_close(i32* %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_pushnumber(i32* %27, i32 0)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @lua_setfield(i32* %29, i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @lua_pushstring(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @lua_setfield(i32* %34, i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %24, %13
  ret i32 1
}

declare dso_local i32* @lua_topointer(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @taos_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
