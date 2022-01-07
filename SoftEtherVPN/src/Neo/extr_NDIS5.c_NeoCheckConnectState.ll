; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoCheckConnectState.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoCheckConnectState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i64, i32* }

@ctx = common dso_local global %struct.TYPE_2__* null, align 8
@keep_link = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@NDIS_STATUS_MEDIA_CONNECT = common dso_local global i32 0, align 4
@NDIS_STATUS_MEDIA_DISCONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NeoCheckConnectState() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %2 = icmp eq %struct.TYPE_2__* %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 4
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3, %0
  br label %86

9:                                                ; preds = %3
  %10 = load i32, i32* @keep_link, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %9
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %20, %12
  %26 = load i64, i64* @FALSE, align 8
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FALSE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %25
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @NDIS_STATUS_MEDIA_CONNECT, align 4
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @NDIS_STATUS_MEDIA_DISCONNECT, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = call i32 @NdisMIndicateStatus(i32* %43, i32 %53, i32 0, i32 0)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @NdisMIndicateStatusComplete(i32* %57)
  br label %59

59:                                               ; preds = %52, %25
  br label %60

60:                                               ; preds = %59, %20
  br label %86

61:                                               ; preds = %9
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %61
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @FALSE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* @NDIS_STATUS_MEDIA_CONNECT, align 4
  %79 = call i32 @NdisMIndicateStatus(i32* %77, i32 %78, i32 0, i32 0)
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @NdisMIndicateStatusComplete(i32* %82)
  br label %84

84:                                               ; preds = %74, %66
  br label %85

85:                                               ; preds = %84, %61
  br label %86

86:                                               ; preds = %8, %85, %60
  ret void
}

declare dso_local i32 @NdisMIndicateStatus(i32*, i32, i32, i32) #1

declare dso_local i32 @NdisMIndicateStatusComplete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
