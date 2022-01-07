; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_GetMemoryStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_GetMemoryStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@TRACKING_NUM_ARRAY = common dso_local global i64 0, align 8
@hashlist = common dso_local global %struct.TYPE_7__** null, align 8
@.str = private unnamed_addr constant [4 x i8] c"MEM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetMemoryStatus(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = icmp eq %struct.TYPE_8__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %68

11:                                               ; preds = %1
  %12 = call i32 (...) @LockTrackingList()
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %57, %11
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @TRACKING_NUM_ARRAY, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %13
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @hashlist, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %18, i64 %19
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @hashlist, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %24, i64 %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %6, align 8
  br label %28

28:                                               ; preds = %23, %51
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %7, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @StrCmpi(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %4, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %37, %28
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = icmp eq %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %55

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %6, align 8
  br label %28

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %17
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %13

60:                                               ; preds = %13
  %61 = call i32 (...) @UnlockTrackingList()
  %62 = load i64, i64* %4, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %60, %10
  ret void
}

declare dso_local i32 @LockTrackingList(...) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local i32 @UnlockTrackingList(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
