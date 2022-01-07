; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_exception.c_check_exc_receiver_dependency.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_exception.c_check_exc_receiver_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_action = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@EXC_CRASH = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_exc_receiver_dependency(i64 %0, %struct.exception_action* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.exception_action*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.exception_action* %1, %struct.exception_action** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.exception_action*, %struct.exception_action** %6, align 8
  %13 = icmp eq %struct.exception_action* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @EXC_CRASH, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %50

20:                                               ; preds = %14
  %21 = call %struct.TYPE_6__* (...) @current_task()
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %9, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @lck_mtx_lock(i32* %22)
  %24 = load %struct.exception_action*, %struct.exception_action** %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.exception_action, %struct.exception_action* %24, i64 %25
  %27 = getelementptr inbounds %struct.exception_action, %struct.exception_action* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %10, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %30 = call i64 @IP_VALID(%struct.TYPE_7__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %20
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = call i64 @ip_active(%struct.TYPE_7__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %36, %32, %20
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @lck_mtx_unlock(i32* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_6__* @current_task(...) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i64 @IP_VALID(%struct.TYPE_7__*) #1

declare dso_local i64 @ip_active(%struct.TYPE_7__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
