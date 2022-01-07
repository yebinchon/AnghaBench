; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ltablib.c_addfield.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ltablib.c_addfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"invalid value (%s) at index %d in table for 'concat'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @addfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addfield(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @lua_geti(i32* %7, i32 1, i32 %8)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @lua_isstring(i32* %10, i32 -1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @luaL_typename(i32* %15, i32 -1)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @luaL_error(i32* %14, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @luaL_addvalue(i32* %20)
  ret void
}

declare dso_local i32 @lua_geti(i32*, i32, i32) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32, i32) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local i32 @luaL_addvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
