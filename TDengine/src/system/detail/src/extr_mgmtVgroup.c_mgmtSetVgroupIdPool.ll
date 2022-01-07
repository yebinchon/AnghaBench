; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtVgroup.c_mgmtSetVgroupIdPool.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtVgroup.c_mgmtSetVgroupIdPool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@vgSdb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmtSetVgroupIdPool() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store i8* null, i8** %1, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %4

4:                                                ; preds = %0, %56
  %5 = load i32, i32* @vgSdb, align 4
  %6 = load i8*, i8** %1, align 8
  %7 = bitcast %struct.TYPE_10__** %2 to i8**
  %8 = call i8* @sdbFetchRow(i32 %5, i8* %6, i8** %7)
  store i8* %8, i8** %1, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = icmp eq %struct.TYPE_10__* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %4
  br label %57

17:                                               ; preds = %11
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @taosIdPoolSetFreeList(i64 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @taosIdPoolNumOfUsed(i64 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_11__* @mgmtGetDb(i32 %30)
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %3, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp sge i32 %41, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %17
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = call i32 @mgmtAddVgroupIntoDbTail(%struct.TYPE_11__* %49, %struct.TYPE_10__* %50)
  br label %56

52:                                               ; preds = %17
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = call i32 @mgmtAddVgroupIntoDb(%struct.TYPE_11__* %53, %struct.TYPE_10__* %54)
  br label %56

56:                                               ; preds = %52, %48
  br label %4

57:                                               ; preds = %16
  ret void
}

declare dso_local i8* @sdbFetchRow(i32, i8*, i8**) #1

declare dso_local i32 @taosIdPoolSetFreeList(i64) #1

declare dso_local i32 @taosIdPoolNumOfUsed(i64) #1

declare dso_local %struct.TYPE_11__* @mgmtGetDb(i32) #1

declare dso_local i32 @mgmtAddVgroupIntoDbTail(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @mgmtAddVgroupIntoDb(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
