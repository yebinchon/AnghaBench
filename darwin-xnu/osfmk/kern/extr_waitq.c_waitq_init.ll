; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64 }

@SYNC_POLICY_FIXED_PRIORITY = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SYNC_POLICY_REVERSED = common dso_local global i32 0, align 4
@SYNC_POLICY_DISABLE_IRQ = common dso_local global i32 0, align 4
@WQT_QUEUE = common dso_local global i32 0, align 4
@SYNC_POLICY_TURNSTILE = common dso_local global i32 0, align 4
@PRIORITY_QUEUE_BUILTIN_MAX_HEAP = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_init(%struct.waitq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.waitq*, %struct.waitq** %4, align 8
  %7 = icmp ne %struct.waitq* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SYNC_POLICY_FIXED_PRIORITY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %15, i32* %3, align 4
  br label %77

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SYNC_POLICY_REVERSED, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load %struct.waitq*, %struct.waitq** %4, align 8
  %23 = getelementptr inbounds %struct.waitq, %struct.waitq* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SYNC_POLICY_DISABLE_IRQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.waitq*, %struct.waitq** %4, align 8
  %32 = getelementptr inbounds %struct.waitq, %struct.waitq* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.waitq*, %struct.waitq** %4, align 8
  %34 = getelementptr inbounds %struct.waitq, %struct.waitq* %33, i32 0, i32 10
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @WQT_QUEUE, align 4
  %36 = load %struct.waitq*, %struct.waitq** %4, align 8
  %37 = getelementptr inbounds %struct.waitq, %struct.waitq* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SYNC_POLICY_TURNSTILE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.waitq*, %struct.waitq** %4, align 8
  %46 = getelementptr inbounds %struct.waitq, %struct.waitq* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.waitq*, %struct.waitq** %4, align 8
  %48 = getelementptr inbounds %struct.waitq, %struct.waitq* %47, i32 0, i32 8
  store i64 0, i64* %48, align 8
  %49 = load %struct.waitq*, %struct.waitq** %4, align 8
  %50 = getelementptr inbounds %struct.waitq, %struct.waitq* %49, i32 0, i32 7
  store i64 0, i64* %50, align 8
  %51 = load %struct.waitq*, %struct.waitq** %4, align 8
  %52 = getelementptr inbounds %struct.waitq, %struct.waitq* %51, i32 0, i32 6
  store i64 0, i64* %52, align 8
  %53 = load %struct.waitq*, %struct.waitq** %4, align 8
  %54 = call i32 @waitq_lock_init(%struct.waitq* %53)
  %55 = load %struct.waitq*, %struct.waitq** %4, align 8
  %56 = call i64 @waitq_is_turnstile_queue(%struct.waitq* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %16
  %59 = load %struct.waitq*, %struct.waitq** %4, align 8
  %60 = getelementptr inbounds %struct.waitq, %struct.waitq* %59, i32 0, i32 5
  %61 = load i32, i32* @PRIORITY_QUEUE_BUILTIN_MAX_HEAP, align 4
  %62 = call i32 @priority_queue_init(i32* %60, i32 %61)
  %63 = load %struct.waitq*, %struct.waitq** %4, align 8
  %64 = getelementptr inbounds %struct.waitq, %struct.waitq* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  br label %73

69:                                               ; preds = %16
  %70 = load %struct.waitq*, %struct.waitq** %4, align 8
  %71 = getelementptr inbounds %struct.waitq, %struct.waitq* %70, i32 0, i32 4
  %72 = call i32 @queue_init(i32* %71)
  br label %73

73:                                               ; preds = %69, %58
  %74 = load %struct.waitq*, %struct.waitq** %4, align 8
  %75 = getelementptr inbounds %struct.waitq, %struct.waitq* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  %76 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %14
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_lock_init(%struct.waitq*) #1

declare dso_local i64 @waitq_is_turnstile_queue(%struct.waitq*) #1

declare dso_local i32 @priority_queue_init(i32*, i32) #1

declare dso_local i32 @queue_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
