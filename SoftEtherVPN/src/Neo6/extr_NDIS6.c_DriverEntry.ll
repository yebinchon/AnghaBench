; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_DriverEntry.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_DriverEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@g_is_win8 = common dso_local global i32 0, align 4
@NDIS_OBJECT_TYPE_MINIPORT_DRIVER_CHARACTERISTICS = common dso_local global i32 0, align 4
@NDIS_MINIPORT_DRIVER_CHARACTERISTICS_REVISION_2 = common dso_local global i32 0, align 4
@NDIS_SIZEOF_MINIPORT_DRIVER_CHARACTERISTICS_REVISION_2 = common dso_local global i32 0, align 4
@NEO_NDIS_MAJOR_VERSION = common dso_local global i32 0, align 4
@NEO_NDIS_MINOR_VERSION = common dso_local global i32 0, align 4
@NeoNdisInitEx = common dso_local global i32 0, align 4
@NeoNdisHaltEx = common dso_local global i32 0, align 4
@NeoNdisOidRequest = common dso_local global i32 0, align 4
@NeoNdisResetEx = common dso_local global i32 0, align 4
@NeoNdisCheckForHangEx = common dso_local global i32 0, align 4
@NeoNdisDriverUnload = common dso_local global i32 0, align 4
@NeoNdisSendNetBufferLists = common dso_local global i32 0, align 4
@NeoNdisSetOptions = common dso_local global i32 0, align 4
@NeoNdisPause = common dso_local global i32 0, align 4
@NeoNdisRestart = common dso_local global i32 0, align 4
@NeoNdisReturnNetBufferLists = common dso_local global i32 0, align 4
@NeoNdisCancelSend = common dso_local global i32 0, align 4
@NeoNdisDevicePnPEventNotify = common dso_local global i32 0, align 4
@NeoNdisShutdownEx = common dso_local global i32 0, align 4
@NeoNdisCancelOidRequest = common dso_local global i32 0, align 4
@ndis_miniport_driver_handle = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DriverEntry(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = call i64 (...) @NeoInit()
  %11 = load i64, i64* @FALSE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %14, i32* %3, align 4
  br label %81

15:                                               ; preds = %2
  store i32 0, i32* @g_is_win8, align 4
  %16 = call i32 @PsGetVersion(i32* %7, i32* %8, i32* null, i32* null)
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 7
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %15
  store i32 1, i32* @g_is_win8, align 4
  br label %26

26:                                               ; preds = %25, %22, %19
  %27 = call i32 @NeoZero(%struct.TYPE_6__* %6, i32 80)
  %28 = load i32, i32* @NDIS_OBJECT_TYPE_MINIPORT_DRIVER_CHARACTERISTICS, align 4
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 17
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @NDIS_MINIPORT_DRIVER_CHARACTERISTICS_REVISION_2, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 17
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @NDIS_SIZEOF_MINIPORT_DRIVER_CHARACTERISTICS_REVISION_2, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 17
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @NEO_NDIS_MAJOR_VERSION, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 16
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @NEO_NDIS_MINOR_VERSION, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 15
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @NeoNdisInitEx, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 14
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @NeoNdisHaltEx, align 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 13
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @NeoNdisOidRequest, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 12
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @NeoNdisResetEx, align 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 11
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @NeoNdisCheckForHangEx, align 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 10
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @NeoNdisDriverUnload, align 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 9
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @NeoNdisSendNetBufferLists, align 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @NeoNdisSetOptions, align 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 7
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @NeoNdisPause, align 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 6
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @NeoNdisRestart, align 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @NeoNdisReturnNetBufferLists, align 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @NeoNdisCancelSend, align 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @NeoNdisDevicePnPEventNotify, align 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @NeoNdisShutdownEx, align 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @NeoNdisCancelOidRequest, align 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @NdisMRegisterMiniportDriver(i32* %71, i32* %72, i32* null, %struct.TYPE_6__* %6, i32* @ndis_miniport_driver_handle)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @NG(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %26
  %78 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %78, i32* %3, align 4
  br label %81

79:                                               ; preds = %26
  %80 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %77, %13
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @NeoInit(...) #1

declare dso_local i32 @PsGetVersion(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @NeoZero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @NdisMRegisterMiniportDriver(i32*, i32*, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @NG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
