; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/ETH/src/extr_stm32f4x7_eth.c_ETH_GetRxPktSize.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/ETH/src/extr_stm32f4x7_eth.c_ETH_GetRxPktSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ETH_DMARxDesc_OWN = common dso_local global i32 0, align 4
@RESET = common dso_local global i64 0, align 8
@ETH_DMARxDesc_ES = common dso_local global i32 0, align 4
@ETH_DMARxDesc_LS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ETH_GetRxPktSize(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ETH_DMARxDesc_OWN, align 4
  %8 = and i32 %6, %7
  %9 = load i64, i64* @RESET, align 8
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ETH_DMARxDesc_ES, align 4
  %17 = and i32 %15, %16
  %18 = load i64, i64* @RESET, align 8
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %12
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ETH_DMARxDesc_LS, align 4
  %26 = and i32 %24, %25
  %27 = load i64, i64* @RESET, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = call i32 @ETH_GetDMARxDescFrameLength(%struct.TYPE_4__* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %21, %12, %1
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @ETH_GetDMARxDescFrameLength(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
