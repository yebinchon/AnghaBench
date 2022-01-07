; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_timer.c_timer_resync_deadlines.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_i386_timer.c_timer_resync_deadlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i32 }

@EndOfAllTime = common dso_local global i64 0, align 8
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DECR_SET_DEADLINE = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_resync_deadlines() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = load i64, i64* @EndOfAllTime, align 8
  store i64 %9, i64* %1, align 8
  %10 = call i32 (...) @splclock()
  store i32 %10, i32* %5, align 4
  %11 = call %struct.TYPE_8__* (...) @current_cpu_datap()
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %0
  br label %92

17:                                               ; preds = %0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %4, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 0, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EndOfAllTime, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %1, align 8
  br label %39

39:                                               ; preds = %35, %29, %24, %17
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = call i64 @pmCPUGetDeadline(%struct.TYPE_8__* %40)
  store i64 %41, i64* %2, align 8
  %42 = load i64, i64* %2, align 8
  %43 = icmp slt i64 0, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* %1, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* %2, align 8
  store i64 %49, i64* %1, align 8
  br label %50

50:                                               ; preds = %48, %44, %39
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* %1, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* %3, align 8
  store i64 %61, i64* %1, align 8
  br label %62

62:                                               ; preds = %60, %56, %50
  %63 = load i64, i64* %1, align 8
  %64 = call i64 @setPop(i64 %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %62
  %68 = load i64, i64* %1, align 8
  %69 = load i64, i64* %2, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  store i64 0, i64* %8, align 8
  %72 = load i64, i64* %1, align 8
  %73 = load i64, i64* %3, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %75, %71
  %81 = load i32, i32* @KDEBUG_TRACE, align 4
  %82 = load i32, i32* @DECR_SET_DEADLINE, align 4
  %83 = load i32, i32* @DBG_FUNC_NONE, align 4
  %84 = or i32 %82, %83
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %1, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %81, i32 %84, i64 %85, i32 2, i64 %86, i64 %87, i32 0)
  br label %89

89:                                               ; preds = %80, %67, %62
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @splx(i32 %90)
  br label %92

92:                                               ; preds = %89, %16
  ret void
}

declare dso_local i32 @splclock(...) #1

declare dso_local %struct.TYPE_8__* @current_cpu_datap(...) #1

declare dso_local i64 @pmCPUGetDeadline(%struct.TYPE_8__*) #1

declare dso_local i64 @setPop(i64) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i64, i32, i64, i64, i32) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
