; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_repeats.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_repeats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"loop body may accept empty string\00", align 1
@IChoice = common dso_local global i32 0, align 4
@IPartialCommit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i32)* @repeats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @repeats(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %14, %15
  %17 = add nsw i32 %16, 2
  %18 = call i32* @newpatt(i32* %12, i32 %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @verify(i32* %20, i32* %21, i32* %22, i32* %26, i32 0, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @luaL_error(i32* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @addpatt(i32* %38, i32* %39, i32 1)
  %41 = load i32*, i32** %11, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %11, align 8
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %33

47:                                               ; preds = %33
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %11, align 8
  %50 = load i32, i32* @IChoice, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 1, %51
  %53 = add nsw i32 %52, 1
  %54 = call i32 @setinst(i32* %48, i32 %50, i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @addpatt(i32* %55, i32* %56, i32 1)
  %58 = load i32*, i32** %11, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* @IPartialCommit, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i32 @setinst(i32* %61, i32 %62, i32 %64)
  %66 = load i32*, i32** %10, align 8
  ret i32* %66
}

declare dso_local i32* @newpatt(i32*, i32) #1

declare dso_local i32 @verify(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @addpatt(i32*, i32*, i32) #1

declare dso_local i32 @setinst(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
