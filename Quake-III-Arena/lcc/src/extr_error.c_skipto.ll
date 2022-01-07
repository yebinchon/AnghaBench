; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_error.c_skipto.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_error.c_skipto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t = common dso_local global i32 0, align 4
@EOI = common dso_local global i32 0, align 4
@kind = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"skipping\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" up to\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skipto(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @assert(i8* %7)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %74, %2
  %10 = load i32, i32* @t, align 4
  %11 = load i32, i32* @EOI, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @t, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %14, %15
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %76

19:                                               ; preds = %17
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %40, %19
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i8*, i8** @kind, align 8
  %28 = load i32, i32* @t, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %32, %35
  br label %37

37:                                               ; preds = %26, %21
  %38 = phi i1 [ false, %21 ], [ %36, %26 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  br label %21

43:                                               ; preds = %37
  %44 = load i8*, i8** @kind, align 8
  %45 = load i32, i32* @t, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %76

55:                                               ; preds = %43
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 @error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i32, i32* %5, align 4
  %63 = icmp sle i32 %62, 8
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (...) @printtoken()
  br label %73

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 9
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @stderr, align 4
  %71 = call i32 @fprint(i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %64
  br label %74

74:                                               ; preds = %73
  %75 = call i32 (...) @gettok()
  store i32 %75, i32* @t, align 4
  br label %9

76:                                               ; preds = %54, %17
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %77, 8
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 @fprint(i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %82 = call i32 (...) @printtoken()
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %5, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 @fprint(i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %83
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @printtoken(...) #1

declare dso_local i32 @fprint(i32, i8*) #1

declare dso_local i32 @gettok(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
