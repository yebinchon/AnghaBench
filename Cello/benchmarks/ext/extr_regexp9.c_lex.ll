; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_lex.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yyrune = common dso_local global i32 0, align 4
@END = common dso_local global i32 0, align 4
@RUNE = common dso_local global i32 0, align 4
@STAR = common dso_local global i32 0, align 4
@QUEST = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@OR = common dso_local global i32 0, align 4
@LBRA = common dso_local global i32 0, align 4
@RBRA = common dso_local global i32 0, align 4
@BOL = common dso_local global i32 0, align 4
@EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @lex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i32 @nextc(i32* @yyrune)
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @yyrune, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @END, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %13
  %19 = load i32, i32* @RUNE, align 4
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %10
  %21 = load i32, i32* @yyrune, align 4
  switch i32 %21, label %44 [
    i32 0, label %22
    i32 42, label %24
    i32 63, label %26
    i32 43, label %28
    i32 124, label %30
    i32 46, label %32
    i32 40, label %34
    i32 41, label %36
    i32 94, label %38
    i32 36, label %40
    i32 91, label %42
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @END, align 4
  store i32 %23, i32* %3, align 4
  br label %46

24:                                               ; preds = %20
  %25 = load i32, i32* @STAR, align 4
  store i32 %25, i32* %3, align 4
  br label %46

26:                                               ; preds = %20
  %27 = load i32, i32* @QUEST, align 4
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %20
  %29 = load i32, i32* @PLUS, align 4
  store i32 %29, i32* %3, align 4
  br label %46

30:                                               ; preds = %20
  %31 = load i32, i32* @OR, align 4
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %20
  %35 = load i32, i32* @LBRA, align 4
  store i32 %35, i32* %3, align 4
  br label %46

36:                                               ; preds = %20
  %37 = load i32, i32* @RBRA, align 4
  store i32 %37, i32* %3, align 4
  br label %46

38:                                               ; preds = %20
  %39 = load i32, i32* @BOL, align 4
  store i32 %39, i32* %3, align 4
  br label %46

40:                                               ; preds = %20
  %41 = load i32, i32* @EOL, align 4
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %20
  %43 = call i32 (...) @bldcclass()
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %20
  %45 = load i32, i32* @RUNE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %18, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @nextc(i32*) #1

declare dso_local i32 @bldcclass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
