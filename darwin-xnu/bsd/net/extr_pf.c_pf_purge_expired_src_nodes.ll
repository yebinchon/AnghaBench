; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_purge_expired_src_nodes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_purge_expired_src_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.pf_src_node = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@pf_src_tree = common dso_local global i32 0, align 4
@tree_src_tracking = common dso_local global i32 0, align 4
@pf_status = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SCNT_SRC_NODE_REMOVALS = common dso_local global i64 0, align 8
@pf_src_tree_pl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_purge_expired_src_nodes() #0 {
  %1 = alloca %struct.pf_src_node*, align 8
  %2 = alloca %struct.pf_src_node*, align 8
  %3 = load i32, i32* @pf_lock, align 4
  %4 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %5 = call i32 @LCK_MTX_ASSERT(i32 %3, i32 %4)
  %6 = load i32, i32* @pf_src_tree, align 4
  %7 = call %struct.pf_src_node* @RB_MIN(i32 %6, i32* @tree_src_tracking)
  store %struct.pf_src_node* %7, %struct.pf_src_node** %1, align 8
  br label %8

8:                                                ; preds = %75, %0
  %9 = load %struct.pf_src_node*, %struct.pf_src_node** %1, align 8
  %10 = icmp ne %struct.pf_src_node* %9, null
  br i1 %10, label %11, label %77

11:                                               ; preds = %8
  %12 = load i32, i32* @pf_src_tree, align 4
  %13 = load %struct.pf_src_node*, %struct.pf_src_node** %1, align 8
  %14 = call %struct.pf_src_node* @RB_NEXT(i32 %12, i32* @tree_src_tracking, %struct.pf_src_node* %13)
  store %struct.pf_src_node* %14, %struct.pf_src_node** %2, align 8
  %15 = load %struct.pf_src_node*, %struct.pf_src_node** %1, align 8
  %16 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %11
  %20 = load %struct.pf_src_node*, %struct.pf_src_node** %1, align 8
  %21 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 (...) @pf_time_second()
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %19
  %26 = load %struct.pf_src_node*, %struct.pf_src_node** %1, align 8
  %27 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = load %struct.pf_src_node*, %struct.pf_src_node** %1, align 8
  %33 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.pf_src_node*, %struct.pf_src_node** %1, align 8
  %40 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %31
  %47 = load %struct.pf_src_node*, %struct.pf_src_node** %1, align 8
  %48 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.pf_src_node*, %struct.pf_src_node** %1, align 8
  %56 = getelementptr inbounds %struct.pf_src_node, %struct.pf_src_node* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @pf_rm_rule(i32* null, %struct.TYPE_6__* %58)
  br label %60

60:                                               ; preds = %54, %46, %31
  br label %61

61:                                               ; preds = %60, %25
  %62 = load i32, i32* @pf_src_tree, align 4
  %63 = load %struct.pf_src_node*, %struct.pf_src_node** %1, align 8
  %64 = call i32 @RB_REMOVE(i32 %62, i32* @tree_src_tracking, %struct.pf_src_node* %63)
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pf_status, i32 0, i32 1), align 8
  %66 = load i64, i64* @SCNT_SRC_NODE_REMOVALS, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pf_status, i32 0, i32 0), align 8
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pf_status, i32 0, i32 0), align 8
  %72 = load %struct.pf_src_node*, %struct.pf_src_node** %1, align 8
  %73 = call i32 @pool_put(i32* @pf_src_tree_pl, %struct.pf_src_node* %72)
  br label %74

74:                                               ; preds = %61, %19, %11
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.pf_src_node*, %struct.pf_src_node** %2, align 8
  store %struct.pf_src_node* %76, %struct.pf_src_node** %1, align 8
  br label %8

77:                                               ; preds = %8
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local %struct.pf_src_node* @RB_MIN(i32, i32*) #1

declare dso_local %struct.pf_src_node* @RB_NEXT(i32, i32*, %struct.pf_src_node*) #1

declare dso_local i64 @pf_time_second(...) #1

declare dso_local i32 @pf_rm_rule(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.pf_src_node*) #1

declare dso_local i32 @pool_put(i32*, %struct.pf_src_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
