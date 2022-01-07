; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_bdwrite_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_bdwrite_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@B_DELWRI = common dso_local global i32 0, align 4
@nbdwrite = common dso_local global i32 0, align 4
@B_LOCKED = common dso_local global i32 0, align 4
@nbuf_headers = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@VNODE_ASYNC_THROTTLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"buf_bdwrite\00", align 1
@B_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdwrite_internal(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.TYPE_12__* (...) @current_proc()
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %6, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @B_DELWRI, align 4
  %16 = call i32 @ISSET(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @B_DELWRI, align 4
  %23 = call i32 @SET(i32 %21, i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = call i32 @OSIncrementAtomicLong(i32* %36)
  br label %38

38:                                               ; preds = %31, %26, %18
  %39 = call i32 @OSAddAtomicLong(i32 1, i32* @nbdwrite)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @buf_reassign(%struct.TYPE_13__* %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @B_LOCKED, align 4
  %48 = call i32 @ISSET(i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @nbdwrite, align 4
  %52 = load i32, i32* @nbuf_headers, align 4
  %53 = sdiv i32 %52, 4
  %54 = mul nsw i32 %53, 3
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @EAGAIN, align 4
  store i32 %60, i32* %3, align 4
  br label %75

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @VNODE_ASYNC_THROTTLE, align 4
  %64 = call i32 @vnode_waitforwrites(i32 %62, i32 %63, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = call i32 @buf_bawrite(%struct.TYPE_13__* %65)
  store i32 %66, i32* %3, align 4
  br label %75

67:                                               ; preds = %50, %43
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @B_DONE, align 4
  %72 = call i32 @SET(i32 %70, i32 %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = call i32 @buf_brelse(%struct.TYPE_13__* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %61, %59
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_12__* @current_proc(...) #1

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @OSIncrementAtomicLong(i32*) #1

declare dso_local i32 @OSAddAtomicLong(i32, i32*) #1

declare dso_local i32 @buf_reassign(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @vnode_waitforwrites(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @buf_bawrite(%struct.TYPE_13__*) #1

declare dso_local i32 @buf_brelse(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
