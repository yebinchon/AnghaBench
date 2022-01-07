; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ltable.c_luaH_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ltable.c_luaH_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luaO_nilobject = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @luaH_get(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = call i32 @ttype(i32* %7)
  switch i32 %8, label %30 [
    i32 128, label %9
    i32 129, label %14
    i32 131, label %19
    i32 130, label %21
  ]

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @tsvalue(i32* %11)
  %13 = call i32* @luaH_getshortstr(i32* %10, i32 %12)
  store i32* %13, i32** %3, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ivalue(i32* %16)
  %18 = call i32* @luaH_getint(i32* %15, i32 %17)
  store i32* %18, i32** %3, align 8
  br label %34

19:                                               ; preds = %2
  %20 = load i32*, i32** @luaO_nilobject, align 8
  store i32* %20, i32** %3, align 8
  br label %34

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @luaV_tointeger(i32* %22, i32* %6, i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32* @luaH_getint(i32* %26, i32 %27)
  store i32* %28, i32** %3, align 8
  br label %34

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %2, %29
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @getgeneric(i32* %31, i32* %32)
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %30, %25, %19, %14, %9
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32 @ttype(i32*) #1

declare dso_local i32* @luaH_getshortstr(i32*, i32) #1

declare dso_local i32 @tsvalue(i32*) #1

declare dso_local i32* @luaH_getint(i32*, i32) #1

declare dso_local i32 @ivalue(i32*) #1

declare dso_local i32 @luaV_tointeger(i32*, i32*, i32) #1

declare dso_local i32* @getgeneric(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
