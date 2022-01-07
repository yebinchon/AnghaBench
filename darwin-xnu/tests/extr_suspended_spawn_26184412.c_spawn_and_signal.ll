; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_suspended_spawn_26184412.c_spawn_and_signal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_suspended_spawn_26184412.c_spawn_and_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"posix_spawnattr_init\00", align 1
@POSIX_SPAWN_START_SUSPENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"posix_spawnattr_setflags\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/usr/bin/true\00", align 1
@__const.spawn_and_signal.argv_child = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@environ = external dso_local global i8**, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"posix_spawn\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"parent: spawned child with pid %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"posix_spawnattr_destroy\00", align 1
@WUNTRACED = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"waitpid should return child we spawned\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"before SIGCONT: must not have exited\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"before SIGCONT: must be stopped\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"parent: continuing child process\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"kill(signal)\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"parent: waiting for child process\0A\00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [39 x i8] c"child should have exited due to signal\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"child should have exited due to SIGKILL\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"child should have exited normally\00", align 1
@EX_OK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [38 x i8] c"child should have exited with success\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"wait returned with pid %d, status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @spawn_and_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spawn_and_signal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @stdout, align 4
  %11 = load i32, i32* @_IONBF, align 4
  %12 = call i32 @setvbuf(i32 %10, i32* null, i32 %11, i32 0)
  %13 = call i32 @posix_spawnattr_init(i32* %4)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @T_QUIET, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @POSIX_SPAWN_START_SUSPENDED, align 4
  %18 = call i32 @posix_spawnattr_setflags(i32* %4, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @T_QUIET, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %22 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([2 x i8*]* @__const.spawn_and_signal.argv_child to i8*), i64 16, i1 false)
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %24 = load i8**, i8*** @environ, align 8
  %25 = call i32 @posix_spawn(i32* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32* null, i32* %4, i8** %23, i8** %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  %30 = call i32 @posix_spawnattr_destroy(i32* %4)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @T_QUIET, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @WUNTRACED, align 4
  %36 = load i32, i32* @WNOHANG, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @waitpid(i32 %34, i32* %8, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @T_ASSERT_EQ(i32 %41, i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @WIFEXITED(i32 %44)
  %46 = call i32 @T_ASSERT_EQ(i32 %45, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @WIFSTOPPED(i32 %47)
  %49 = call i32 @T_ASSERT_EQ(i32 %48, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @kill(i32 %51, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @waitpid(i32 %57, i32* %8, i32 0)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @T_ASSERT_EQ(i32 %61, i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @SIGKILL, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %1
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @WIFSIGNALED(i32 %68)
  %70 = call i32 @T_ASSERT_EQ(i32 %69, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @WTERMSIG(i32 %71)
  %73 = load i32, i32* @SIGKILL, align 4
  %74 = call i32 @T_ASSERT_EQ(i32 %72, i32 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  br label %83

75:                                               ; preds = %1
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @WIFEXITED(i32 %76)
  %78 = call i32 @T_ASSERT_EQ(i32 %77, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @WEXITSTATUS(i32 %79)
  %81 = load i32, i32* @EX_OK, align 4
  %82 = call i32 @T_ASSERT_EQ(i32 %80, i32 %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  br label %83

83:                                               ; preds = %75, %67
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i32 %84, i32 %85)
  ret void
}

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @posix_spawnattr_init(i32*) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*) #1

declare dso_local i32 @posix_spawnattr_setflags(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @posix_spawn(i32*, i8*, i32*, i32*, i8**, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @posix_spawnattr_destroy(i32*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @T_ASSERT_EQ(i32, i32, i8*) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
