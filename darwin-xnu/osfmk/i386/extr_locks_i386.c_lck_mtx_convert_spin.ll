; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_convert_spin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_convert_spin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@LCK_MTX_TAG_INDIRECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"lock %p not owned by thread %p (current owner %p)\00", align 1
@LCK_MTX_MLOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_ILOCKED_MSK = common dso_local global i32 0, align 4
@LCK_MTX_SPIN_MSK = common dso_local global i32 0, align 4
@LCK_MTX_WAITERS_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_mtx_convert_spin(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = call i32 @ordered_load_mtx_state(%struct.TYPE_8__* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @LCK_MTX_TAG_INDIRECT, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @__improbable(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @get_indirect_mutex(%struct.TYPE_8__** %2, i32* %3)
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 (...) @current_thread()
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = call i64 (...) @current_thread()
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @assertf(i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %21, i64 %22, i64 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %29 = and i32 %27, %28
  %30 = call i64 @__improbable(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  br label %58

33:                                               ; preds = %14
  %34 = call i64 (...) @get_preemption_level()
  %35 = icmp sgt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @LCK_MTX_ILOCKED_MSK, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @LCK_MTX_SPIN_MSK, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @LCK_MTX_WAITERS_MSK, align 4
  %48 = and i32 %46, %47
  %49 = call i64 @__improbable(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  call void @lck_mtx_convert_spin_acquire_tail(%struct.TYPE_8__* %52)
  br label %58

53:                                               ; preds = %33
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = call i32 @ordered_load_mtx_state(%struct.TYPE_8__* %55)
  %57 = call i32 @lck_mtx_convert_spin_finish_inline(%struct.TYPE_8__* %54, i32 %56)
  br label %58

58:                                               ; preds = %53, %51, %32
  ret void
}

declare dso_local i32 @ordered_load_mtx_state(%struct.TYPE_8__*) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @get_indirect_mutex(%struct.TYPE_8__**, i32*) #1

declare dso_local i32 @assertf(i32, i8*, %struct.TYPE_8__*, i64, i64) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_preemption_level(...) #1

declare dso_local void @lck_mtx_convert_spin_acquire_tail(%struct.TYPE_8__*) #1

declare dso_local i32 @lck_mtx_convert_spin_finish_inline(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
