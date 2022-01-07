; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_TrackChangeObjSize.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_TrackChangeObjSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TrackChangeObjSize(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %42

11:                                               ; preds = %3
  %12 = call i64 (...) @IsTrackingEnabled()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = call i64 (...) @IsMemCheck()
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %42

22:                                               ; preds = %17
  %23 = call i32 (...) @LockTrackingList()
  %24 = load i64, i64* %4, align 8
  %25 = call %struct.TYPE_5__* @SearchTrackingList(i64 %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %7, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = icmp eq %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (...) @UnlockTrackingList()
  br label %42

30:                                               ; preds = %22
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = call i32 @DeleteTrackingList(%struct.TYPE_5__* %31, i32 0)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = call i32 @InsertTrackingList(%struct.TYPE_5__* %39)
  %41 = call i32 (...) @UnlockTrackingList()
  br label %42

42:                                               ; preds = %30, %28, %21, %10
  ret void
}

declare dso_local i64 @IsTrackingEnabled(...) #1

declare dso_local i64 @IsMemCheck(...) #1

declare dso_local i32 @LockTrackingList(...) #1

declare dso_local %struct.TYPE_5__* @SearchTrackingList(i64) #1

declare dso_local i32 @UnlockTrackingList(...) #1

declare dso_local i32 @DeleteTrackingList(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @InsertTrackingList(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
