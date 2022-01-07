; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_attr.c_gatt_profile_db_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_attr.c_gatt_profile_db_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i32, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32* }

@LEN_UUID_128 = common dso_local global i32 0, align 4
@LEN_UUID_16 = common dso_local global i32 0, align 4
@UUID_SERVCLASS_GATT_SERVER = common dso_local global i32 0, align 4
@gatt_profile_cback = common dso_local global i32 0, align 4
@gatt_cb = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@GATTP_MAX_ATTR_NUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"GATTS_CreateService:  handle of service handle%x\00", align 1
@GATT_UUID_GATT_SRV_CHGD = common dso_local global i32 0, align 4
@GATT_CHAR_PROP_BIT_INDICATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"gatt_profile_db_init:  handle of service changed%d\0A\00", align 1
@GATT_UUID_CHAR_CLIENT_CONFIG = common dso_local global i32 0, align 4
@GATT_PERM_READ = common dso_local global i32 0, align 4
@GATT_PERM_WRITE = common dso_local global i32 0, align 4
@GATTP_TRANSPORT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"gatt_profile_db_init:  gatt_if=%d   start status%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_profile_db_init() #0 {
  %1 = alloca %struct.TYPE_16__, align 4
  %2 = alloca %struct.TYPE_16__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* @LEN_UUID_128, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %13 = bitcast %struct.TYPE_12__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* @LEN_UUID_16, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 1
  %18 = load i32, i32* @UUID_SERVCLASS_GATT_SERVER, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 2
  %20 = bitcast %struct.TYPE_12__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  store i32 0, i32* %3, align 4
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %1, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* @LEN_UUID_128, align 4
  %24 = call i32 @memset(i32* %22, i32 129, i32 %23)
  %25 = call i32 @GATT_Register(%struct.TYPE_16__* %1, i32* @gatt_profile_cback)
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gatt_cb, i32 0, i32 0), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gatt_cb, i32 0, i32 0), align 8
  %27 = call i32 @GATT_StartIf(i32 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gatt_cb, i32 0, i32 0), align 8
  %29 = load i32, i32* @GATTP_MAX_ATTR_NUM, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @GATTS_CreateService(i32 %28, %struct.TYPE_16__* %2, i32 0, i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 (i8*, i32, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @GATT_UUID_GATT_SRV_CHGD, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gatt_cb, i32 0, i32 2, i32 2), align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %2, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gatt_cb, i32 0, i32 2, i32 1), align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @GATT_CHAR_PROP_BIT_INDICATE, align 4
  %39 = call i32 @GATTS_AddCharacteristic(i32 %37, %struct.TYPE_16__* %2, i32 0, i32 %38, i32* null, i32* null)
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gatt_cb, i32 0, i32 1), align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gatt_cb, i32 0, i32 2, i32 0), align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gatt_cb, i32 0, i32 1), align 4
  %41 = call i32 (i8*, i32, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* @LEN_UUID_16, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %46 = load i32, i32* @GATT_UUID_CHAR_CLIENT_CONFIG, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  %48 = bitcast %struct.TYPE_12__* %47 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %48, i8 0, i64 8, i1 false)
  %49 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 8, i1 false)
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  store i32 4, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  store i32 4, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32* %53, i32** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @GATT_PERM_READ, align 4
  %56 = load i32, i32* @GATT_PERM_WRITE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @GATTS_AddCharDescriptor(i32 %54, i32 %57, %struct.TYPE_16__* %5, %struct.TYPE_15__* %7, i32* null)
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gatt_cb, i32 0, i32 0), align 8
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @GATTP_TRANSPORT_SUPPORTED, align 4
  %62 = call i32 @GATTS_StartService(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @gatt_cb, i32 0, i32 0), align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i8*, i32, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @GATT_Register(%struct.TYPE_16__*, i32*) #2

declare dso_local i32 @GATT_StartIf(i32) #2

declare dso_local i32 @GATTS_CreateService(i32, %struct.TYPE_16__*, i32, i32, i32) #2

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i32, ...) #2

declare dso_local i32 @GATTS_AddCharacteristic(i32, %struct.TYPE_16__*, i32, i32, i32*, i32*) #2

declare dso_local i32 @GATTS_AddCharDescriptor(i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__*, i32*) #2

declare dso_local i32 @GATTS_StartService(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
