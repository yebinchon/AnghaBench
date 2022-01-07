; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_ulock.c_ulock_wait_cleanup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_ulock.c_ulock_wait_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@THREAD_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, i64, i64*)* @ulock_wait_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ulock_wait_cleanup(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = call i32 @ull_assert_owned(%struct.TYPE_7__* %10)
  %12 = load i64, i64* @THREAD_NULL, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load i64*, i64** %8, align 8
  store i64 %16, i64* %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* @THREAD_NULL, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  br label %45

45:                                               ; preds = %22, %4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = call i32 @ull_put(%struct.TYPE_7__* %46)
  %48 = call i32 (...) @turnstile_cleanup()
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @THREAD_NULL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @thread_deallocate(i64 %53)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @THREAD_NULL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @thread_deallocate(i64 %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @THREAD_NULL, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @thread_deallocate(i64 %67)
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i64*, i64** %8, align 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  ret void
}

declare dso_local i32 @ull_assert_owned(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ull_put(%struct.TYPE_7__*) #1

declare dso_local i32 @turnstile_cleanup(...) #1

declare dso_local i32 @thread_deallocate(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
