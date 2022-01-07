; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoInitControlDevice.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoInitControlDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i64, i64, i32, i32*, %struct.TYPE_8__*, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i8*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.TYPE_9__* null, align 8
@IRP_MJ_MAXIMUM_FUNCTION = common dso_local global i32 0, align 4
@IRP_MJ_CREATE = common dso_local global i64 0, align 8
@IRP_MJ_CLOSE = common dso_local global i64 0, align 8
@IRP_MJ_READ = common dso_local global i64 0, align 8
@IRP_MJ_WRITE = common dso_local global i64 0, align 8
@IRP_MJ_DEVICE_CONTROL = common dso_local global i64 0, align 8
@NeoNdisDispatch = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FALSE = common dso_local global i8* null, align 8
@NDIS_NEO_DEVICE_NAME = common dso_local global i8* null, align 8
@NDIS_NEO_DEVICE_NAME_WIN32 = common dso_local global i8* null, align 8
@NDIS_OBJECT_TYPE_DEVICE_OBJECT_ATTRIBUTES = common dso_local global i32 0, align 4
@NDIS_DEVICE_OBJECT_ATTRIBUTES_REVISION_1 = common dso_local global i32 0, align 4
@NDIS_SIZEOF_DEVICE_OBJECT_ATTRIBUTES_REVISION_1 = common dso_local global i32 0, align 4
@ndis_miniport_driver_handle = common dso_local global i32 0, align 4
@NDIS_NEO_HARDWARE_ID = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NeoInitControlDevice() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  %10 = load i32, i32* @MAX_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = load i32, i32* @MAX_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i32 1, i32* %9, align 4
  br label %134

20:                                               ; preds = %0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load i32, i32* @IRP_MJ_MAXIMUM_FUNCTION, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @NeoZero(%struct.TYPE_8__* %23, i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load i64, i64* @IRP_MJ_CREATE, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load i64, i64* @IRP_MJ_CLOSE, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %37
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load i64, i64* @IRP_MJ_READ, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %42
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i64, i64* @IRP_MJ_WRITE, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %47
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i64, i64* @IRP_MJ_DEVICE_CONTROL, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %52
  %54 = bitcast %struct.TYPE_8__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 bitcast (%struct.TYPE_8__* @NeoNdisDispatch to i8*), i64 40, i1 false)
  %55 = bitcast %struct.TYPE_8__* %48 to i8*
  %56 = bitcast %struct.TYPE_8__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 40, i1 false)
  %57 = bitcast %struct.TYPE_8__* %43 to i8*
  %58 = bitcast %struct.TYPE_8__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 40, i1 false)
  %59 = bitcast %struct.TYPE_8__* %38 to i8*
  %60 = bitcast %struct.TYPE_8__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 40, i1 false)
  %61 = bitcast %struct.TYPE_8__* %33 to i8*
  %62 = bitcast %struct.TYPE_8__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 40, i1 false)
  %63 = load i8*, i8** @FALSE, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 7
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @FALSE, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @NDIS_NEO_DEVICE_NAME, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @sprintf(i8* %13, i8* %69, i64 %72)
  %74 = call i32* @NewUnicode(i8* %13)
  store i32* %74, i32** %4, align 8
  %75 = load i8*, i8** @NDIS_NEO_DEVICE_NAME_WIN32, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @sprintf(i8* %16, i8* %75, i64 %78)
  %80 = call i32* @NewUnicode(i8* %16)
  store i32* %80, i32** %5, align 8
  %81 = call i32 @NeoZero(%struct.TYPE_8__* %8, i32 40)
  %82 = load i32, i32* @NDIS_OBJECT_TYPE_DEVICE_OBJECT_ATTRIBUTES, align 4
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @NDIS_DEVICE_OBJECT_ATTRIBUTES_REVISION_1, align 4
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @NDIS_SIZEOF_DEVICE_OBJECT_ATTRIBUTES_REVISION_1, align 4
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = call i8* @GetUnicode(i32* %91)
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i8* %92, i8** %93, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i8* @GetUnicode(i32* %94)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i8* %95, i8** %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %100, align 8
  %101 = load i32, i32* @ndis_miniport_driver_handle, align 4
  %102 = call i32 @NdisRegisterDeviceEx(i32 %101, %struct.TYPE_8__* %8, i32** %6, i32* %7)
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 4
  store i32* %103, i32** %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @strlen(i64 %111)
  %113 = icmp sgt i32 %112, 11
  br i1 %113, label %114, label %124

114:                                              ; preds = %20
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** @NDIS_NEO_HARDWARE_ID, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 11
  %123 = call i32 @sprintf(i8* %117, i8* %118, i64 %122)
  br label %133

124:                                              ; preds = %20
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** @NDIS_NEO_HARDWARE_ID, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @sprintf(i8* %127, i8* %128, i64 %131)
  br label %133

133:                                              ; preds = %124, %114
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %133, %19
  %135 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %9, align 4
  switch i32 %136, label %138 [
    i32 0, label %137
    i32 1, label %137
  ]

137:                                              ; preds = %134, %134
  ret void

138:                                              ; preds = %134
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NeoZero(%struct.TYPE_8__*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @sprintf(i8*, i8*, i64) #2

declare dso_local i32* @NewUnicode(i8*) #2

declare dso_local i8* @GetUnicode(i32*) #2

declare dso_local i32 @NdisRegisterDeviceEx(i32, %struct.TYPE_8__*, i32**, i32*) #2

declare dso_local i32 @strlen(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
