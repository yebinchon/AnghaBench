; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_liolib.c_io_type.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_liolib.c_io_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_FILEHANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"closed file\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @io_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_type(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @luaL_checkany(i32* %4, i32 1)
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @lua_touserdata(i32* %6, i32 1)
  store i8* %7, i8** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %10 = load i32, i32* @LUA_FILEHANDLE, align 4
  %11 = call i32 @lua_getfield(i32* %8, i32 %9, i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @lua_getmetatable(i32* %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_rawequal(i32* %19, i32 -2, i32 -1)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18, %14, %1
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @lua_pushnil(i32* %23)
  br label %37

25:                                               ; preds = %18
  %26 = load i8*, i8** %3, align 8
  %27 = bitcast i8* %26 to i32**
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @lua_pushliteral(i32* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %36

33:                                               ; preds = %25
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @lua_pushliteral(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %22
  ret i32 1
}

declare dso_local i32 @luaL_checkany(i32*, i32) #1

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i32) #1

declare dso_local i32 @lua_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_rawequal(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
