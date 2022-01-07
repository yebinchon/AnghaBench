; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_lang.c_lang_get_next.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_lang.c_lang_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lang_any = common dso_local global i32 0, align 4
@languages = common dso_local global i32* null, align 8
@lang_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lang_get_next(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, @lang_any
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %1
  %10 = load i32*, i32** @languages, align 8
  store i32* %10, i32** %2, align 8
  br label %27

11:                                               ; preds = %6
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** @languages, align 8
  %14 = icmp ult i32* %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** @languages, align 8
  %18 = load i32, i32* @lang_count, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = getelementptr inbounds i32, i32* %20, i64 -2
  %22 = icmp uge i32* %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15, %11
  store i32* null, i32** %2, align 8
  br label %27

24:                                               ; preds = %15
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %3, align 8
  store i32* %26, i32** %2, align 8
  br label %27

27:                                               ; preds = %24, %23, %9
  %28 = load i32*, i32** %2, align 8
  ret i32* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
