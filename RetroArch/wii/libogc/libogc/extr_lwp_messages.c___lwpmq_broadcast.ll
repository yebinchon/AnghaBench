; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_messages.c___lwpmq_broadcast.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_messages.c___lwpmq_broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@LWP_MQ_STATUS_SUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__lwpmq_broadcast(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32*, i32** %11, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* @LWP_MQ_STATUS_SUCCESSFUL, align 4
  store i32 %22, i32* %6, align 4
  br label %60

23:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %44, %23
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = call %struct.TYPE_9__* @__lwp_threadqueue_dequeue(i32* %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %12, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %14, align 8
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %40, %29
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @__lwpmq_buffer_copy(i32 %47, i8* %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32 %51, i32* %55, align 4
  br label %24

56:                                               ; preds = %24
  %57 = load i32, i32* %13, align 4
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @LWP_MQ_STATUS_SUCCESSFUL, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %20
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_9__* @__lwp_threadqueue_dequeue(i32*) #1

declare dso_local i32 @__lwpmq_buffer_copy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
