; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_global.c_testmain.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_global.c_testmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"global variable\00", align 1
@defaultint = common dso_local global i32 0, align 4
@val = common dso_local global i32 0, align 4
@p1 = common dso_local global i32* null, align 8
@a1 = common dso_local global i32* null, align 8
@a2 = common dso_local global i32* null, align 8
@x1 = common dso_local global i32 0, align 4
@x2 = common dso_local global i32 0, align 4
@x3 = common dso_local global i32 0, align 4
@x4 = common dso_local global i32 0, align 4
@x5 = common dso_local global i32 0, align 4
@x6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@s1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@s2 = common dso_local global i32 0, align 4
@l1 = common dso_local global i32 0, align 4
@intp = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testmain() #0 {
  %1 = call i32 @print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 3, i32* @defaultint, align 4
  %2 = load i32, i32* @defaultint, align 4
  %3 = call i32 @expect(i32 3, i32 %2)
  %4 = load i32, i32* @val, align 4
  %5 = call i32 @expect(i32 21, i32 %4)
  store i32 22, i32* @val, align 4
  %6 = load i32, i32* @val, align 4
  %7 = call i32 @expect(i32 22, i32 %6)
  %8 = load i32*, i32** @p1, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @expect(i32 22, i32 %9)
  %11 = load i32*, i32** @a1, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 23, i32* %12, align 4
  %13 = load i32*, i32** @a1, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @expect(i32 23, i32 %15)
  %17 = load i32*, i32** @a2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @expect(i32 25, i32 %19)
  store i32 1, i32* @x1, align 4
  store i32 2, i32* @x2, align 4
  %21 = load i32, i32* @x1, align 4
  %22 = call i32 @expect(i32 1, i32 %21)
  %23 = load i32, i32* @x2, align 4
  %24 = call i32 @expect(i32 2, i32 %23)
  store i32 3, i32* @x3, align 4
  %25 = load i32, i32* @x3, align 4
  %26 = call i32 @expect(i32 3, i32 %25)
  %27 = load i32, i32* @x4, align 4
  %28 = call i32 @expect(i32 4, i32 %27)
  %29 = load i32, i32* @x5, align 4
  %30 = call i32 @expect(i32 5, i32 %29)
  store i32 6, i32* @x6, align 4
  %31 = load i32, i32* @x6, align 4
  %32 = call i32 @expect(i32 6, i32 %31)
  %33 = load i32, i32* @s1, align 4
  %34 = call i32 @expect_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @s2, align 4
  %36 = call i32 @expect_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @l1, align 4
  %38 = call i32 @expectl(i32 8, i32 %37)
  %39 = load i32*, i32** @intp, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @expectl(i32 9, i32 %40)
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @expect_string(i8*, i32) #1

declare dso_local i32 @expectl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
