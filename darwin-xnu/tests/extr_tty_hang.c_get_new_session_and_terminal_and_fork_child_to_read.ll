; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_tty_hang.c_get_new_session_and_terminal_and_fork_child_to_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_tty_hang.c_get_new_session_and_terminal_and_fork_child_to_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"done\00", align 1
@SIGTTIN = common dso_local global i32 0, align 4
@handle_sigttin = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_new_session_and_terminal_and_fork_child_to_read(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca [10 x i8], align 1
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @AF_UNIX, align 4
  %10 = load i32, i32* @SOCK_STREAM, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %12 = call i32 @socketpair(i32 %9, i32 %10, i32 0, i32* %11)
  %13 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %12, i32* null)
  %14 = call i32 (...) @setsid()
  %15 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %14, i32* null)
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = call i32 @open(i8* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %18, i32* null)
  %20 = call i64 (...) @fork()
  store i64 %20, i64* %5, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %21, i32* null)
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %1
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @close(i32 %27)
  %29 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %28, i32* null)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @close(i32 %30)
  %32 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %31, i32* null)
  %33 = call i32 @setpgid(i32 0, i32 0)
  %34 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %33, i32* null)
  %35 = load i8*, i8** %2, align 8
  %36 = load i32, i32* @O_RDWR, align 4
  %37 = call i32 @open(i8* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %37, i32* null)
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @write(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 5)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %45 = call i32 @read(i32 %43, i8* %44, i32 10)
  %46 = load i32, i32* @SIGTTIN, align 4
  %47 = load i32, i32* @handle_sigttin, align 4
  %48 = call i32 @signal(i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %51 = call i32 @read(i32 %49, i8* %50, i32 10)
  %52 = call i32 @exit(i32 0) #3
  unreachable

53:                                               ; preds = %1
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @close(i32 %55)
  %57 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %56, i32* null)
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %61 = call i32 @read(i32 %59, i8* %60, i32 10)
  %62 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %61, i32* null)
  %63 = load i32, i32* %4, align 4
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @tcsetpgrp(i32 %63, i64 %64)
  %66 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %65, i32* null)
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @write(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 5)
  %70 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %69, i32* null)
  %71 = call i32 @sleep(i32 1)
  %72 = load i32, i32* @SIGTTOU, align 4
  %73 = load i32, i32* @SIG_IGN, align 4
  %74 = call i32 @signal(i32 %72, i32 %73)
  %75 = load i32, i32* %4, align 4
  %76 = call i64 (...) @getpid()
  %77 = call i32 @tcsetpgrp(i32 %75, i64 %76)
  %78 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %77, i32* null)
  ret i32 0
}

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i32*) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @setpgid(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @signal(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @tcsetpgrp(i32, i64) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
