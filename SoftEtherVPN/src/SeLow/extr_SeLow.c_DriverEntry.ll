; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_DriverEntry.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/SeLow/extr_SeLow.c_DriverEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_22__*, i32*, i32, %struct.TYPE_21__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__*)*, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@NDIS_STATUS_FAILURE = common dso_local global i32 0, align 4
@sl = common dso_local global %struct.TYPE_20__* null, align 8
@SL_PROTOCOL_NAME = common dso_local global i32 0, align 4
@NDIS_OBJECT_TYPE_PROTOCOL_DRIVER_CHARACTERISTICS = common dso_local global i32 0, align 4
@NDIS_PROTOCOL_DRIVER_CHARACTERISTICS_REVISION_2 = common dso_local global i32 0, align 4
@NDIS_SIZEOF_PROTOCOL_DRIVER_CHARACTERISTICS_REVISION_2 = common dso_local global i32 0, align 4
@SlNdisBindAdapterExProc = common dso_local global i32 0, align 4
@SlNdisUnbindAdapterExProc = common dso_local global i32 0, align 4
@SlNdisOpenAdapterCompleteExProc = common dso_local global i32 0, align 4
@SlNdisCloseAdapterCompleteExProc = common dso_local global i32 0, align 4
@SlNdisNetPnPEventProc = common dso_local global i32 0, align 4
@SlNdisUninstallProc = common dso_local global i32 0, align 4
@SlNdisOidRequestCompleteProc = common dso_local global i32 0, align 4
@SlNdisStatusExProc = common dso_local global i32 0, align 4
@SlNdisReceiveNetBufferListsProc = common dso_local global i32 0, align 4
@SlNdisSendNetBufferListsCompleteProc = common dso_local global i32 0, align 4
@IRP_MJ_CREATE = common dso_local global i64 0, align 8
@SlDeviceOpenProc = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@IRP_MJ_CLOSE = common dso_local global i64 0, align 8
@SlDeviceCloseProc = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@IRP_MJ_READ = common dso_local global i64 0, align 8
@SlDeviceReadProc = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@IRP_MJ_WRITE = common dso_local global i64 0, align 8
@SlDeviceWriteProc = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@IRP_MJ_DEVICE_CONTROL = common dso_local global i64 0, align 8
@SlDeviceIoControlProc = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@SL_BASIC_DEVICE_NAME = common dso_local global i32 0, align 4
@SL_BASIC_DEVICE_NAME_SYMBOLIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DriverEntry(%struct.TYPE_21__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  store i32 %11, i32* %6, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sl, align 8
  %13 = call i32 @SlZero(%struct.TYPE_20__* %12, i32 4)
  %14 = load i32, i32* @SL_PROTOCOL_NAME, align 4
  %15 = call %struct.TYPE_19__* @SlNewUnicode(i32 %14)
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %7, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %17 = icmp eq %struct.TYPE_19__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %123

19:                                               ; preds = %2
  %20 = call i32 @SlZero(%struct.TYPE_20__* %5, i32 96)
  %21 = load i32, i32* @NDIS_OBJECT_TYPE_PROTOCOL_DRIVER_CHARACTERISTICS, align 4
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 17
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @NDIS_PROTOCOL_DRIVER_CHARACTERISTICS_REVISION_2, align 4
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 17
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @NDIS_SIZEOF_PROTOCOL_DRIVER_CHARACTERISTICS_REVISION_2, align 4
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 17
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  store i32 6, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  store i32 20, i32* %31, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 16
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @SlNdisBindAdapterExProc, align 4
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 15
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @SlNdisUnbindAdapterExProc, align 4
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 14
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @SlNdisOpenAdapterCompleteExProc, align 4
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 13
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @SlNdisCloseAdapterCompleteExProc, align 4
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 12
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* @SlNdisNetPnPEventProc, align 4
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 11
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @SlNdisUninstallProc, align 4
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 10
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* @SlNdisOidRequestCompleteProc, align 4
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 9
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @SlNdisStatusExProc, align 4
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 8
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* @SlNdisReceiveNetBufferListsProc, align 4
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 7
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @SlNdisSendNetBufferListsCompleteProc, align 4
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 6
  store i32 %54, i32* %55, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sl, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 5
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %58, align 8
  %59 = call i32 (...) @SlNewList()
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sl, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = call i32 @NdisRegisterProtocolDriver(i32* null, %struct.TYPE_20__* %5, i32** %8)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @NG(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %19
  store i32* null, i32** %8, align 8
  br label %123

67:                                               ; preds = %19
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = call i32 @SlZero(%struct.TYPE_20__* %70, i32 8)
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = load i64, i64* @IRP_MJ_CREATE, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i64 %75
  %77 = bitcast %struct.TYPE_20__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 bitcast (%struct.TYPE_20__* @SlDeviceOpenProc to i8*), i64 96, i1 false)
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %79, align 8
  %81 = load i64, i64* @IRP_MJ_CLOSE, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i64 %81
  %83 = bitcast %struct.TYPE_20__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 bitcast (%struct.TYPE_20__* @SlDeviceCloseProc to i8*), i64 96, i1 false)
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = load i64, i64* @IRP_MJ_READ, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i64 %87
  %89 = bitcast %struct.TYPE_20__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 bitcast (%struct.TYPE_20__* @SlDeviceReadProc to i8*), i64 96, i1 false)
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %91, align 8
  %93 = load i64, i64* @IRP_MJ_WRITE, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i64 %93
  %95 = bitcast %struct.TYPE_20__* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 bitcast (%struct.TYPE_20__* @SlDeviceWriteProc to i8*), i64 96, i1 false)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  %99 = load i64, i64* @IRP_MJ_DEVICE_CONTROL, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i64 %99
  %101 = bitcast %struct.TYPE_20__* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 bitcast (%struct.TYPE_20__* @SlDeviceIoControlProc to i8*), i64 96, i1 false)
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  store i32 (%struct.TYPE_21__*)* @SlUnloadProc, i32 (%struct.TYPE_21__*)** %103, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sl, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 3
  store i32* %104, i32** %106, align 8
  %107 = load i32, i32* @SL_BASIC_DEVICE_NAME, align 4
  %108 = load i32, i32* @SL_BASIC_DEVICE_NAME_SYMBOLIC, align 4
  %109 = call %struct.TYPE_22__* @SlNewDevice(i32 %107, i32 %108)
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sl, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  store %struct.TYPE_22__* %109, %struct.TYPE_22__** %111, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sl, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %113, align 8
  %115 = icmp eq %struct.TYPE_22__* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %67
  %117 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  store i32 %117, i32* %6, align 4
  br label %123

118:                                              ; preds = %67
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sl, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %118, %116, %66, %18
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %125 = call i32 @SlFreeUnicode(%struct.TYPE_19__* %124)
  %126 = load i32, i32* %6, align 4
  %127 = call i64 @NG(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %131 = call i32 @SlUnloadProc(%struct.TYPE_21__* %130)
  br label %132

132:                                              ; preds = %129, %123
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @SlZero(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_19__* @SlNewUnicode(i32) #1

declare dso_local i32 @SlNewList(...) #1

declare dso_local i32 @NdisRegisterProtocolDriver(i32*, %struct.TYPE_20__*, i32**) #1

declare dso_local i64 @NG(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SlUnloadProc(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @SlNewDevice(i32, i32) #1

declare dso_local i32 @SlFreeUnicode(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
