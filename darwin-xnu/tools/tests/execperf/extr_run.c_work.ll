; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/execperf/extr_run.c_work.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/execperf/extr_run.c_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@newargv = common dso_local global i32* null, align 8
@environ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"posix_spawn(%s)\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"waitpid(%d)\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"process exited with signal %d\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"process stopped with signal %d\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"process exited with unexpected exit code %d\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"unknown exit condition %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @work(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %77, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %80

14:                                               ; preds = %10
  %15 = load i32*, i32** @newargv, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** @newargv, align 8
  %19 = load i32, i32* @environ, align 4
  %20 = call i32 @posix_spawn(i32* %6, i32 %17, i32* null, i32* null, i32* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** @newargv, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @errc(i32 1, i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %14
  br label %30

30:                                               ; preds = %41, %29
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @waitpid(i32 %31, i32* %5, i32 0)
  %33 = icmp eq i32 -1, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EINTR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %34
  br label %30

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @WIFSIGNALED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @WTERMSIG(i32 %47)
  %49 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %76

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @WIFSTOPPED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @WSTOPSIG(i32 %55)
  %57 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %75

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @WIFEXITED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @WEXITSTATUS(i32 %63)
  %65 = icmp ne i32 %64, 42
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @WEXITSTATUS(i32 %67)
  %69 = call i32 @errx(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %62
  br label %74

71:                                               ; preds = %58
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %70
  br label %75

75:                                               ; preds = %74, %54
  br label %76

76:                                               ; preds = %75, %46
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %10

80:                                               ; preds = %10
  ret i8* null
}

declare dso_local i32 @posix_spawn(i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @errc(i32, i32, i8*, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i32 @WSTOPSIG(i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
