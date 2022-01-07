; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lfs.c_file_unlock.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lfs.c_file_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"unlock\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_unlock(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32* @check_file(i32* %7, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @luaL_optlong(i32* %9, i32 2, i32 0)
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @luaL_optlong(i32* %12, i32 3, i32 0)
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %6, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @_file_lock(i32* %15, i32* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %17, i64 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_pushboolean(i32* %22, i32 1)
  store i32 1, i32* %2, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_pushnil(i32* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @lua_pushfstring(i32* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i32 2, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32* @check_file(i32*, i32, i8*) #1

declare dso_local i8* @luaL_optlong(i32*, i32, i32) #1

declare dso_local i64 @_file_lock(i32*, i32*, i8*, i64, i64, i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
