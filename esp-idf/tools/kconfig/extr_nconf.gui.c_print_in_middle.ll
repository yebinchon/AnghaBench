; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.gui.c_print_in_middle.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.gui.c_print_in_middle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdscr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_in_middle(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32*, i32** @stdscr, align 8
  store i32* %20, i32** %7, align 8
  br label %21

21:                                               ; preds = %19, %6
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @getyx(i32* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 80, i32* %10, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %13, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sdiv i32 %44, 2
  %46 = sitofp i32 %45 to float
  store float %46, float* %16, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load float, float* %16, align 4
  %49 = fptosi float %48 to i32
  %50 = add nsw i32 %47, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @wattrset(i32* %51, i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @mvwprintw(i32* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = call i32 (...) @refresh()
  ret void
}

declare dso_local i32 @getyx(i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @mvwprintw(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @refresh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
