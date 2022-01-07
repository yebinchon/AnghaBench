; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_input.c_nextline.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_input.c_nextline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp = common dso_local global i8* null, align 8
@limit = common dso_local global i8* null, align 8
@lineno = common dso_local global i32 0, align 4
@line = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nextline() #0 {
  br label %1

1:                                                ; preds = %56, %0
  %2 = load i8*, i8** @cp, align 8
  %3 = load i8*, i8** @limit, align 8
  %4 = icmp uge i8* %2, %3
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = call i32 (...) @fillbuf()
  %7 = load i8*, i8** @cp, align 8
  %8 = load i8*, i8** @limit, align 8
  %9 = icmp uge i8* %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load i8*, i8** @limit, align 8
  store i8* %11, i8** @cp, align 8
  br label %12

12:                                               ; preds = %10, %5
  %13 = load i8*, i8** @cp, align 8
  %14 = load i8*, i8** @limit, align 8
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %58

17:                                               ; preds = %12
  br label %46

18:                                               ; preds = %1
  %19 = load i32, i32* @lineno, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @lineno, align 4
  %21 = load i8*, i8** @cp, align 8
  store i8* %21, i8** @line, align 8
  br label %22

22:                                               ; preds = %35, %18
  %23 = load i8*, i8** @cp, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** @cp, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 9
  br label %32

32:                                               ; preds = %27, %22
  %33 = phi i1 [ true, %22 ], [ %31, %27 ]
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** @cp, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** @cp, align 8
  br label %22

38:                                               ; preds = %32
  %39 = load i8*, i8** @cp, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 35
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (...) @resynch()
  call void @nextline()
  br label %45

45:                                               ; preds = %43, %38
  br label %46

46:                                               ; preds = %45, %17
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** @cp, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i8*, i8** @cp, align 8
  %54 = load i8*, i8** @limit, align 8
  %55 = icmp eq i8* %53, %54
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i1 [ false, %47 ], [ %55, %52 ]
  br i1 %57, label %1, label %58

58:                                               ; preds = %16, %56
  ret void
}

declare dso_local i32 @fillbuf(...) #1

declare dso_local i32 @resynch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
