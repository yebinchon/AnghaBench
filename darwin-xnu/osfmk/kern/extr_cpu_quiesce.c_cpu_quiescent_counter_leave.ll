; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_cpu_quiesce.c_cpu_quiescent_counter_leave.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_cpu_quiesce.c_cpu_quiescent_counter_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@CPU_QUIESCE_COUNTER_JOINED = common dso_local global i64 0, align 8
@CPU_QUIESCE_COUNTER_PENDING_JOIN = common dso_local global i64 0, align 8
@AST_UNQUIESCE = common dso_local global i32 0, align 4
@CPU_QUIESCE_COUNTER_LEFT = common dso_local global i8* null, align 8
@cpu_quiescing_checkin_state = common dso_local global i32 0, align 4
@acq_rel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_quiescent_counter_leave(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call %struct.TYPE_3__* (...) @current_processor()
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CPU_QUIESCE_COUNTER_JOINED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CPU_QUIESCE_COUNTER_PENDING_JOIN, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %17, %1
  %24 = phi i1 [ true, %1 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @AST_UNQUIESCE, align 4
  %28 = call i32 @ast_off(i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CPU_QUIESCE_COUNTER_PENDING_JOIN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load i8*, i8** @CPU_QUIESCE_COUNTER_LEFT, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %76

39:                                               ; preds = %23
  %40 = load i32, i32* %2, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @cpu_checked_in_bit(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @cpu_expected_bit(i32 %45)
  %47 = or i32 %44, %46
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* @acq_rel, align 4
  %51 = call i32 @os_atomic_and_orig(i32* @cpu_quiescing_checkin_state, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @cpu_expected_bit(i32 %53)
  %55 = and i32 %52, %54
  %56 = call i32 @assert(i32 %55)
  %57 = load i8*, i8** @CPU_QUIESCE_COUNTER_LEFT, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @cpu_quiescent_counter_needs_commit(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %39
  br label %76

65:                                               ; preds = %39
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @cpu_quiescent_counter_needs_commit(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @cpu_quiescent_counter_commit(i32 %74)
  br label %76

76:                                               ; preds = %34, %64, %73, %65
  ret void
}

declare dso_local %struct.TYPE_3__* @current_processor(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ast_off(i32) #1

declare dso_local i32 @cpu_checked_in_bit(i32) #1

declare dso_local i32 @cpu_expected_bit(i32) #1

declare dso_local i32 @os_atomic_and_orig(i32*, i32, i32) #1

declare dso_local i64 @cpu_quiescent_counter_needs_commit(i32) #1

declare dso_local i32 @cpu_quiescent_counter_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
