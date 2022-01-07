; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_poll_select_kevent_paired_fds.c_fd_pair_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_poll_select_kevent_paired_fds.c_fd_pair_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.fd_pair_init.fifo_path = private unnamed_addr constant [26 x i8] c"/tmp/async-io-fifo.XXXXXX\00", align 16
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mkfifo(%s, 0700)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"open(... O_RDONLY)\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"open(... O_WRONLY)\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"unknown descriptor pair type: %d\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"reading descriptor\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"writing descriptor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @fd_pair_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_pair_init(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [26 x i8], align 16
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i32], align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %68 [
    i32 129, label %11
    i32 131, label %16
    i32 130, label %46
    i32 128, label %56
  ]

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @openpty(i32* %12, i32* %13, i32* null, i32* null, i32* null)
  %15 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_SUCCESS(i32 %14, i8* null)
  br label %71

16:                                               ; preds = %3
  %17 = bitcast [26 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 getelementptr inbounds ([26 x i8], [26 x i8]* @__const.fd_pair_init.fifo_path, i32 0, i32 0), i64 26, i1 false)
  %18 = load i32, i32* @T_QUIET, align 4
  %19 = getelementptr inbounds [26 x i8], [26 x i8]* %7, i64 0, i64 0
  %20 = call i32 @mktemp(i8* %19)
  %21 = call i32 @T_ASSERT_NOTNULL(i32 %20, i32* null)
  %22 = getelementptr inbounds [26 x i8], [26 x i8]* %7, i64 0, i64 0
  %23 = call i32 @mkfifo(i8* %22, i32 448)
  %24 = getelementptr inbounds [26 x i8], [26 x i8]* %7, i64 0, i64 0
  %25 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_SUCCESS(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds [26 x i8], [26 x i8]* %7, i64 0, i64 0
  %27 = load i32, i32* @O_RDONLY, align 4
  %28 = load i32, i32* @O_NONBLOCK, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @open(i8* %26, i32 %29)
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @T_QUIET, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_SUCCESS(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %36 = getelementptr inbounds [26 x i8], [26 x i8]* %7, i64 0, i64 0
  %37 = load i32, i32* @O_WRONLY, align 4
  %38 = load i32, i32* @O_NONBLOCK, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @open(i8* %36, i32 %39)
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @T_QUIET, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_SUCCESS(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %71

46:                                               ; preds = %3
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %48 = call i32 @pipe(i32* %47)
  %49 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_SUCCESS(i32 %48, i8* null)
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %71

56:                                               ; preds = %3
  %57 = load i32, i32* @AF_UNIX, align 4
  %58 = load i32, i32* @SOCK_STREAM, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %60 = call i32 @socketpair(i32 %57, i32 %58, i32 0, i32* %59)
  %61 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_SUCCESS(i32 %60, i8* null)
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  br label %71

68:                                               ; preds = %3
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @T_ASSERT_FAIL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %56, %46, %16, %11
  %72 = load i32, i32* @T_QUIET, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @T_ASSERT_NE(i32 %74, i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* @T_QUIET, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @T_ASSERT_NE(i32 %78, i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*, ...) #1

declare dso_local i32 @openpty(i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @T_ASSERT_NOTNULL(i32, i32*) #1

declare dso_local i32 @mktemp(i8*) #1

declare dso_local i32 @mkfifo(i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @T_ASSERT_FAIL(i8*, i32) #1

declare dso_local i32 @T_ASSERT_NE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
