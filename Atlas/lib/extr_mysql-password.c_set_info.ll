; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_mysql-password.c_set_info.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_mysql-password.c_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"_COPYRIGHT\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Copyright (C) 2008 MySQL AB, 2008 Sun Microsystems, Inc\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"_DESCRIPTION\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"export mysql password encoders to mysql.*\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"LuaMySQLPassword 0.1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @set_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_info(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @lua_pushliteral(i32* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @lua_pushliteral(i32* %5, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_settable(i32* %7, i32 -3)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_pushliteral(i32* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_pushliteral(i32* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @lua_settable(i32* %13, i32 -3)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @lua_pushliteral(i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_pushliteral(i32* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_settable(i32* %19, i32 -3)
  ret void
}

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
