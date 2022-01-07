; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lbaselib.c_luaB_tostring.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lbaselib.c_luaB_tostring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s: %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_tostring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_tostring(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @luaL_checkany(i32* %4, i32 1)
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @luaL_callmeta(i32* %6, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_type(i32* %11, i32 1)
  switch i32 %12, label %32 [
    i32 129, label %13
    i32 128, label %18
    i32 131, label %21
    i32 130, label %29
  ]

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @lua_tostring(i32* %15, i32 1)
  %17 = call i32 @lua_pushstring(i32* %14, i8* %16)
  br label %39

18:                                               ; preds = %10
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_pushvalue(i32* %19, i32 1)
  br label %39

21:                                               ; preds = %10
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_toboolean(i32* %23, i32 1)
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @lua_pushstring(i32* %22, i8* %27)
  br label %39

29:                                               ; preds = %10
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_pushliteral(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %39

32:                                               ; preds = %10
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @luaL_typename(i32* %34, i32 1)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_topointer(i32* %36, i32 1)
  %38 = call i32 @lua_pushfstring(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %32, %29, %21, %18, %13
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @luaL_checkany(i32*, i32) #1

declare dso_local i64 @luaL_callmeta(i32*, i32, i8*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32, i32) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local i32 @lua_topointer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
