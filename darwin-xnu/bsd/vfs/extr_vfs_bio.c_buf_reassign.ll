; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_reassign.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_reassign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { %struct.buflists, %struct.buflists }
%struct.buflists = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"buf_reassign: NULL\00", align 1
@buf_mtxp = common dso_local global i32 0, align 4
@NOLIST = common dso_local global i64 0, align 8
@B_DELWRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*)* @buf_reassign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_reassign(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.buflists*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = icmp eq %struct.TYPE_9__* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %41

10:                                               ; preds = %2
  %11 = load i32, i32* @buf_mtxp, align 4
  %12 = call i32 @lck_mtx_lock_spin(i32 %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NOLIST, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = call i32 @bufremvn(%struct.TYPE_10__* %20)
  br label %22

22:                                               ; preds = %19, %10
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @B_DELWRI, align 4
  %27 = call i64 @ISSET(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  store %struct.buflists* %31, %struct.buflists** %5, align 8
  br label %35

32:                                               ; preds = %22
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store %struct.buflists* %34, %struct.buflists** %5, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = load %struct.buflists*, %struct.buflists** %5, align 8
  %38 = call i32 @bufinsvn(%struct.TYPE_10__* %36, %struct.buflists* %37)
  %39 = load i32, i32* @buf_mtxp, align 4
  %40 = call i32 @lck_mtx_unlock(i32 %39)
  br label %41

41:                                               ; preds = %35, %8
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @lck_mtx_lock_spin(i32) #1

declare dso_local i32 @bufremvn(%struct.TYPE_10__*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @bufinsvn(%struct.TYPE_10__*, %struct.buflists*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
