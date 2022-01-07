; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_wait_once.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_wait_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }

@THREAD_CALL_ALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"thread_call_wait_once: can't wait on thread call whose storage I don't own\00", align 1
@THREAD_CALL_ONCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"thread_call_wait_once: can't wait_once on a non-once call\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unsafe thread_call_wait_once\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"thread_call_wait_once: deadlock waiting on self from inside call: %p to function %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_call_wait_once(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @THREAD_CALL_ALLOC, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @THREAD_CALL_ONCE, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %13
  %23 = call i32 (...) @ml_get_interrupts_enabled()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = call %struct.TYPE_10__* (...) @current_thread()
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = icmp eq %struct.TYPE_9__* %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %35, i32 %39)
  br label %41

41:                                               ; preds = %34, %27
  %42 = call i32 (...) @disable_ints_and_lock()
  store i32 %42, i32* %3, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @thread_call_wait_once_locked(%struct.TYPE_9__* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @ml_get_interrupts_enabled(...) #1

declare dso_local %struct.TYPE_10__* @current_thread(...) #1

declare dso_local i32 @disable_ints_and_lock(...) #1

declare dso_local i32 @thread_call_wait_once_locked(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
