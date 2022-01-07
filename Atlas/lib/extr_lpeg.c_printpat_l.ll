; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_printpat_l.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_printpat_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d = \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s  \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @printpat_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printpat_l(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @getpatt(i32* %6, i32 1, i32* null)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @lua_getfenv(i32* %8, i32 1)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @lua_objlen(i32* %10, i32 -1)
  store i32 %11, i32* %4, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %13

13:                                               ; preds = %39, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @lua_rawgeti(i32* %20, i32 -1, i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @lua_isstring(i32* %23, i32 -1)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32*, i32** %2, align 8
  %28 = call i8* @lua_tostring(i32* %27, i32 -1)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %36

30:                                               ; preds = %17
  %31 = load i32*, i32** %2, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @lua_type(i32* %32, i32 -1)
  %34 = call i8* @lua_typename(i32* %31, i32 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %30, %26
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @lua_pop(i32* %37, i32 1)
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %13

42:                                               ; preds = %13
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @printpatt(i32* %44)
  ret i32 0
}

declare dso_local i32* @getpatt(i32*, i32, i32*) #1

declare dso_local i32 @lua_getfenv(i32*, i32) #1

declare dso_local i32 @lua_objlen(i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i8* @lua_typename(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @printpatt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
