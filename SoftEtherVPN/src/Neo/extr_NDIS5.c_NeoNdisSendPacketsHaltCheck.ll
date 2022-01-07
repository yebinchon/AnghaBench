; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoNdisSendPacketsHaltCheck.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoNdisSendPacketsHaltCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@ctx = common dso_local global %struct.TYPE_4__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@NDIS_STATUS_FAILURE = common dso_local global i32 0, align 4
@g_is_win8 = common dso_local global i64 0, align 8
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @NeoNdisSendPacketsHaltCheck(i32** %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32** %0, i32*** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %8 = icmp eq %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %3, align 8
  br label %60

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FALSE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FALSE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %17, %11
  store i64 0, i64* %6, align 8
  br label %24

24:                                               ; preds = %53, %23
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load i32**, i32*** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  %34 = call i32 @NDIS_SET_PACKET_STATUS(i32* %32, i32 %33)
  %35 = load i64, i64* @g_is_win8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %28
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32**, i32*** %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  %46 = call i32 @NdisMSendComplete(i32 %40, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %37, %28
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctx, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %24

56:                                               ; preds = %24
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %3, align 8
  br label %60

58:                                               ; preds = %17
  %59 = load i64, i64* @TRUE, align 8
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %58, %56, %9
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local i32 @NDIS_SET_PACKET_STATUS(i32*, i32) #1

declare dso_local i32 @NdisMSendComplete(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
