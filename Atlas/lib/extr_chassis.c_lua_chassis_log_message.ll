; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_chassis.c_lua_chassis_log_message.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_chassis.c_lua_chassis_log_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_chassis_log_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_chassis_log_message(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @lua_gettop(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_pushliteral(i32* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_insert(i32* %9, i32 1)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_chassis_log(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @lua_remove(i32* %13, i32 1)
  %15 = load i32, i32* %3, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @lua_gettop(i32* %16)
  %18 = icmp eq i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @g_assert(i32 %19)
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_chassis_log(i32*) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

declare dso_local i32 @g_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
