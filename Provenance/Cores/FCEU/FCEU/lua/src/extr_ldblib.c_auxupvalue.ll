; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_ldblib.c_auxupvalue.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_ldblib.c_auxupvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TFUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @auxupvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxupvalue(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @luaL_checkint(i32* %8, i32 2)
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @LUA_TFUNCTION, align 4
  %12 = call i32 @luaL_checktype(i32* %10, i32 1, i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @lua_iscfunction(i32* %13, i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @lua_getupvalue(i32* %21, i32 1, i32 %22)
  br label %28

24:                                               ; preds = %17
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @lua_setupvalue(i32* %25, i32 1, i32 %26)
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i8* [ %23, %20 ], [ %27, %24 ]
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %44

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @lua_pushstring(i32* %34, i8* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = sub nsw i32 0, %39
  %41 = call i32 @lua_insert(i32* %37, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %33, %32, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i64 @lua_iscfunction(i32*, i32) #1

declare dso_local i8* @lua_getupvalue(i32*, i32, i32) #1

declare dso_local i8* @lua_setupvalue(i32*, i32, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
