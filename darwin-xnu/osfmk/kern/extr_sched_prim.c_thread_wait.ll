; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_thread_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_thread_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }

@TH_RUN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@THREAD_WAITING = common dso_local global i64 0, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_wait(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call i32 (...) @splsched()
  store i32 %9, i32* %8, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = call i32 @wake_lock(%struct.TYPE_8__* %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = call i32 @thread_lock(%struct.TYPE_8__* %12)
  br label %14

14:                                               ; preds = %67, %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = call i64 @thread_isoncpu(%struct.TYPE_8__* %15)
  store i64 %16, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TH_RUN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi i1 [ false, %18 ], [ %27, %21 ]
  br label %30

30:                                               ; preds = %28, %14
  %31 = phi i1 [ true, %14 ], [ %29, %28 ]
  br i1 %31, label %32, label %73

32:                                               ; preds = %30
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TH_RUN, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @cause_ast_check(i32 %45)
  br label %47

47:                                               ; preds = %35, %32
  %48 = load i32, i32* @TRUE, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = call i32 @thread_unlock(%struct.TYPE_8__* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* @THREAD_UNINT, align 4
  %56 = call i64 @assert_wait(i32* %54, i32 %55)
  store i64 %56, i64* %5, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = call i32 @wake_unlock(%struct.TYPE_8__* %57)
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @splx(i32 %59)
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @THREAD_WAITING, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %66 = call i32 @thread_block(i32 %65)
  br label %67

67:                                               ; preds = %64, %47
  %68 = call i32 (...) @splsched()
  store i32 %68, i32* %8, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = call i32 @wake_lock(%struct.TYPE_8__* %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = call i32 @thread_lock(%struct.TYPE_8__* %71)
  br label %14

73:                                               ; preds = %30
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = call i32 @thread_unlock(%struct.TYPE_8__* %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = call i32 @wake_unlock(%struct.TYPE_8__* %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @splx(i32 %78)
  ret void
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @wake_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @thread_lock(%struct.TYPE_8__*) #1

declare dso_local i64 @thread_isoncpu(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cause_ast_check(i32) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_8__*) #1

declare dso_local i64 @assert_wait(i32*, i32) #1

declare dso_local i32 @wake_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
