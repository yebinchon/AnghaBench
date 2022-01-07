; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c__delayed_call_enqueue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c__delayed_call_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32 }

@THREAD_CALL_ONCE = common dso_local global i32 0, align 4
@THREAD_CALL_RUNNING = common dso_local global i32 0, align 4
@THREAD_CALL_RESCHEDULE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TCF_ABSOLUTE = common dso_local global i64 0, align 8
@TCF_CONTINUOUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"tried to move a thread call (%p) between groups (old_queue: %p)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i64)* @_delayed_call_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_delayed_call_enqueue(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @THREAD_CALL_ONCE, align 4
  %13 = load i32, i32* @THREAD_CALL_RUNNING, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @THREAD_CALL_ONCE, align 4
  %19 = load i32, i32* @THREAD_CALL_RUNNING, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp eq i32 %14, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @THREAD_CALL_RESCHEDULE, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @THREAD_CALL_RESCHEDULE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %5, align 4
  br label %97

41:                                               ; preds = %23
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %5, align 4
  br label %97

43:                                               ; preds = %4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = call i32 @CE(%struct.TYPE_7__* %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %8, align 4
  %52 = call i32* @call_entry_enqueue_deadline(i32 %45, i32* %50, i32 %51)
  store i32* %52, i32** %11, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = icmp eq i32* %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %43
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  br label %93

62:                                               ; preds = %43
  %63 = load i32*, i32** %11, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %92

70:                                               ; preds = %62
  %71 = load i32*, i32** %11, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @TCF_ABSOLUTE, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = icmp eq i32* %71, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = load i32*, i32** %11, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @TCF_CONTINUOUS, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = icmp eq i32* %79, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78, %70
  br label %91

87:                                               ; preds = %78
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @panic(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %88, i32* %89)
  br label %91

91:                                               ; preds = %87, %86
  br label %92

92:                                               ; preds = %91, %65
  br label %93

93:                                               ; preds = %92, %57
  %94 = load i32*, i32** %11, align 8
  %95 = icmp ne i32* %94, null
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %41, %39
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32* @call_entry_enqueue_deadline(i32, i32*, i32) #1

declare dso_local i32 @CE(%struct.TYPE_7__*) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
