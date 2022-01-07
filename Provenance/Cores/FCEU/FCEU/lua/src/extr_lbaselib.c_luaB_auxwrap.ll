; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lbaselib.c_luaB_auxwrap.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lbaselib.c_luaB_auxwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_auxwrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_auxwrap(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @lua_upvalueindex(i32 1)
  %7 = call i32* @lua_tothread(i32* %5, i32 %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @lua_gettop(i32* %10)
  %12 = call i32 @auxresume(i32* %8, i32* %9, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @lua_isstring(i32* %16, i32 -1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @luaL_where(i32* %20, i32 1)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @lua_insert(i32* %22, i32 -2)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @lua_concat(i32* %24, i32 2)
  br label %26

26:                                               ; preds = %19, %15
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_error(i32* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32* @lua_tothread(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @auxresume(i32*, i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i32 @luaL_where(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_concat(i32*, i32) #1

declare dso_local i32 @lua_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
