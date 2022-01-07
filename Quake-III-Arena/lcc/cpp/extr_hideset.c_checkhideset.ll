; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_hideset.c_checkhideset.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_hideset.c_checkhideset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nhidesets = common dso_local global i32 0, align 4
@hidesets = common dso_local global i32*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkhideset(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @nhidesets, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (...) @abort() #2
  unreachable

12:                                               ; preds = %2
  %13 = load i32***, i32**** @hidesets, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32**, i32*** %13, i64 %15
  %17 = load i32**, i32*** %16, align 8
  store i32** %17, i32*** %6, align 8
  br label %18

18:                                               ; preds = %29, %12
  %19 = load i32**, i32*** %6, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32**, i32*** %6, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp eq i32* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %33

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i32 1
  store i32** %31, i32*** %6, align 8
  br label %18

32:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
