; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/tools/ftrandom/extr_ftrandom.c_do_test.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/tools/ftrandom/extr_ftrandom.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fcnt = common dso_local global i32 0, align 4
@do_test.test_num = internal global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/test%d\00", align 1
@results_dir = common dso_local global i8* null, align 8
@fontlist = common dso_local global i32* null, align 8
@SIGALRM = common dso_local global i32 0, align 4
@abort_test = common dso_local global i32 0, align 4
@child_pid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error found in file `%s'\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Can't fork test case.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = load i32, i32* @fcnt, align 4
  %5 = sub nsw i32 %4, 1
  %6 = call i32 @getRandom(i32 0, i32 %5)
  store i32 %6, i32* %1, align 4
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %8 = load i8*, i8** @results_dir, align 8
  %9 = load i32, i32* @do_test.test_num, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @do_test.test_num, align 4
  %11 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %9)
  %12 = load i32*, i32** @fontlist, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %17 = call i64 @copyfont(i32* %15, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %0
  %20 = load i32, i32* @SIGALRM, align 4
  %21 = load i32, i32* @abort_test, align 4
  %22 = call i32 @signal(i32 %20, i32 %21)
  %23 = call i32 @alarm(i32 20)
  %24 = call i32 (...) @fork()
  store i32 %24, i32* @child_pid, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %28 = call i32 @ExecuteTest(i8* %27)
  br label %51

29:                                               ; preds = %19
  %30 = load i32, i32* @child_pid, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i32, i32* @child_pid, align 4
  %34 = call i32 @waitpid(i32 %33, i32* %3, i32 0)
  %35 = call i32 @alarm(i32 0)
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @WIFSIGNALED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %41 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %45

42:                                               ; preds = %32
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %44 = call i32 @unlink(i8* %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %50

46:                                               ; preds = %29
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %26
  %52 = call i32 @alarm(i32 0)
  br label %53

53:                                               ; preds = %51, %0
  ret void
}

declare dso_local i32 @getRandom(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i64 @copyfont(i32*, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @ExecuteTest(i8*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
