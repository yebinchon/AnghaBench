; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-backend-lua.c_proxy_backends_pwds.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-backend-lua.c_proxy_backends_pwds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_USER_EXIST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERR_USER_NOT_EXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_backends_pwds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_backends_pwds(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @luaL_checkself(i32* %9)
  %11 = inttoptr i64 %10 to i32**
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @lua_tointeger(i32* %13, i32 -1)
  store i32 %14, i32* %4, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @lua_tostring(i32* %15, i32 -2)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32* @lua_tostring(i32* %17, i32 -3)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @proxy_pwds_exist(i32* %19, i32* %20)
  store i32 %21, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %57 [
    i32 129, label %23
    i32 130, label %35
    i32 128, label %47
  ]

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @ERR_USER_EXIST, align 4
  store i32 %27, i32* %8, align 4
  br label %34

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i32 @network_backends_addpwd(i32* %29, i32* %30, i32* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %28, %26
  br label %59

35:                                               ; preds = %1
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @ERR_USER_EXIST, align 4
  store i32 %39, i32* %8, align 4
  br label %46

40:                                               ; preds = %35
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i32 @network_backends_addpwd(i32* %41, i32* %42, i32* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %40, %38
  br label %59

47:                                               ; preds = %1
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @ERR_USER_NOT_EXIST, align 4
  store i32 %51, i32* %8, align 4
  br label %56

52:                                               ; preds = %47
  %53 = load i32*, i32** %3, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @network_backends_removepwd(i32* %53, i32* %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %50
  br label %59

57:                                               ; preds = %1
  %58 = call i32 (...) @g_assert_not_reached()
  br label %59

59:                                               ; preds = %57, %56, %46, %34
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @lua_pushinteger(i32* %60, i32 %61)
  ret i32 1
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32* @lua_tostring(i32*, i32) #1

declare dso_local i32 @proxy_pwds_exist(i32*, i32*) #1

declare dso_local i32 @network_backends_addpwd(i32*, i32*, i32*, i32) #1

declare dso_local i32 @network_backends_removepwd(i32*, i32*) #1

declare dso_local i32 @g_assert_not_reached(...) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
