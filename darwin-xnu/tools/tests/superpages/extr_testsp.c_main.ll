; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/superpages/extr_testsp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Usage: %s <mode>\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\09mode = 0:  test all cases\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\09mode = -1: allocate/deallocate until failure\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\09mode > 0:  run test <tmode>\0A\00", align 1
@test_signal_handler = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Running %d tests:\0A\00", align 1
@TESTS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@error = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c" (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sigaction, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 @exit(i32 0) #3
  unreachable

29:                                               ; preds = %14
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @atoi(i8* %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %29, %2
  %35 = load i32, i32* @test_signal_handler, align 4
  %36 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @SA_RESTART, align 4
  %38 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %10, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @SIGBUS, align 4
  %41 = call i32 @sigaction(i32 %40, %struct.sigaction* %10, i32* null)
  %42 = load i32, i32* @SIGSEGV, align 4
  %43 = call i32 @sigaction(i32 %42, %struct.sigaction* %10, i32* null)
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @testit(i32 %48)
  br label %50

50:                                               ; preds = %46, %34
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i32, i32* @TESTS, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %63, %53
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @TESTS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @testit(i32 %61)
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %56

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %77, %70
  %72 = load i32, i32* @TRUE, align 4
  %73 = call i64 @test_alloc_dealloc(i32 %72)
  store i64 %73, i64* %11, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i32, i32* @stdout, align 4
  %76 = call i32 @fflush(i32 %75)
  br label %77

77:                                               ; preds = %71
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %71, label %80

80:                                               ; preds = %77
  %81 = load i8*, i8** @error, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** @error, align 8
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %80
  br label %89

89:                                               ; preds = %88, %67
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @testit(i32) #1

declare dso_local i64 @test_alloc_dealloc(i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
