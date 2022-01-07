; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_can.c_CAN_ClearITPendingBit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_can.c_CAN_ClearITPendingBit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i32, i32 }

@CAN_TSR_RQCP0 = common dso_local global i32 0, align 4
@CAN_TSR_RQCP1 = common dso_local global i32 0, align 4
@CAN_TSR_RQCP2 = common dso_local global i32 0, align 4
@CAN_RF0R_FULL0 = common dso_local global i32 0, align 4
@CAN_RF0R_FOVR0 = common dso_local global i32 0, align 4
@CAN_RF1R_FULL1 = common dso_local global i32 0, align 4
@CAN_RF1R_FOVR1 = common dso_local global i32 0, align 4
@CAN_MSR_WKUI = common dso_local global i8* null, align 8
@CAN_MSR_SLAKI = common dso_local global i8* null, align 8
@CAN_MSR_ERRI = common dso_local global i8* null, align 8
@RESET = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CAN_ClearITPendingBit(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = call i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_4__* %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @IS_CAN_CLEAR_IT(i32 %8)
  %10 = call i32 @assert_param(i32 %9)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %70 [
    i32 129, label %12
    i32 135, label %20
    i32 133, label %24
    i32 134, label %28
    i32 132, label %32
    i32 128, label %36
    i32 130, label %40
    i32 136, label %44
    i32 138, label %48
    i32 139, label %52
    i32 131, label %56
    i32 137, label %63
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @CAN_TSR_RQCP0, align 4
  %14 = load i32, i32* @CAN_TSR_RQCP1, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CAN_TSR_RQCP2, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %71

20:                                               ; preds = %2
  %21 = load i32, i32* @CAN_RF0R_FULL0, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  br label %71

24:                                               ; preds = %2
  %25 = load i32, i32* @CAN_RF0R_FOVR0, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  br label %71

28:                                               ; preds = %2
  %29 = load i32, i32* @CAN_RF1R_FULL1, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  br label %71

32:                                               ; preds = %2
  %33 = load i32, i32* @CAN_RF1R_FOVR1, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  br label %71

36:                                               ; preds = %2
  %37 = load i8*, i8** @CAN_MSR_WKUI, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  br label %71

40:                                               ; preds = %2
  %41 = load i8*, i8** @CAN_MSR_SLAKI, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %71

44:                                               ; preds = %2
  %45 = load i8*, i8** @CAN_MSR_ERRI, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %71

48:                                               ; preds = %2
  %49 = load i8*, i8** @CAN_MSR_ERRI, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %71

52:                                               ; preds = %2
  %53 = load i8*, i8** @CAN_MSR_ERRI, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %71

56:                                               ; preds = %2
  %57 = load i8*, i8** @RESET, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @CAN_MSR_ERRI, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %71

63:                                               ; preds = %2
  %64 = load i8*, i8** @RESET, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** @CAN_MSR_ERRI, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  br label %71

70:                                               ; preds = %2
  br label %71

71:                                               ; preds = %70, %63, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %12
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_CAN_CLEAR_IT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
