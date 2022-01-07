; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoNewPacketBuffer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoNewPacketBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }

@NDIS_OBJECT_TYPE_DEFAULT = common dso_local global i32 0, align 4
@NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1 = common dso_local global i32 0, align 4
@NDIS_SIZEOF_NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1 = common dso_local global i32 0, align 4
@NDIS_PROTOCOL_ID_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@NEO_MAX_PACKET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @NeoNewPacketBuffer() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_10__, align 4
  %3 = call %struct.TYPE_9__* @NeoZeroMalloc(i32 8)
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %1, align 8
  %4 = call i32 @NeoZero(%struct.TYPE_10__* %2, i32 28)
  %5 = load i32, i32* @NDIS_OBJECT_TYPE_DEFAULT, align 4
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1, align 4
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @NDIS_SIZEOF_NET_BUFFER_LIST_POOL_PARAMETERS_REVISION_1, align 4
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @NDIS_PROTOCOL_ID_DEFAULT, align 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @TRUE, align 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @NEO_MAX_PACKET_SIZE, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  store i8 72, i8* %20, align 4
  %21 = call i32 @NdisAllocateNetBufferListPool(i32* null, %struct.TYPE_10__* %2)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @NdisAllocateNetBufferList(i32 %26, i32 0, i32 0)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  ret %struct.TYPE_9__* %30
}

declare dso_local %struct.TYPE_9__* @NeoZeroMalloc(i32) #1

declare dso_local i32 @NeoZero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @NdisAllocateNetBufferListPool(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @NdisAllocateNetBufferList(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
