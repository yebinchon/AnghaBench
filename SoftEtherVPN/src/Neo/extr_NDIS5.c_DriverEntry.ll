; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_DriverEntry.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_DriverEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@g_is_win8 = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.TYPE_6__* null, align 8
@ndis_wrapper_handle = common dso_local global i32 0, align 4
@NEO_NDIS_MAJOR_VERSION = common dso_local global i32 0, align 4
@NEO_NDIS_MINOR_VERSION = common dso_local global i32 0, align 4
@NeoNdisInit = common dso_local global i32 0, align 4
@NeoNdisHalt = common dso_local global i32 0, align 4
@NeoNdisQuery = common dso_local global i32 0, align 4
@NeoNdisReset = common dso_local global i32 0, align 4
@NeoNdisSet = common dso_local global i32 0, align 4
@NeoNdisSendPackets = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DriverEntry(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = call i64 (...) @NeoInit()
  %10 = load i64, i64* @FALSE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %13, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  store i32 0, i32* @g_is_win8, align 4
  %15 = call i32 @PsGetVersion(i32* %7, i32* %8, i32* null, i32* null)
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 7
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %14
  store i32 1, i32* @g_is_win8, align 4
  br label %25

25:                                               ; preds = %24, %21, %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctx, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @NdisMInitializeWrapper(i32* %27, i32* %28, i32* %29, i32* null)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctx, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* @ndis_wrapper_handle, align 4
  %34 = call i32 @NeoZero(%struct.TYPE_5__* %6, i32 40)
  %35 = load i32, i32* @NEO_NDIS_MAJOR_VERSION, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @NEO_NDIS_MINOR_VERSION, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 7
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @NeoNdisInit, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 6
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @NeoNdisHalt, align 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @NeoNdisQuery, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @NeoNdisReset, align 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* @NeoNdisSet, align 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @NeoNdisSendPackets, align 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctx, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @NdisMRegisterMiniport(i32 %53, %struct.TYPE_5__* %6, i32 40)
  %55 = call i64 @NG(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %25
  %58 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %25
  %60 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %57, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @NeoInit(...) #1

declare dso_local i32 @PsGetVersion(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @NdisMInitializeWrapper(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @NeoZero(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @NG(i32) #1

declare dso_local i32 @NdisMRegisterMiniport(i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
