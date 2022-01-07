; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_cpu_quiesce.c_cpu_quiescent_counter_checkin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_cpu_quiesce.c_cpu_quiescent_counter_checkin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@CPU_QUIESCE_COUNTER_NONE = common dso_local global i64 0, align 8
@CPU_QUIESCE_COUNTER_JOINED = common dso_local global i64 0, align 8
@cpu_checkin_min_interval = common dso_local global i64 0, align 8
@cpu_quiescing_checkin_state = common dso_local global i32 0, align 4
@relaxed = common dso_local global i32 0, align 4
@acq_rel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"old: 0x%lx, new: 0x%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_quiescent_counter_checkin(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = call %struct.TYPE_3__* (...) @current_processor()
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CPU_QUIESCE_COUNTER_NONE, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CPU_QUIESCE_COUNTER_JOINED, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @__probable(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %81

28:                                               ; preds = %1
  %29 = load i64, i64* %2, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = load i64, i64* @cpu_checkin_min_interval, align 8
  %35 = icmp sle i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @__probable(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %81

40:                                               ; preds = %28
  %41 = load i64, i64* %2, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @relaxed, align 4
  %45 = call i32 @os_atomic_load(i32* @cpu_quiescing_checkin_state, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @cpu_expected_bit(i32 %47)
  %49 = and i32 %46, %48
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @cpu_checked_in_bit(i32 %52)
  %54 = and i32 %51, %53
  %55 = call i64 @__probable(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  br label %81

58:                                               ; preds = %40
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @cpu_checked_in_bit(i32 %59)
  %61 = load i32, i32* @acq_rel, align 4
  %62 = call i32 @os_atomic_or_orig(i32* @cpu_quiescing_checkin_state, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @cpu_checked_in_bit(i32 %64)
  %66 = or i32 %63, %65
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @cpu_quiescent_counter_needs_commit(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %58
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @cpu_quiescent_counter_needs_commit(i32 %71)
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @assertf(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i64, i64* %2, align 8
  %80 = call i32 @cpu_quiescent_counter_commit(i64 %79)
  br label %81

81:                                               ; preds = %27, %39, %57, %70, %58
  ret void
}

declare dso_local %struct.TYPE_3__* @current_processor(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @__probable(i32) #1

declare dso_local i32 @os_atomic_load(i32*, i32) #1

declare dso_local i32 @cpu_expected_bit(i32) #1

declare dso_local i32 @cpu_checked_in_bit(i32) #1

declare dso_local i32 @os_atomic_or_orig(i32*, i32, i32) #1

declare dso_local i64 @cpu_quiescent_counter_needs_commit(i32) #1

declare dso_local i32 @assertf(i32, i8*, i32, i32) #1

declare dso_local i32 @cpu_quiescent_counter_commit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
