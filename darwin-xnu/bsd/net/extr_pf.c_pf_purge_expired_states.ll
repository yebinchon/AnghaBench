; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_purge_expired_states.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_purge_expired_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { i64 }

@pf_purge_expired_states.cur = internal global %struct.pf_state* null, align 8
@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@state_list = common dso_local global i32 0, align 4
@entry_list = common dso_local global i32 0, align 4
@PFTM_UNLINKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_purge_expired_states(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pf_state*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @pf_lock, align 4
  %5 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %6 = call i32 @LCK_MTX_ASSERT(i32 %4, i32 %5)
  br label %7

7:                                                ; preds = %43, %1
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %2, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = load %struct.pf_state*, %struct.pf_state** @pf_purge_expired_states.cur, align 8
  %13 = icmp eq %struct.pf_state* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = call %struct.pf_state* @TAILQ_FIRST(i32* @state_list)
  store %struct.pf_state* %15, %struct.pf_state** @pf_purge_expired_states.cur, align 8
  %16 = load %struct.pf_state*, %struct.pf_state** @pf_purge_expired_states.cur, align 8
  %17 = icmp eq %struct.pf_state* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %45

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %11
  %21 = load %struct.pf_state*, %struct.pf_state** @pf_purge_expired_states.cur, align 8
  %22 = load i32, i32* @entry_list, align 4
  %23 = call %struct.pf_state* @TAILQ_NEXT(%struct.pf_state* %21, i32 %22)
  store %struct.pf_state* %23, %struct.pf_state** %3, align 8
  %24 = load %struct.pf_state*, %struct.pf_state** @pf_purge_expired_states.cur, align 8
  %25 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PFTM_UNLINKED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.pf_state*, %struct.pf_state** @pf_purge_expired_states.cur, align 8
  %31 = call i32 @pf_free_state(%struct.pf_state* %30)
  br label %43

32:                                               ; preds = %20
  %33 = load %struct.pf_state*, %struct.pf_state** @pf_purge_expired_states.cur, align 8
  %34 = call i64 @pf_state_expires(%struct.pf_state* %33)
  %35 = call i64 (...) @pf_time_second()
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.pf_state*, %struct.pf_state** @pf_purge_expired_states.cur, align 8
  %39 = call i32 @pf_unlink_state(%struct.pf_state* %38)
  %40 = load %struct.pf_state*, %struct.pf_state** @pf_purge_expired_states.cur, align 8
  %41 = call i32 @pf_free_state(%struct.pf_state* %40)
  br label %42

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  store %struct.pf_state* %44, %struct.pf_state** @pf_purge_expired_states.cur, align 8
  br label %7

45:                                               ; preds = %18, %7
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local %struct.pf_state* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.pf_state* @TAILQ_NEXT(%struct.pf_state*, i32) #1

declare dso_local i32 @pf_free_state(%struct.pf_state*) #1

declare dso_local i64 @pf_state_expires(%struct.pf_state*) #1

declare dso_local i64 @pf_time_second(...) #1

declare dso_local i32 @pf_unlink_state(%struct.pf_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
