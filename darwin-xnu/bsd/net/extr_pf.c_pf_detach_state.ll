; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_detach_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_detach_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { %struct.pf_state_key* }
%struct.pf_state_key = type { i64, %struct.pf_state_key*, i32 }

@next = common dso_local global i32 0, align 4
@PF_DT_SKIP_EXTGWY = common dso_local global i32 0, align 4
@pf_state_tree_ext_gwy = common dso_local global i32 0, align 4
@pf_statetbl_ext_gwy = common dso_local global i32 0, align 4
@PF_DT_SKIP_LANEXT = common dso_local global i32 0, align 4
@pf_state_tree_lan_ext = common dso_local global i32 0, align 4
@pf_statetbl_lan_ext = common dso_local global i32 0, align 4
@pf_app_state_pl = common dso_local global i32 0, align 4
@pf_state_key_pl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_state*, i32)* @pf_detach_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_detach_state(%struct.pf_state* %0, i32 %1) #0 {
  %3 = alloca %struct.pf_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pf_state_key*, align 8
  store %struct.pf_state* %0, %struct.pf_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %7 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %6, i32 0, i32 0
  %8 = load %struct.pf_state_key*, %struct.pf_state_key** %7, align 8
  store %struct.pf_state_key* %8, %struct.pf_state_key** %5, align 8
  %9 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %10 = icmp eq %struct.pf_state_key* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %14 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %13, i32 0, i32 0
  store %struct.pf_state_key* null, %struct.pf_state_key** %14, align 8
  %15 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %16 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %15, i32 0, i32 2
  %17 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %18 = load i32, i32* @next, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* %16, %struct.pf_state* %17, i32 %18)
  %20 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %21 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %12
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PF_DT_SKIP_EXTGWY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @pf_state_tree_ext_gwy, align 4
  %32 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %33 = call i32 @RB_REMOVE(i32 %31, i32* @pf_statetbl_ext_gwy, %struct.pf_state_key* %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PF_DT_SKIP_LANEXT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @pf_state_tree_lan_ext, align 4
  %41 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %42 = call i32 @RB_REMOVE(i32 %40, i32* @pf_statetbl_lan_ext, %struct.pf_state_key* %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %45 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %44, i32 0, i32 1
  %46 = load %struct.pf_state_key*, %struct.pf_state_key** %45, align 8
  %47 = icmp ne %struct.pf_state_key* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %50 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %49, i32 0, i32 1
  %51 = load %struct.pf_state_key*, %struct.pf_state_key** %50, align 8
  %52 = call i32 @pool_put(i32* @pf_app_state_pl, %struct.pf_state_key* %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %55 = call i32 @pool_put(i32* @pf_state_key_pl, %struct.pf_state_key* %54)
  br label %56

56:                                               ; preds = %11, %53, %12
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pf_state*, i32) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.pf_state_key*) #1

declare dso_local i32 @pool_put(i32*, %struct.pf_state_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
