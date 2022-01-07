; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_optionals.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_optionals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IChoice = common dso_local global i32 0, align 4
@IPartialCommit = common dso_local global i32 0, align 4
@ICommit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @optionals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optionals(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  %14 = mul nsw i32 %11, %13
  %15 = add nsw i32 %14, 1
  %16 = call i32* @newpatt(i32* %10, i32 %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* @IChoice, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = mul nsw i32 %21, %23
  %25 = add nsw i32 1, %24
  %26 = call i32 @setinst(i32* %18, i32 %20, i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %42, %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @addpatt(i32* %32, i32* %33, i32 1)
  %35 = load i32*, i32** %9, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %9, align 8
  %40 = load i32, i32* @IPartialCommit, align 4
  %41 = call i32 @setinst(i32* %38, i32 %40, i32 1)
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %27

45:                                               ; preds = %27
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 -1
  %48 = load i32, i32* @ICommit, align 4
  %49 = call i32 @setinst(i32* %47, i32 %48, i32 1)
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @optimizechoice(i32* %50)
  ret void
}

declare dso_local i32* @newpatt(i32*, i32) #1

declare dso_local i32 @setinst(i32*, i32, i32) #1

declare dso_local i32 @addpatt(i32*, i32*, i32) #1

declare dso_local i32 @optimizechoice(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
