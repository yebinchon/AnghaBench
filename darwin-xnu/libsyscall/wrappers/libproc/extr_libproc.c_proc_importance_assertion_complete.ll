; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_importance_assertion_complete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_importance_assertion_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@important_boost_assertion_token = common dso_local global i32 0, align 4
@PROC_POLICY_SCOPE_PROCESS = common dso_local global i32 0, align 4
@PROC_POLICY_ACTION_DROP = common dso_local global i32 0, align 4
@PROC_POLICY_BOOST = common dso_local global i32 0, align 4
@PROC_POLICY_IMP_IMPORTANT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Attempted to drop too many assertions\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Attempted to drop assertion with invalid token\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_importance_assertion_complete(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, ptrtoint (i32* @important_boost_assertion_token to i64)
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load i32, i32* @PROC_POLICY_SCOPE_PROCESS, align 4
  %13 = load i32, i32* @PROC_POLICY_ACTION_DROP, align 4
  %14 = load i32, i32* @PROC_POLICY_BOOST, align 4
  %15 = load i32, i32* @PROC_POLICY_IMP_IMPORTANT, align 4
  %16 = call i32 (...) @getpid()
  %17 = call i32 @__process_policy(i32 %12, i32 %13, i32 %14, i32 %15, i32* null, i32 %16, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %35

21:                                               ; preds = %11
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EOVERFLOW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = call i32 @proc_importance_bad_assertion(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @errno, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %21
  %30 = load i64, i64* @errno, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %8
  %33 = call i32 @proc_importance_bad_assertion(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %29, %25, %20, %7
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @__process_policy(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @proc_importance_bad_assertion(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
