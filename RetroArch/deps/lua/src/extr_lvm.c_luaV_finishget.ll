; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lvm.c_luaV_finishget.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lvm.c_luaV_finishget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAXTAGLOOP = common dso_local global i32 0, align 4
@TM_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@luaH_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"'__index' chain too long; possible loop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_finishget(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %82, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @MAXTAGLOOP, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %85

17:                                               ; preds = %13
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @ttistable(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @lua_assert(i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @TM_INDEX, align 4
  %30 = call i32* @luaT_gettmbyobj(i32* %27, i32* %28, i32 %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @ttisnil(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @luaG_typeerror(i32* %35, i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %20
  br label %56

39:                                               ; preds = %17
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @ttisnil(i32* %40)
  %42 = call i32 @lua_assert(i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call %struct.TYPE_2__* @hvalue(i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TM_INDEX, align 4
  %49 = call i32* @fasttm(i32* %43, i32 %47, i32 %48)
  store i32* %49, i32** %12, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @setnilvalue(i32 %53)
  br label %88

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i32*, i32** %12, align 8
  %58 = call i64 @ttisfunction(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @luaT_callTM(i32* %61, i32* %62, i32* %63, i32* %64, i32 %65, i32 1)
  br label %88

67:                                               ; preds = %56
  %68 = load i32*, i32** %12, align 8
  store i32* %68, i32** %7, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* @luaH_get, align 4
  %74 = call i64 @luaV_fastget(i32* %69, i32* %70, i32* %71, i32* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @setobj2s(i32* %77, i32 %78, i32* %79)
  br label %88

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %13

85:                                               ; preds = %13
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @luaG_runerror(i32* %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %76, %60, %52
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ttistable(i32*) #1

declare dso_local i32* @luaT_gettmbyobj(i32*, i32*, i32) #1

declare dso_local i32 @ttisnil(i32*) #1

declare dso_local i32 @luaG_typeerror(i32*, i32*, i8*) #1

declare dso_local i32* @fasttm(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @hvalue(i32*) #1

declare dso_local i32 @setnilvalue(i32) #1

declare dso_local i64 @ttisfunction(i32*) #1

declare dso_local i32 @luaT_callTM(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @luaV_fastget(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @setobj2s(i32*, i32, i32*) #1

declare dso_local i32 @luaG_runerror(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
