; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_evictIdleQueues.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_evictIdleQueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@QUEUE_MAX_IDLE_TIME = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@C_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evictIdleQueues() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = call i32 (...) @mstime()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @QUEUE_MAX_IDLE_TIME, align 4
  store i32 %8, i32* %2, align 4
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %9 = call i32 (...) @getMemoryWarningLevel()
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = sdiv i32 %12, 30
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %11, %0
  %15 = call i32 (...) @getMemoryWarningLevel()
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 2, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %14
  br label %19

19:                                               ; preds = %58, %18
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %21 = call i64 @dictSize(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 4
  %25 = call i32* @dictGetRandomKey(i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32* @dictGetVal(i32* %26)
  store i32* %27, i32** %6, align 8
  %28 = load i64, i64* %3, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %3, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %2, align 4
  %32 = call i64 @GCQueue(i32* %30, i32 %31)
  %33 = load i64, i64* @C_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %35, %23
  %39 = load i64, i64* %3, align 8
  %40 = icmp sgt i64 %39, 10
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = mul nsw i64 %42, 10
  %44 = load i64, i64* %3, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %59

47:                                               ; preds = %41, %38
  %48 = load i64, i64* %3, align 8
  %49 = add nsw i64 %48, 1
  %50 = srem i64 %49, 1000
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = call i32 (...) @mstime()
  %54 = load i32, i32* %1, align 4
  %55 = sub nsw i32 %53, %54
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %59

58:                                               ; preds = %52, %47
  br label %19

59:                                               ; preds = %57, %46, %19
  %60 = load i64, i64* %4, align 8
  %61 = trunc i64 %60 to i32
  ret i32 %61
}

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @getMemoryWarningLevel(...) #1

declare dso_local i64 @dictSize(i32) #1

declare dso_local i32* @dictGetRandomKey(i32) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i64 @GCQueue(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
