; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nd6_setdefaultiface.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nd6_setdefaultiface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@nd6_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@if_index = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ifindex2ifnet = common dso_local global %struct.ifnet** null, align 8
@nd6_defifindex = common dso_local global i32 0, align 4
@nd6_defifp = common dso_local global %struct.ifnet* null, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: is now the default interface (was %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"No default interface set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_setdefaultiface(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store %struct.ifnet* null, %struct.ifnet** %5, align 8
  %7 = load i32, i32* @nd6_mutex, align 4
  %8 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %9 = call i32 @LCK_MTX_ASSERT(i32 %7, i32 %8)
  %10 = call i32 (...) @ifnet_head_lock_shared()
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @if_index, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %1
  %18 = call i32 (...) @ifnet_head_done()
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %2, align 4
  br label %81

20:                                               ; preds = %13
  %21 = load %struct.ifnet**, %struct.ifnet*** @ifindex2ifnet, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %21, i64 %23
  %25 = load %struct.ifnet*, %struct.ifnet** %24, align 8
  store %struct.ifnet* %25, %struct.ifnet** %5, align 8
  %26 = call i32 (...) @ifnet_head_done()
  %27 = load i32, i32* @nd6_mutex, align 4
  %28 = call i32 @lck_mtx_lock(i32 %27)
  %29 = load i32, i32* @nd6_defifindex, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %20
  %33 = load %struct.ifnet*, %struct.ifnet** @nd6_defifp, align 8
  store %struct.ifnet* %33, %struct.ifnet** %6, align 8
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* @nd6_defifindex, align 4
  %35 = load i32, i32* @nd6_defifindex, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %38, %struct.ifnet** @nd6_defifp, align 8
  br label %40

39:                                               ; preds = %32
  store %struct.ifnet* null, %struct.ifnet** @nd6_defifp, align 8
  br label %40

40:                                               ; preds = %39, %37
  %41 = load %struct.ifnet*, %struct.ifnet** @nd6_defifp, align 8
  %42 = icmp ne %struct.ifnet* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32, i32* @LOG_INFO, align 4
  %45 = load %struct.ifnet*, %struct.ifnet** @nd6_defifp, align 8
  %46 = call i8* @if_name(%struct.ifnet* %45)
  %47 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %48 = icmp ne %struct.ifnet* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %51 = call i8* @if_name(%struct.ifnet* %50)
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i8* [ %51, %49 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %52 ]
  %55 = ptrtoint i8* %54 to i32
  %56 = call i32 @nd6log(i32 %55)
  br label %60

57:                                               ; preds = %40
  %58 = load i32, i32* @LOG_INFO, align 4
  %59 = call i32 @nd6log(i32 ptrtoint ([26 x i8]* @.str.2 to i32))
  br label %60

60:                                               ; preds = %57, %53
  %61 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %62 = icmp ne %struct.ifnet* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %65 = call i32 @defrouter_select(%struct.ifnet* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.ifnet*, %struct.ifnet** @nd6_defifp, align 8
  %68 = icmp ne %struct.ifnet* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.ifnet*, %struct.ifnet** @nd6_defifp, align 8
  %71 = call i32 @defrouter_select(%struct.ifnet* %70)
  %72 = load %struct.ifnet*, %struct.ifnet** @nd6_defifp, align 8
  %73 = call i32 @nd6_prefix_sync(%struct.ifnet* %72)
  br label %74

74:                                               ; preds = %69, %66
  %75 = load %struct.ifnet*, %struct.ifnet** @nd6_defifp, align 8
  %76 = call i32 @scope6_setdefault(%struct.ifnet* %75)
  br label %77

77:                                               ; preds = %74, %20
  %78 = load i32, i32* @nd6_mutex, align 4
  %79 = call i32 @lck_mtx_unlock(i32 %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %17
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @nd6log(i32) #1

declare dso_local i8* @if_name(%struct.ifnet*) #1

declare dso_local i32 @defrouter_select(%struct.ifnet*) #1

declare dso_local i32 @nd6_prefix_sync(%struct.ifnet*) #1

declare dso_local i32 @scope6_setdefault(%struct.ifnet*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
