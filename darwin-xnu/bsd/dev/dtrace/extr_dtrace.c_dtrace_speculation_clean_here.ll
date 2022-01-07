; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_speculation_clean_here.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_speculation_clean_here.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i64, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32* }

@CPU = common dso_local global %struct.TYPE_10__* null, align 8
@DTRACESPEC_DISCARDING = common dso_local global i64 0, align 8
@DTRACESPEC_COMMITTINGMANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @dtrace_speculation_clean_here to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_speculation_clean_here(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** @CPU, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i64 %15
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %5, align 8
  %17 = call i32 (...) @dtrace_interrupt_disable()
  store i32 %17, i32* %3, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @dtrace_interrupt_enable(i32 %23)
  br label %82

25:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %76, %25
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %36
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %7, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 %41
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %8, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %76

48:                                               ; preds = %32
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DTRACESPEC_DISCARDING, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %76

57:                                               ; preds = %48
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DTRACESPEC_COMMITTINGMANY, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %76

64:                                               ; preds = %57
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %76

70:                                               ; preds = %64
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 1
  %75 = call i32 @dtrace_speculation_commit(%struct.TYPE_7__* %71, i64 %72, i64 %74)
  br label %76

76:                                               ; preds = %70, %69, %63, %54, %47
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %26

79:                                               ; preds = %26
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @dtrace_interrupt_enable(i32 %80)
  br label %82

82:                                               ; preds = %79, %22
  ret void
}

declare dso_local i32 @dtrace_interrupt_disable(...) #1

declare dso_local i32 @dtrace_interrupt_enable(i32) #1

declare dso_local i32 @dtrace_speculation_commit(%struct.TYPE_7__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
