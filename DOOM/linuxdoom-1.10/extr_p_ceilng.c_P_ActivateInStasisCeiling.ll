; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_ceilng.c_P_ActivateInStasisCeiling.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_ceilng.c_P_ActivateInStasisCeiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@MAXCEILINGS = common dso_local global i32 0, align 4
@activeceilings = common dso_local global %struct.TYPE_9__** null, align 8
@T_MoveCeiling = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_ActivateInStasisCeiling(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %60, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAXCEILINGS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %63

8:                                                ; preds = %4
  %9 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @activeceilings, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %9, i64 %11
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %59

15:                                               ; preds = %8
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @activeceilings, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %16, i64 %18
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %15
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @activeceilings, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %30
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %27
  %37 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @activeceilings, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %37, i64 %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @activeceilings, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %44, i64 %46
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i64 %43, i64* %49, align 8
  %50 = load i64, i64* @T_MoveCeiling, align 8
  %51 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @activeceilings, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %51, i64 %53
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 %50, i64* %58, align 8
  br label %59

59:                                               ; preds = %36, %27, %15, %8
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %4

63:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
