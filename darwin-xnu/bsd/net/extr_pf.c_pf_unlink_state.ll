; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_unlink_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_unlink_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.pf_state = type { i64, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PF_TCPS_PROXY_DST = common dso_local global i64 0, align 8
@TH_RST = common dso_local global i32 0, align 4
@TH_ACK = common dso_local global i32 0, align 4
@HOOK_REMOVE = common dso_local global i32 0, align 4
@HOOK_FREE = common dso_local global i32 0, align 4
@pf_state_tree_id = common dso_local global i32 0, align 4
@tree_id = common dso_local global i32 0, align 4
@PFTM_UNLINKED = common dso_local global i32 0, align 4
@pf_status = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_unlink_state(%struct.pf_state* %0) #0 {
  %2 = alloca %struct.pf_state*, align 8
  store %struct.pf_state* %0, %struct.pf_state** %2, align 8
  %3 = load i32, i32* @pf_lock, align 4
  %4 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %5 = call i32 @LCK_MTX_ASSERT(i32 %3, i32 %4)
  %6 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %7 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PF_TCPS_PROXY_DST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %62

12:                                               ; preds = %1
  %13 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %14 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %18 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %17, i32 0, i32 5
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %23 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %22, i32 0, i32 5
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %28 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %27, i32 0, i32 5
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %33 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %32, i32 0, i32 5
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %40 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %39, i32 0, i32 5
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %47 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %51 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = load i32, i32* @TH_RST, align 4
  %56 = load i32, i32* @TH_ACK, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %59 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pf_send_tcp(i32 %16, i32 %21, i32* %26, i32* %31, i32 %38, i32 %45, i32 %49, i64 %54, i32 %57, i32 0, i32 0, i32 0, i32 1, i32 %60, i32* null, i32* null)
  br label %62

62:                                               ; preds = %12, %1
  %63 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %64 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %63, i32 0, i32 2
  %65 = load i32, i32* @HOOK_REMOVE, align 4
  %66 = load i32, i32* @HOOK_FREE, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @hook_runloop(i32* %64, i32 %67)
  %69 = load i32, i32* @pf_state_tree_id, align 4
  %70 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %71 = call i32 @RB_REMOVE(i32 %69, i32* @tree_id, %struct.pf_state* %70)
  %72 = load i32, i32* @PFTM_UNLINKED, align 4
  %73 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %74 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %76 = call i32 @pf_src_tree_remove_state(%struct.pf_state* %75)
  %77 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %78 = call i32 @pf_detach_state(%struct.pf_state* %77, i32 0)
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @pf_send_tcp(i32, i32, i32*, i32*, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @hook_runloop(i32*, i32) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.pf_state*) #1

declare dso_local i32 @pf_src_tree_remove_state(%struct.pf_state*) #1

declare dso_local i32 @pf_detach_state(%struct.pf_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
