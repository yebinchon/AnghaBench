; ModuleID = '/home/carl/AnghaBench/capstone/suite/cstest/src/extr_main.c_teardown_issue.c'
source_filename = "/home/carl/AnghaBench/capstone/suite/cstest/src/extr_main.c_teardown_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e_flag = common dso_local global i64 0, align 8
@counter = common dso_local global i64 0, align 8
@size_lines = common dso_local global i64 0, align 8
@list_lines = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"!# \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"// !# \00", align 1
@function = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @teardown_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @teardown_issue(i8** %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load i64, i64* @e_flag, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %19, %5
  %7 = load i64, i64* @counter, align 8
  %8 = load i64, i64* @size_lines, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load i32*, i32** @list_lines, align 8
  %12 = load i64, i64* @counter, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @strncmp(i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %10, %6
  %18 = phi i1 [ false, %6 ], [ %16, %10 ]
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = load i64, i64* @counter, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* @counter, align 8
  br label %6

22:                                               ; preds = %17
  br label %41

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i64, i64* @counter, align 8
  %26 = load i64, i64* @size_lines, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** @list_lines, align 8
  %30 = load i64, i64* @counter, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @strncmp(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %28, %24
  %36 = phi i1 [ false, %24 ], [ %34, %28 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i64, i64* @counter, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* @counter, align 8
  br label %24

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i8**, i8*** %2, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @cs_close(i8* %43)
  %45 = load i8**, i8*** %2, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @free(i8* %46)
  store i32* null, i32** @function, align 8
  ret i32 0
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @cs_close(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
