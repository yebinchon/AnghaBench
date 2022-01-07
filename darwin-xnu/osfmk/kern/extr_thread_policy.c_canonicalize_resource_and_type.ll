; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_canonicalize_resource_and_type.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_canonicalize_resource_and_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qos_override_mode = common dso_local global i64 0, align 8
@QOS_OVERRIDE_MODE_OVERHANG_PEAK = common dso_local global i64 0, align 8
@QOS_OVERRIDE_MODE_IGNORE_OVERRIDE = common dso_local global i64 0, align 8
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@THREAD_QOS_OVERRIDE_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@QOS_OVERRIDE_MODE_FINE_GRAINED_OVERRIDE = common dso_local global i64 0, align 8
@QOS_OVERRIDE_MODE_FINE_GRAINED_OVERRIDE_BUT_SINGLE_MUTEX_OVERRIDE = common dso_local global i64 0, align 8
@THREAD_QOS_OVERRIDE_TYPE_PTHREAD_MUTEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @canonicalize_resource_and_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @canonicalize_resource_and_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i64, i64* @qos_override_mode, align 8
  %6 = load i64, i64* @QOS_OVERRIDE_MODE_OVERHANG_PEAK, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @qos_override_mode, align 8
  %10 = load i64, i64* @QOS_OVERRIDE_MODE_IGNORE_OVERRIDE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @USER_ADDR_NULL, align 4
  %14 = load i32*, i32** %3, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @THREAD_QOS_OVERRIDE_TYPE_UNKNOWN, align 4
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  br label %37

17:                                               ; preds = %8
  %18 = load i64, i64* @qos_override_mode, align 8
  %19 = load i64, i64* @QOS_OVERRIDE_MODE_FINE_GRAINED_OVERRIDE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %36

22:                                               ; preds = %17
  %23 = load i64, i64* @qos_override_mode, align 8
  %24 = load i64, i64* @QOS_OVERRIDE_MODE_FINE_GRAINED_OVERRIDE_BUT_SINGLE_MUTEX_OVERRIDE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @THREAD_QOS_OVERRIDE_TYPE_PTHREAD_MUTEX, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @USER_ADDR_NULL, align 4
  %33 = load i32*, i32** %3, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %22
  br label %36

36:                                               ; preds = %35, %21
  br label %37

37:                                               ; preds = %36, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
