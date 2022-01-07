; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_DebugPrintObjectInfo.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_DebugPrintObjectInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@TRACKING_NUM_ARRAY = common dso_local global i64 0, align 8
@hashlist = common dso_local global %struct.TYPE_6__** null, align 8
@.str = private unnamed_addr constant [23 x i8] c"obj_id %u Not Found.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DebugPrintObjectInfo(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  %6 = call i32 (...) @LockTrackingList()
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %50, %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @TRACKING_NUM_ARRAY, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %53

11:                                               ; preds = %7
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hashlist, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %12, i64 %13
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %11
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hashlist, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %18, i64 %19
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %5, align 8
  br label %22

22:                                               ; preds = %17, %40
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %2, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %4, align 8
  br label %44

34:                                               ; preds = %22
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = icmp eq %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %44

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %5, align 8
  br label %22

44:                                               ; preds = %39, %30
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %53

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %11
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %3, align 8
  br label %7

53:                                               ; preds = %47, %7
  %54 = call i32 (...) @UnlockTrackingList()
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = icmp eq %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i64, i64* %2, align 8
  %59 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %58)
  br label %64

60:                                               ; preds = %53
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = call i32 @PrintObjectInfo(%struct.TYPE_5__* %61)
  %63 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %60, %57
  ret void
}

declare dso_local i32 @LockTrackingList(...) #1

declare dso_local i32 @UnlockTrackingList(...) #1

declare dso_local i32 @Print(i8*, ...) #1

declare dso_local i32 @PrintObjectInfo(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
