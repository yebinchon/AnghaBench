; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/os/extr_log.c__os_log_with_args_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/os/extr_log.c__os_log_with_args_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@early_boot_complete = common dso_local global i32 0, align 4
@ATM_TRACE_DISABLE = common dso_local global i32 0, align 4
@ATM_TRACE_OFF = common dso_local global i32 0, align 4
@_os_log_replay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32, i8*, i8*)* @_os_log_with_args_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_os_log_with_args_internal(i32* %0, i32 %1, i8* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = call i32 (...) @atm_get_diagnostic_config()
  store i32 %16, i32* %13, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  br label %66

23:                                               ; preds = %6
  %24 = load i32, i32* @early_boot_complete, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i64 (...) @oslog_is_safe()
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ true, %23 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @ATM_TRACE_DISABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @ATM_TRACE_OFF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %29
  store i32 0, i32* %15, align 4
  br label %43

42:                                               ; preds = %36
  store i32 1, i32* %15, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, @_os_log_replay
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @_os_log_to_msgbuf_internal(i8* %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @_os_log_to_log_internal(i32* %59, i32 %60, i8* %61, i32 %62, i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %22, %58, %55, %52
  ret void
}

declare dso_local i32 @atm_get_diagnostic_config(...) #1

declare dso_local i64 @oslog_is_safe(...) #1

declare dso_local i32 @_os_log_to_msgbuf_internal(i8*, i32, i32, i32) #1

declare dso_local i32 @_os_log_to_log_internal(i32*, i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
