; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqflush.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dqhash = type { %struct.dquot* }
%struct.dquot = type { %struct.TYPE_3__*, i64, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.vnode* }
%struct.vnode = type { i32 }
%struct.TYPE_4__ = type { %struct.dquot* }

@dqhashtbl = common dso_local global %struct.dqhash* null, align 8
@dqhash = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"dqflush: stray dquot\00", align 1
@dq_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dqflush(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca %struct.dqhash*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %6 = call i32 (...) @dqisinitialized()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %59

9:                                                ; preds = %1
  %10 = call i32 (...) @dq_list_lock()
  %11 = load %struct.dqhash*, %struct.dqhash** @dqhashtbl, align 8
  %12 = load i64, i64* @dqhash, align 8
  %13 = getelementptr inbounds %struct.dqhash, %struct.dqhash* %11, i64 %12
  store %struct.dqhash* %13, %struct.dqhash** %5, align 8
  br label %14

14:                                               ; preds = %54, %9
  %15 = load %struct.dqhash*, %struct.dqhash** %5, align 8
  %16 = load %struct.dqhash*, %struct.dqhash** @dqhashtbl, align 8
  %17 = icmp uge %struct.dqhash* %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load %struct.dqhash*, %struct.dqhash** %5, align 8
  %20 = getelementptr inbounds %struct.dqhash, %struct.dqhash* %19, i32 0, i32 0
  %21 = load %struct.dquot*, %struct.dquot** %20, align 8
  store %struct.dquot* %21, %struct.dquot** %3, align 8
  br label %22

22:                                               ; preds = %51, %18
  %23 = load %struct.dquot*, %struct.dquot** %3, align 8
  %24 = icmp ne %struct.dquot* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load %struct.dquot*, %struct.dquot** %3, align 8
  %27 = getelementptr inbounds %struct.dquot, %struct.dquot* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.dquot*, %struct.dquot** %28, align 8
  store %struct.dquot* %29, %struct.dquot** %4, align 8
  %30 = load %struct.dquot*, %struct.dquot** %3, align 8
  %31 = getelementptr inbounds %struct.dquot, %struct.dquot* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.vnode*, %struct.vnode** %33, align 8
  %35 = load %struct.vnode*, %struct.vnode** %2, align 8
  %36 = icmp ne %struct.vnode* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %51

38:                                               ; preds = %25
  %39 = load %struct.dquot*, %struct.dquot** %3, align 8
  %40 = getelementptr inbounds %struct.dquot, %struct.dquot* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load %struct.dquot*, %struct.dquot** %3, align 8
  %47 = load i32, i32* @dq_hash, align 4
  %48 = call i32 @LIST_REMOVE(%struct.dquot* %46, i32 %47)
  %49 = load %struct.dquot*, %struct.dquot** %3, align 8
  %50 = getelementptr inbounds %struct.dquot, %struct.dquot* %49, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %50, align 8
  br label %51

51:                                               ; preds = %45, %37
  %52 = load %struct.dquot*, %struct.dquot** %4, align 8
  store %struct.dquot* %52, %struct.dquot** %3, align 8
  br label %22

53:                                               ; preds = %22
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.dqhash*, %struct.dqhash** %5, align 8
  %56 = getelementptr inbounds %struct.dqhash, %struct.dqhash* %55, i32 -1
  store %struct.dqhash* %56, %struct.dqhash** %5, align 8
  br label %14

57:                                               ; preds = %14
  %58 = call i32 (...) @dq_list_unlock()
  br label %59

59:                                               ; preds = %57, %8
  ret void
}

declare dso_local i32 @dqisinitialized(...) #1

declare dso_local i32 @dq_list_lock(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.dquot*, i32) #1

declare dso_local i32 @dq_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
