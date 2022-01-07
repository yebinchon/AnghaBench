; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_can.c_CAN_GetITStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_can.c_CAN_GetITStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@RESET = common dso_local global i32 0, align 4
@CAN_TSR_RQCP0 = common dso_local global i32 0, align 4
@CAN_TSR_RQCP1 = common dso_local global i32 0, align 4
@CAN_TSR_RQCP2 = common dso_local global i32 0, align 4
@CAN_RF0R_FMP0 = common dso_local global i32 0, align 4
@CAN_RF0R_FULL0 = common dso_local global i32 0, align 4
@CAN_RF0R_FOVR0 = common dso_local global i32 0, align 4
@CAN_RF1R_FMP1 = common dso_local global i32 0, align 4
@CAN_RF1R_FULL1 = common dso_local global i32 0, align 4
@CAN_RF1R_FOVR1 = common dso_local global i32 0, align 4
@CAN_MSR_WKUI = common dso_local global i32 0, align 4
@CAN_MSR_SLAKI = common dso_local global i32 0, align 4
@CAN_ESR_EWGF = common dso_local global i32 0, align 4
@CAN_ESR_EPVF = common dso_local global i32 0, align 4
@CAN_ESR_BOFF = common dso_local global i32 0, align 4
@CAN_ESR_LEC = common dso_local global i32 0, align 4
@CAN_MSR_ERRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CAN_GetITStatus(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @RESET, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = call i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_4__* %7)
  %9 = call i32 @assert_param(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @IS_CAN_IT(i32 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @RESET, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %113

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %110 [
    i32 129, label %22
    i32 135, label %32
    i32 137, label %38
    i32 133, label %44
    i32 134, label %50
    i32 136, label %56
    i32 132, label %62
    i32 128, label %68
    i32 130, label %74
    i32 138, label %80
    i32 140, label %86
    i32 141, label %92
    i32 131, label %98
    i32 139, label %104
  ]

22:                                               ; preds = %20
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CAN_TSR_RQCP0, align 4
  %27 = load i32, i32* @CAN_TSR_RQCP1, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CAN_TSR_RQCP2, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @CheckITStatus(i32 %25, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %112

32:                                               ; preds = %20
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CAN_RF0R_FMP0, align 4
  %37 = call i32 @CheckITStatus(i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %112

38:                                               ; preds = %20
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CAN_RF0R_FULL0, align 4
  %43 = call i32 @CheckITStatus(i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %112

44:                                               ; preds = %20
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CAN_RF0R_FOVR0, align 4
  %49 = call i32 @CheckITStatus(i32 %47, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %112

50:                                               ; preds = %20
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CAN_RF1R_FMP1, align 4
  %55 = call i32 @CheckITStatus(i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %112

56:                                               ; preds = %20
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CAN_RF1R_FULL1, align 4
  %61 = call i32 @CheckITStatus(i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %112

62:                                               ; preds = %20
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CAN_RF1R_FOVR1, align 4
  %67 = call i32 @CheckITStatus(i32 %65, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %112

68:                                               ; preds = %20
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CAN_MSR_WKUI, align 4
  %73 = call i32 @CheckITStatus(i32 %71, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %112

74:                                               ; preds = %20
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CAN_MSR_SLAKI, align 4
  %79 = call i32 @CheckITStatus(i32 %77, i32 %78)
  store i32 %79, i32* %5, align 4
  br label %112

80:                                               ; preds = %20
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CAN_ESR_EWGF, align 4
  %85 = call i32 @CheckITStatus(i32 %83, i32 %84)
  store i32 %85, i32* %5, align 4
  br label %112

86:                                               ; preds = %20
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CAN_ESR_EPVF, align 4
  %91 = call i32 @CheckITStatus(i32 %89, i32 %90)
  store i32 %91, i32* %5, align 4
  br label %112

92:                                               ; preds = %20
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CAN_ESR_BOFF, align 4
  %97 = call i32 @CheckITStatus(i32 %95, i32 %96)
  store i32 %97, i32* %5, align 4
  br label %112

98:                                               ; preds = %20
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @CAN_ESR_LEC, align 4
  %103 = call i32 @CheckITStatus(i32 %101, i32 %102)
  store i32 %103, i32* %5, align 4
  br label %112

104:                                              ; preds = %20
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @CAN_MSR_ERRI, align 4
  %109 = call i32 @CheckITStatus(i32 %107, i32 %108)
  store i32 %109, i32* %5, align 4
  br label %112

110:                                              ; preds = %20
  %111 = load i32, i32* @RESET, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %104, %98, %92, %86, %80, %74, %68, %62, %56, %50, %44, %38, %32, %22
  br label %115

113:                                              ; preds = %2
  %114 = load i32, i32* @RESET, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %112
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_CAN_IT(i32) #1

declare dso_local i32 @CheckITStatus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
