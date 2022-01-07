; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_timer.c_timer_resync_deadlines.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_timer.c_timer_resync_deadlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, %struct.TYPE_4__ }

@EndOfAllTime = common dso_local global i64 0, align 8
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DBG_MACH_EXCP_DECI = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_resync_deadlines() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 (...) @splclock()
  store i32 %6, i32* %3, align 4
  %7 = call %struct.TYPE_5__* (...) @getCpuDatap()
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  store i64 0, i64* %1, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %2, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %1, align 8
  br label %23

23:                                               ; preds = %19, %14, %0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %1, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %1, align 8
  br label %38

38:                                               ; preds = %34, %28, %23
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %1, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %1, align 8
  br label %53

53:                                               ; preds = %49, %43, %38
  %54 = load i64, i64* %1, align 8
  %55 = load i64, i64* @EndOfAllTime, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %1, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %57
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %1, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60, %53
  %67 = load i64, i64* %1, align 8
  %68 = call i32 @setPop(i64 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @KDEBUG_TRACE, align 4
  %70 = load i32, i32* @DBG_MACH_EXCP_DECI, align 4
  %71 = call i32 @MACHDBG_CODE(i32 %70, i32 1)
  %72 = load i32, i32* @DBG_FUNC_NONE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %69, i32 %73, i32 %74, i32 2, i32 0, i32 0, i32 0)
  br label %76

76:                                               ; preds = %66, %60, %57
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @splx(i32 %77)
  ret void
}

declare dso_local i32 @splclock(...) #1

declare dso_local %struct.TYPE_5__* @getCpuDatap(...) #1

declare dso_local i32 @setPop(i64) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
