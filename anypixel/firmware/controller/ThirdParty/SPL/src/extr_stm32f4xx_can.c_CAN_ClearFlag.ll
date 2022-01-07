; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_can.c_CAN_ClearFlag.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_can.c_CAN_ClearFlag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@CAN_FLAG_LEC = common dso_local global i32 0, align 4
@RESET = common dso_local global i64 0, align 8
@CAN_FLAGS_RF0R = common dso_local global i32 0, align 4
@CAN_FLAGS_RF1R = common dso_local global i32 0, align 4
@CAN_FLAGS_TSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CAN_ClearFlag(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = call i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_4__* %6)
  %8 = call i32 @assert_param(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @IS_CAN_CLEAR_FLAG(i32 %9)
  %11 = call i32 @assert_param(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CAN_FLAG_LEC, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i64, i64* @RESET, align 8
  %17 = trunc i64 %16 to i32
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %62

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 1048575
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @CAN_FLAGS_RF0R, align 4
  %25 = and i32 %23, %24
  %26 = load i64, i64* @RESET, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %61

33:                                               ; preds = %20
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @CAN_FLAGS_RF1R, align 4
  %36 = and i32 %34, %35
  %37 = load i64, i64* @RESET, align 8
  %38 = trunc i64 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %60

44:                                               ; preds = %33
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @CAN_FLAGS_TSR, align 4
  %47 = and i32 %45, %46
  %48 = load i64, i64* @RESET, align 8
  %49 = trunc i64 %48 to i32
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  br label %59

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %40
  br label %61

61:                                               ; preds = %60, %29
  br label %62

62:                                               ; preds = %61, %15
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_CAN_CLEAR_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
