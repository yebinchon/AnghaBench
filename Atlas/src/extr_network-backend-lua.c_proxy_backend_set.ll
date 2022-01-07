; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-backend-lua.c_proxy_backend_set.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-backend-lua.c_proxy_backend_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"proxy.global.backends[...].%s has to be a string\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"proxy.global.backends[...].%s is not writable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_backend_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_backend_set(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @luaL_checkself(i32* %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_2__**
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @luaL_checklstring(i32* %13, i32 2, i32* %5)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @C(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = call i64 @strleq(i8* %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_tointeger(i32* %21, i32 -1)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %64

25:                                               ; preds = %1
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @C(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i64 @strleq(i8* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %25
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @lua_isstring(i32* %32, i32 -1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  store i64 0, i64* %7, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i8* @lua_tolstring(i32* %36, i32 -1, i64* %7)
  store i8* %37, i8** %8, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @g_string_assign_len(i32 %40, i8* %41, i64 %42)
  br label %58

44:                                               ; preds = %31
  %45 = load i32*, i32** %3, align 8
  %46 = call i64 @lua_isnil(i32* %45, i32 -1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @g_string_truncate(i32 %51, i32 0)
  br label %57

53:                                               ; preds = %44
  %54 = load i32*, i32** %3, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @luaL_error(i32* %54, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  store i32 %56, i32* %2, align 4
  br label %65

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %35
  br label %63

59:                                               ; preds = %25
  %60 = load i32*, i32** %3, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @luaL_error(i32* %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  store i32 %62, i32* %2, align 4
  br label %65

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %20
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %59, %53
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i64 @strleq(i8*, i32, i32) #1

declare dso_local i32 @C(i8*) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @g_string_assign_len(i32, i8*, i64) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @g_string_truncate(i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
