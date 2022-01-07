; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoNewPacketBuffer.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoNewPacketBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@NEO_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@PROTOCOL_RESERVED_SIZE_IN_PACKET = common dso_local global i32 0, align 4
@NEO_PACKET_HEADER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @NeoNewPacketBuffer() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i32, align 4
  %3 = call %struct.TYPE_4__* @NeoZeroMalloc(i32 20)
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %1, align 8
  %4 = load i32, i32* @NEO_MAX_PACKET_SIZE, align 4
  %5 = call i32 @NeoMalloc(i32 %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 4
  %10 = call i32 @NdisAllocateBufferPool(i32* %2, i32* %9, i32 1)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NEO_MAX_PACKET_SIZE, align 4
  %20 = call i32 @NdisAllocateBuffer(i32* %2, i32* %12, i32 %15, i32 %18, i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* @PROTOCOL_RESERVED_SIZE_IN_PACKET, align 4
  %24 = call i32 @NdisAllocatePacketPool(i32* %2, i32* %22, i32 1, i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @NdisAllocatePacket(i32* %2, i32* %26, i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NEO_PACKET_HEADER_SIZE, align 4
  %35 = call i32 @NDIS_SET_PACKET_HEADER_SIZE(i32 %33, i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @NdisChainBufferAtFront(i32 %38, i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %43
}

declare dso_local %struct.TYPE_4__* @NeoZeroMalloc(i32) #1

declare dso_local i32 @NeoMalloc(i32) #1

declare dso_local i32 @NdisAllocateBufferPool(i32*, i32*, i32) #1

declare dso_local i32 @NdisAllocateBuffer(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @NdisAllocatePacketPool(i32*, i32*, i32, i32) #1

declare dso_local i32 @NdisAllocatePacket(i32*, i32*, i32) #1

declare dso_local i32 @NDIS_SET_PACKET_HEADER_SIZE(i32, i32) #1

declare dso_local i32 @NdisChainBufferAtFront(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
