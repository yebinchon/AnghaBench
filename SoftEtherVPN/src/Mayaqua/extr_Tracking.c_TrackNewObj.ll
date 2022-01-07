; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_TrackNewObj.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_TrackNewObj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i64*, i32, i32, i8*, i64, i8* }

@obj_id_lock = common dso_local global i32 0, align 4
@obj_id = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TrackNewObj(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  br label %63

15:                                               ; preds = %11
  %16 = call i64 (...) @IsTrackingEnabled()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = call i64 (...) @IsMemCheck()
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %63

26:                                               ; preds = %21
  %27 = load i32, i32* @obj_id_lock, align 4
  %28 = call i32 @OSLock(i32 %27)
  %29 = load i8*, i8** @obj_id, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** @obj_id, align 8
  store i8* %30, i8** %8, align 8
  %31 = load i32, i32* @obj_id_lock, align 4
  %32 = call i32 @OSUnlock(i32 %31)
  %33 = call %struct.TYPE_4__* @OSMemoryAlloc(i32 56)
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 6
  store i64 %37, i64* %39, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = call i32 (...) @LocalTime64()
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = call i32 (...) @GetCallStack()
  %50 = call i32 @WalkDownCallStack(i32 %49, i32 2)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = call i32 (...) @LockTrackingList()
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = call i32 @InsertTrackingList(%struct.TYPE_4__* %60)
  %62 = call i32 (...) @UnlockTrackingList()
  br label %63

63:                                               ; preds = %26, %25, %14
  ret void
}

declare dso_local i64 @IsTrackingEnabled(...) #1

declare dso_local i64 @IsMemCheck(...) #1

declare dso_local i32 @OSLock(i32) #1

declare dso_local i32 @OSUnlock(i32) #1

declare dso_local %struct.TYPE_4__* @OSMemoryAlloc(i32) #1

declare dso_local i32 @LocalTime64(...) #1

declare dso_local i32 @WalkDownCallStack(i32, i32) #1

declare dso_local i32 @GetCallStack(...) #1

declare dso_local i32 @LockTrackingList(...) #1

declare dso_local i32 @InsertTrackingList(%struct.TYPE_4__*) #1

declare dso_local i32 @UnlockTrackingList(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
