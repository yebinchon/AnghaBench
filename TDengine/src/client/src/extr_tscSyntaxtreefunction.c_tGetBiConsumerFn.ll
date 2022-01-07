; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSyntaxtreefunction.c_tGetBiConsumerFn.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSyntaxtreefunction.c_tGetBiConsumerFn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@add_function_arraylist = common dso_local global i32*** null, align 8
@sub_function_arraylist = common dso_local global i32*** null, align 8
@multi_function_arraylist = common dso_local global i32*** null, align 8
@div_function_arraylist = common dso_local global i32*** null, align 8
@rem_function_arraylist = common dso_local global i32*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tGetBiConsumerFn(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %59 [
    i32 132, label %9
    i32 128, label %19
    i32 130, label %29
    i32 131, label %39
    i32 129, label %49
  ]

9:                                                ; preds = %3
  %10 = load i32***, i32**** @add_function_arraylist, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32**, i32*** %10, i64 %12
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  br label %60

19:                                               ; preds = %3
  %20 = load i32***, i32**** @sub_function_arraylist, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32**, i32*** %20, i64 %22
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %4, align 8
  br label %60

29:                                               ; preds = %3
  %30 = load i32***, i32**** @multi_function_arraylist, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32**, i32*** %30, i64 %32
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %4, align 8
  br label %60

39:                                               ; preds = %3
  %40 = load i32***, i32**** @div_function_arraylist, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32**, i32*** %40, i64 %42
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %4, align 8
  br label %60

49:                                               ; preds = %3
  %50 = load i32***, i32**** @rem_function_arraylist, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32**, i32*** %50, i64 %52
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %4, align 8
  br label %60

59:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %60

60:                                               ; preds = %59, %49, %39, %29, %19, %9
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
