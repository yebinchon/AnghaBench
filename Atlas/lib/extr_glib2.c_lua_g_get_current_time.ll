; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_glib2.c_lua_g_get_current_time.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_glib2.c_lua_g_get_current_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"tv_sec\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"tv_usec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_g_get_current_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_g_get_current_time(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %2, align 8
  %4 = call i32 @g_get_current_time(%struct.TYPE_3__* %3)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @lua_newtable(i32* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @lua_pushinteger(i32* %7, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_setfield(i32* %11, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lua_pushinteger(i32* %13, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_setfield(i32* %17, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @g_get_current_time(%struct.TYPE_3__*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
