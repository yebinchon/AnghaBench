; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_find_state_byid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_find_state_byid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.pf_state = type { i32 }
%struct.pf_state_cmp = type { i32 }

@pf_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FCNT_STATE_SEARCH = common dso_local global i64 0, align 8
@pf_state_tree_id = common dso_local global i32 0, align 4
@tree_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pf_state* @pf_find_state_byid(%struct.pf_state_cmp* %0) #0 {
  %2 = alloca %struct.pf_state_cmp*, align 8
  store %struct.pf_state_cmp* %0, %struct.pf_state_cmp** %2, align 8
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pf_status, i32 0, i32 0), align 8
  %4 = load i64, i64* @FCNT_STATE_SEARCH, align 8
  %5 = getelementptr inbounds i32, i32* %3, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @pf_state_tree_id, align 4
  %9 = load %struct.pf_state_cmp*, %struct.pf_state_cmp** %2, align 8
  %10 = bitcast %struct.pf_state_cmp* %9 to i8*
  %11 = bitcast i8* %10 to %struct.pf_state*
  %12 = call %struct.pf_state* @RB_FIND(i32 %8, i32* @tree_id, %struct.pf_state* %11)
  ret %struct.pf_state* %12
}

declare dso_local %struct.pf_state* @RB_FIND(i32, i32*, %struct.pf_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
