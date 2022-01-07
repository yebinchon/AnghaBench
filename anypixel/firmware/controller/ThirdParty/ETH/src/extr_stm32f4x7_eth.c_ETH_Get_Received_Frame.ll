; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/ETH/src/extr_stm32f4x7_eth.c_ETH_Get_Received_Frame.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/ETH/src/extr_stm32f4x7_eth.c_ETH_Get_Received_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32, i32, i32 }

@DMARxDescToGet = common dso_local global %struct.TYPE_9__* null, align 8
@ETH_DMARxDesc_FL = common dso_local global i32 0, align 4
@ETH_DMARxDesc_FrameLengthShift = common dso_local global i32 0, align 4
@DMA_RX_FRAME_infos = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ETH_Get_Received_Frame(%struct.TYPE_8__* noalias sret %0) #0 {
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = bitcast %struct.TYPE_8__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 32, i1 false)
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** @DMARxDescToGet, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @ETH_DMARxDesc_FL, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @ETH_DMARxDesc_FrameLengthShift, align 4
  %10 = ashr i32 %8, %9
  %11 = sub nsw i32 %10, 4
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DMA_RX_FRAME_infos, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DMA_RX_FRAME_infos, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @DMARxDescToGet, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** @DMARxDescToGet, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
