; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_free_io_buf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_free_io_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@FALSE = common dso_local global i32 0, align 4
@BL_IOBUF_VDEV = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@iobuffer_mtxp = common dso_local global i32 0, align 4
@iobufqueue = common dso_local global i32 0, align 4
@need_iobuffer = common dso_local global i64 0, align 8
@bufstats = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [51 x i8] c"free_io_buf: bp(%p) - bufstats.bufs_iobufinuse < 0\00", align 1
@dead_mountp = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_io_buf(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %4, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @BL_IOBUF_VDEV, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %5, align 8
  br label %25

25:                                               ; preds = %19, %13
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %28, align 8
  %29 = load i32, i32* @B_INVAL, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = call i32 @bzero(i32* %33, i32 4)
  %35 = load i32, i32* @iobuffer_mtxp, align 4
  %36 = call i32 @lck_mtx_lock_spin(i32 %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = call i32 @binsheadfree(%struct.TYPE_11__* %37, i32* @iobufqueue, i32 -1)
  %39 = load i64, i64* @need_iobuffer, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  store i64 0, i64* @need_iobuffer, align 8
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bufstats, i32 0, i32 0), align 8
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = call i32 @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bufstats, i32 0, i32 0), align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bufstats, i32 0, i32 0), align 8
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bufstats, i32 0, i32 1), align 8
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bufstats, i32 0, i32 1), align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = icmp ne %struct.TYPE_10__* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dead_mountp, align 8
  %61 = icmp ne %struct.TYPE_10__* %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %58, %53
  br label %68

68:                                               ; preds = %67, %48
  %69 = load i32, i32* @iobuffer_mtxp, align 4
  %70 = call i32 @lck_mtx_unlock(i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 @wakeup(i64* @need_iobuffer)
  br label %75

75:                                               ; preds = %73, %68
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32) #1

declare dso_local i32 @binsheadfree(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @wakeup(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
