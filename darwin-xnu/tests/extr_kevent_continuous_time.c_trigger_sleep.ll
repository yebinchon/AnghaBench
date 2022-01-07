; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_continuous_time.c_trigger_sleep.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_continuous_time.c_trigger_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@run_sleep_tests = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Sleepeing for %s seconds...\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"/usr/bin/pmset\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wake\00", align 1
@environ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"sleepnow\00", align 1
@__const.trigger_sleep.pmset2_args = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @trigger_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trigger_sleep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [10 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i8*], align 16
  %8 = alloca [3 x i8*], align 16
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @run_sleep_tests, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

12:                                               ; preds = %1
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @snprintf(i8* %13, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %17 = call i32 @T_LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  store i8* %22, i8** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* null, i8** %23, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %25 = load i8*, i8** %24, align 16
  %26 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %27 = load i32, i32* @environ, align 4
  %28 = call i32 @posix_spawn(i32* %6, i8* %25, i32* null, i32* null, i8** %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = call i32 @T_ASSERT_POSIX_ZERO(i32 %28, i32* null)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @waitpid(i32 %30, i32* %5, i32 0)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @T_ASSERT_EQ(i32 %31, i32 %32, i32* null)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @T_ASSERT_EQ(i32 %34, i32 0, i32* null)
  %36 = bitcast [3 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 bitcast ([3 x i8*]* @__const.trigger_sleep.pmset2_args to i8*), i64 24, i1 false)
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %38 = load i8*, i8** %37, align 16
  %39 = getelementptr inbounds [3 x i8*], [3 x i8*]* %8, i64 0, i64 0
  %40 = load i32, i32* @environ, align 4
  %41 = call i32 @posix_spawn(i32* %6, i8* %38, i32* null, i32* null, i8** %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = call i32 @T_ASSERT_POSIX_ZERO(i32 %41, i32* null)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @waitpid(i32 %43, i32* %5, i32 0)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @T_ASSERT_EQ(i32 %44, i32 %45, i32* null)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @T_ASSERT_EQ(i32 %47, i32 0, i32* null)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %12, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @T_LOG(i8*, i8*) #1

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i32*) #1

declare dso_local i32 @posix_spawn(i32*, i8*, i32*, i32*, i8**, i32) #1

declare dso_local i32 @T_ASSERT_EQ(i32, i32, i32*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
