; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_tty_hang.c_run_test.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_tty_hang.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_WITH_ERRNO = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@T_SETUPBEGIN = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"slave pty is %s\0A\00", align 1
@T_SETUPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Test failed because child received signal %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Test failed because child exited with status %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"test_passed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @T_WITH_ERRNO, align 4
  %9 = load i32, i32* @T_QUIET, align 4
  %10 = load i32, i32* @T_SETUPBEGIN, align 4
  store i8* null, i8** %4, align 8
  %11 = load i32, i32* @O_RDWR, align 4
  %12 = load i32, i32* @O_NOCTTY, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @posix_openpt(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = call i32 @T_ASSERT_POSIX_SUCCESS(i64 %15, i32* null)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @F_SETFL, align 4
  %19 = load i32, i32* @O_NONBLOCK, align 4
  %20 = call i32 @fcntl(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @grantpt(i32 %21)
  %23 = call i32 @T_ASSERT_POSIX_SUCCESS(i64 %22, i32* null)
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @unlockpt(i32 %24)
  %26 = call i32 @T_ASSERT_POSIX_SUCCESS(i64 %25, i32* null)
  %27 = load i32, i32* %3, align 4
  %28 = call i8* @ptsname(i32 %27)
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @T_ASSERT_NOTNULL(i8* %29, i32* null)
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @T_LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @T_SETUPEND, align 4
  %34 = call i64 (...) @fork()
  store i64 %34, i64* %5, align 8
  %35 = call i32 @T_ASSERT_POSIX_SUCCESS(i64 %34, i32* null)
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @close(i32 %39)
  %41 = call i32 @T_ASSERT_POSIX_SUCCESS(i64 %40, i32* null)
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @get_new_session_and_terminal_and_fork_child_to_read(i8* %42)
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i8*, i8** %4, align 8
  %48 = call i64 @revoke(i8* %47)
  %49 = call i32 @T_ASSERT_POSIX_SUCCESS(i64 %48, i32* null)
  br label %50

50:                                               ; preds = %46, %38
  %51 = call i32 @exit(i32 0) #3
  unreachable

52:                                               ; preds = %1
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @dt_waitpid(i64 %53, i32* %6, i32* %7, i32 0)
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @strsignal(i32 %58)
  %60 = call i32 @T_FAIL(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %70

61:                                               ; preds = %52
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @T_FAIL(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %69

67:                                               ; preds = %61
  %68 = call i32 @T_PASS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %64
  br label %70

70:                                               ; preds = %69, %57
  ret void
}

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i64, i32*) #1

declare dso_local i32 @posix_openpt(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i64 @grantpt(i32) #1

declare dso_local i64 @unlockpt(i32) #1

declare dso_local i8* @ptsname(i32) #1

declare dso_local i32 @T_ASSERT_NOTNULL(i8*, i32*) #1

declare dso_local i32 @T_LOG(i8*, i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @get_new_session_and_terminal_and_fork_child_to_read(i8*) #1

declare dso_local i64 @revoke(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @dt_waitpid(i64, i32*, i32*, i32) #1

declare dso_local i32 @T_FAIL(i8*, i32) #1

declare dso_local i32 @strsignal(i32) #1

declare dso_local i32 @T_PASS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
