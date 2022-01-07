; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu_common.c_cpu_signal_handler_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu_common.c_cpu_signal_handler_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@SIGPdisabled = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SIGPdec = common dso_local global i32 0, align 4
@SIGPxcall = common dso_local global i32 0, align 4
@SIGPast = common dso_local global i32 0, align 4
@SIGPdebug = common dso_local global i32 0, align 4
@LWClean = common dso_local global i32 0, align 4
@LWFlush = common dso_local global i32 0, align 4
@SIGPLWClean = common dso_local global i32 0, align 4
@SIGPLWFlush = common dso_local global i32 0, align 4
@SIGPkptimer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_signal_handler_internal(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = call %struct.TYPE_6__* (...) @getCpuDatap()
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = call i32 (...) @current_processor()
  %17 = call i32 @SCHED_STATS_IPI(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @hw_atomic_or(i32* %19, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SIGPdisabled, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %1
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* @TRUE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* @SIGPdisabled, align 4
  %33 = call i32 @hw_atomic_or(i32* %31, i32 %32)
  br label %50

34:                                               ; preds = %25, %1
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SIGPdisabled, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @FALSE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* @SIGPdisabled, align 4
  %47 = xor i32 %46, -1
  %48 = call i32 @hw_atomic_and(i32* %45, i32 %47)
  br label %49

49:                                               ; preds = %43, %39, %34
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %108, %50
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @SIGPdisabled, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %112

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @SIGPdec, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* @SIGPdec, align 4
  %66 = xor i32 %65, -1
  %67 = call i32 @hw_atomic_and(i32* %64, i32 %66)
  %68 = load i64, i64* @FALSE, align 8
  %69 = call i32 @rtclock_intr(i64 %68)
  br label %70

70:                                               ; preds = %62, %57
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @SIGPxcall, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = call i32 @cpu_handle_xcall(%struct.TYPE_6__* %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @SIGPast, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* @SIGPast, align 4
  %87 = xor i32 %86, -1
  %88 = call i32 @hw_atomic_and(i32* %85, i32 %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ast_check(i32 %91)
  br label %93

93:                                               ; preds = %83, %78
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @SIGPdebug, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* @SIGPdebug, align 4
  %102 = xor i32 %101, -1
  %103 = call i32 @hw_atomic_and(i32* %100, i32 %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @DebuggerXCall(i32 %106)
  br label %108

108:                                              ; preds = %98, %93
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = call i32 @hw_atomic_or(i32* %110, i32 0)
  store i32 %111, i32* %4, align 4
  br label %51

112:                                              ; preds = %51
  ret void
}

declare dso_local %struct.TYPE_6__* @getCpuDatap(...) #1

declare dso_local i32 @SCHED_STATS_IPI(i32) #1

declare dso_local i32 @current_processor(...) #1

declare dso_local i32 @hw_atomic_or(i32*, i32) #1

declare dso_local i32 @hw_atomic_and(i32*, i32) #1

declare dso_local i32 @rtclock_intr(i64) #1

declare dso_local i32 @cpu_handle_xcall(%struct.TYPE_6__*) #1

declare dso_local i32 @ast_check(i32) #1

declare dso_local i32 @DebuggerXCall(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
