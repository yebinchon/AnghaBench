; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lbaselib.c_auxresume.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lbaselib.c_auxresume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"too many arguments to resume\00", align 1
@CO_SUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot resume %s coroutine\00", align 1
@statnames = common dso_local global i32* null, align 8
@LUA_YIELD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"too many results to resume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @auxresume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxresume(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @costatus(i32* %10, i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @lua_checkstack(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @luaL_error(i32* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @CO_SUS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** @statnames, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @lua_pushfstring(i32* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %4, align 4
  br label %70

32:                                               ; preds = %20
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @lua_xmove(i32* %33, i32* %34, i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @lua_setlevel(i32* %37, i32* %38)
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @lua_resume(i32* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @LUA_YIELD, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %45, %32
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @lua_gettop(i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @lua_checkstack(i32* %52, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @luaL_error(i32* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @lua_xmove(i32* %61, i32* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %70

66:                                               ; preds = %45
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @lua_xmove(i32* %67, i32* %68, i32 1)
  store i32 -1, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %60, %24
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @costatus(i32*, i32*) #1

declare dso_local i32 @lua_checkstack(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i32 @lua_setlevel(i32*, i32*) #1

declare dso_local i32 @lua_resume(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
