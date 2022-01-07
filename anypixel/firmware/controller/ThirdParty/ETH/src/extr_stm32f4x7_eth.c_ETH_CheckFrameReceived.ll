; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/ETH/src/extr_stm32f4x7_eth.c_ETH_CheckFrameReceived.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/ETH/src/extr_stm32f4x7_eth.c_ETH_CheckFrameReceived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__* }

@DMARxDescToGet = common dso_local global %struct.TYPE_4__* null, align 8
@ETH_DMARxDesc_OWN = common dso_local global i32 0, align 4
@RESET = common dso_local global i64 0, align 8
@ETH_DMARxDesc_LS = common dso_local global i32 0, align 4
@DMA_RX_FRAME_infos = common dso_local global %struct.TYPE_5__* null, align 8
@ETH_DMARxDesc_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ETH_CheckFrameReceived() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMARxDescToGet, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = load i32, i32* @ETH_DMARxDesc_OWN, align 4
  %6 = and i32 %4, %5
  %7 = load i64, i64* @RESET, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMARxDescToGet, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @ETH_DMARxDesc_LS, align 4
  %15 = and i32 %13, %14
  %16 = load i64, i64* @RESET, align 8
  %17 = trunc i64 %16 to i32
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %10
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DMA_RX_FRAME_infos, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DMA_RX_FRAME_infos, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMARxDescToGet, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DMA_RX_FRAME_infos, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %31, align 8
  br label %32

32:                                               ; preds = %28, %19
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMARxDescToGet, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DMA_RX_FRAME_infos, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %35, align 8
  store i32 1, i32* %1, align 4
  br label %114

36:                                               ; preds = %10, %0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMARxDescToGet, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ETH_DMARxDesc_OWN, align 4
  %41 = and i32 %39, %40
  %42 = load i64, i64* @RESET, align 8
  %43 = trunc i64 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %36
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMARxDescToGet, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ETH_DMARxDesc_FS, align 4
  %50 = and i32 %48, %49
  %51 = load i64, i64* @RESET, align 8
  %52 = trunc i64 %51 to i32
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %45
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMARxDescToGet, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ETH_DMARxDesc_LS, align 4
  %59 = and i32 %57, %58
  %60 = load i64, i64* @RESET, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %54
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMARxDescToGet, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DMA_RX_FRAME_infos, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store %struct.TYPE_4__* %64, %struct.TYPE_4__** %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DMA_RX_FRAME_infos, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DMA_RX_FRAME_infos, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMARxDescToGet, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** @DMARxDescToGet, align 8
  br label %112

75:                                               ; preds = %54, %45, %36
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMARxDescToGet, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ETH_DMARxDesc_OWN, align 4
  %80 = and i32 %78, %79
  %81 = load i64, i64* @RESET, align 8
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %75
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMARxDescToGet, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @ETH_DMARxDesc_FS, align 4
  %89 = and i32 %87, %88
  %90 = load i64, i64* @RESET, align 8
  %91 = trunc i64 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %84
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMARxDescToGet, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ETH_DMARxDesc_LS, align 4
  %98 = and i32 %96, %97
  %99 = load i64, i64* @RESET, align 8
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %93
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DMA_RX_FRAME_infos, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @DMARxDescToGet, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** @DMARxDescToGet, align 8
  br label %111

111:                                              ; preds = %102, %93, %84, %75
  br label %112

112:                                              ; preds = %111, %63
  br label %113

113:                                              ; preds = %112
  store i32 0, i32* %1, align 4
  br label %114

114:                                              ; preds = %113, %32
  %115 = load i32, i32* %1, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
