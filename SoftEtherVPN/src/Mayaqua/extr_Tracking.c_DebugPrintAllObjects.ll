; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_DebugPrintAllObjects.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_DebugPrintAllObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32 }

@SortObjectView = common dso_local global i32 0, align 4
@TRACKING_NUM_ARRAY = common dso_local global i64 0, align 8
@hashlist = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DebugPrintAllObjects() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @SortObjectView, align 4
  %6 = call i32* @NewListFast(i32 %5)
  store i32* %6, i32** %2, align 8
  %7 = call i32 (...) @LockTrackingList()
  store i64 0, i64* %1, align 8
  br label %8

8:                                                ; preds = %40, %0
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @TRACKING_NUM_ARRAY, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hashlist, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %13, i64 %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @hashlist, align 8
  %20 = load i64, i64* %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %3, align 8
  br label %23

23:                                               ; preds = %18, %34
  %24 = load i32*, i32** %2, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @Add(i32* %24, i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp eq %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %23
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %3, align 8
  br label %23

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %12
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %1, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %1, align 8
  br label %8

43:                                               ; preds = %8
  %44 = call i32 (...) @UnlockTrackingList()
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @Sort(i32* %45)
  store i64 0, i64* %1, align 8
  br label %47

47:                                               ; preds = %59, %43
  %48 = load i64, i64* %1, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = call i64 @LIST_NUM(i32* %49)
  %51 = icmp ult i64 %48, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i32*, i32** %2, align 8
  %54 = load i64, i64* %1, align 8
  %55 = call i64 @LIST_DATA(i32* %53, i64 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %4, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @PrintObjectList(i32* %57)
  br label %59

59:                                               ; preds = %52
  %60 = load i64, i64* %1, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %1, align 8
  br label %47

62:                                               ; preds = %47
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @ReleaseList(i32* %63)
  %65 = call i32 @Print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32* @NewListFast(i32) #1

declare dso_local i32 @LockTrackingList(...) #1

declare dso_local i32 @Add(i32*, i32) #1

declare dso_local i32 @UnlockTrackingList(...) #1

declare dso_local i32 @Sort(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i64 @LIST_DATA(i32*, i64) #1

declare dso_local i32 @PrintObjectList(i32*) #1

declare dso_local i32 @ReleaseList(i32*) #1

declare dso_local i32 @Print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
