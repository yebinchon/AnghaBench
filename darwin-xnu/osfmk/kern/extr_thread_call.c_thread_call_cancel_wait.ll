; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_cancel_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_cancel_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }

@THREAD_CALL_ALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"thread_call_cancel_wait: can't wait on thread call whose storage I don't own\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unsafe thread_call_cancel_wait\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"thread_call_cancel_wait: deadlock waiting on self from inside call: %p to function %p\00", align 1
@THREAD_CALL_ONCE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @thread_call_cancel_wait(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @THREAD_CALL_ALLOC, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = call i32 (...) @ml_get_interrupts_enabled()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = call %struct.TYPE_12__* (...) @current_thread()
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = icmp eq %struct.TYPE_11__* %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_11__* %26, i32 %30)
  br label %32

32:                                               ; preds = %25, %18
  %33 = call i32 (...) @disable_ints_and_lock()
  store i32 %33, i32* %3, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = call i64 @thread_call_cancel_locked(%struct.TYPE_11__* %34)
  store i64 %35, i64* %4, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @THREAD_CALL_ONCE, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @THREAD_CALL_ONCE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @thread_call_wait_once_locked(%struct.TYPE_11__* %44, i32 %45)
  br label %59

47:                                               ; preds = %32
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @FALSE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @thread_call_wait_locked(%struct.TYPE_11__* %52, i32 %53)
  br label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @enable_ints_and_unlock(i32 %56)
  br label %58

58:                                               ; preds = %55, %51
  br label %59

59:                                               ; preds = %58, %43
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local %struct.TYPE_12__* @current_thread(...) #1

declare dso_local i32 @disable_ints_and_lock(...) #1

declare dso_local i64 @thread_call_cancel_locked(%struct.TYPE_11__*) #1

declare dso_local i32 @thread_call_wait_once_locked(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @thread_call_wait_locked(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @enable_ints_and_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
