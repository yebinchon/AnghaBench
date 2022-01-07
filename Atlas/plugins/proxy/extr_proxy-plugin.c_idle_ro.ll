; ModuleID = '/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_idle_ro.c'
source_filename = "/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_idle_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i64, i64, i32 }

@BACKEND_TYPE_RO = common dso_local global i64 0, align 8
@BACKEND_STATE_UP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @idle_ro(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32 -1, i32* %3, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @network_backends_count(i32* %13)
  store i64 %14, i64* %6, align 8
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %58, %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call %struct.TYPE_9__* @network_backends_get(i32* %20, i64 %21)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %7, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %58

26:                                               ; preds = %19
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = call i32* @chassis_event_thread_pool(%struct.TYPE_9__* %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %58

31:                                               ; preds = %26
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BACKEND_TYPE_RO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BACKEND_STATE_UP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46, %43
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %46
  br label %57

57:                                               ; preds = %56, %37, %31
  br label %58

58:                                               ; preds = %57, %30, %25
  %59 = load i64, i64* %4, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %4, align 8
  br label %15

61:                                               ; preds = %15
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @network_backends_count(i32*) #1

declare dso_local %struct.TYPE_9__* @network_backends_get(i32*, i64) #1

declare dso_local i32* @chassis_event_thread_pool(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
