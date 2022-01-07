; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/SeeDll/extr_AdInfo.c_PacketGetLinkLayerFromRegistry.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/SeeDll/extr_AdInfo.c_PacketGetLinkLayerFromRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }

@GMEM_MOVEABLE = common dso_local global i32 0, align 4
@GMEM_ZEROINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"PacketGetLinkLayerFromRegistry failed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@OID_GEN_MEDIA_IN_USE = common dso_local global i32 0, align 4
@OID_GEN_LINK_SPEED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Media:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Speed=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PacketGetLinkLayerFromRegistry(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 7, i32* %7, align 4
  %9 = load i32, i32* @GMEM_MOVEABLE, align 4
  %10 = load i32, i32* @GMEM_ZEROINIT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.TYPE_7__* @GlobalAllocPtr(i32 %11, i32 %12)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %8, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 @ODS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load i32, i32* @OID_GEN_MEDIA_IN_USE, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i32 4, i32* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = call i32 @PacketRequest(i32 %25, i32 %26, %struct.TYPE_7__* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @OID_GEN_LINK_SPEED, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 4, i32* %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = call i32 @PacketRequest(i32 %41, i32 %42, %struct.TYPE_7__* %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 100
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = call i32 @GlobalFreePtr(%struct.TYPE_7__* %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ODSEx(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ODSEx(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %19, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_7__* @GlobalAllocPtr(i32, i32) #1

declare dso_local i32 @ODS(i8*) #1

declare dso_local i32 @PacketRequest(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @GlobalFreePtr(%struct.TYPE_7__*) #1

declare dso_local i32 @ODSEx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
