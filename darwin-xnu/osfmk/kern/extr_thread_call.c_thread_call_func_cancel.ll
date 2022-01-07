; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_func_cancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_func_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@thread_call_groups = common dso_local global %struct.TYPE_4__* null, align 8
@THREAD_CALL_INDEX_HIGH = common dso_local global i64 0, align 8
@TCF_ABSOLUTE = common dso_local global i64 0, align 8
@TCF_CONTINUOUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_call_func_cancel(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i32 (...) @disable_ints_and_lock()
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thread_call_groups, align 8
  %16 = load i64, i64* @THREAD_CALL_INDEX_HIGH, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @_cancel_func_from_queue(i32* %21, i32 %22, %struct.TYPE_4__* %23, i32 %24, i32* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @TCF_ABSOLUTE, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i32 @_cancel_func_from_queue(i32* %28, i32 %29, %struct.TYPE_4__* %30, i32 %31, i32* %36)
  %38 = or i32 %27, %37
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @TCF_CONTINUOUS, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = call i32 @_cancel_func_from_queue(i32* %39, i32 %40, %struct.TYPE_4__* %41, i32 %42, i32* %47)
  %49 = or i32 %38, %48
  store i32 %49, i32* %7, align 4
  br label %86

50:                                               ; preds = %3
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = call i32 @_cancel_func_from_queue(i32* %51, i32 %52, %struct.TYPE_4__* %53, i32 %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %83, label %59

59:                                               ; preds = %50
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @TCF_ABSOLUTE, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = call i32 @_cancel_func_from_queue(i32* %60, i32 %61, %struct.TYPE_4__* %62, i32 %63, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %59
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @TCF_CONTINUOUS, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = call i32 @_cancel_func_from_queue(i32* %72, i32 %73, %struct.TYPE_4__* %74, i32 %75, i32* %80)
  %82 = icmp ne i32 %81, 0
  br label %83

83:                                               ; preds = %71, %59, %50
  %84 = phi i1 [ true, %59 ], [ true, %50 ], [ %82, %71 ]
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %83, %20
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @enable_ints_and_unlock(i32 %87)
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @disable_ints_and_lock(...) #1

declare dso_local i32 @_cancel_func_from_queue(i32*, i32, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @enable_ints_and_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
