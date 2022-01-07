; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_can.c_CAN_GetFlagStatus.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_can.c_CAN_GetFlagStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@RESET = common dso_local global i64 0, align 8
@CAN_FLAGS_ESR = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8
@CAN_FLAGS_MSR = common dso_local global i32 0, align 4
@CAN_FLAGS_TSR = common dso_local global i32 0, align 4
@CAN_FLAGS_RF0R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CAN_GetFlagStatus(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @RESET, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = call i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_4__* %7)
  %9 = call i32 @assert_param(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @IS_CAN_GET_FLAG(i32 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CAN_FLAGS_ESR, align 4
  %15 = and i32 %13, %14
  %16 = load i64, i64* @RESET, align 8
  %17 = trunc i64 %16 to i32
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 1048575
  %25 = and i32 %22, %24
  %26 = load i64, i64* @RESET, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i64, i64* @SET, align 8
  store i64 %30, i64* %5, align 8
  br label %33

31:                                               ; preds = %19
  %32 = load i64, i64* @RESET, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %31, %29
  br label %118

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @CAN_FLAGS_MSR, align 4
  %37 = and i32 %35, %36
  %38 = load i64, i64* @RESET, align 8
  %39 = trunc i64 %38 to i32
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 1048575
  %47 = and i32 %44, %46
  %48 = load i64, i64* @RESET, align 8
  %49 = trunc i64 %48 to i32
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i64, i64* @SET, align 8
  store i64 %52, i64* %5, align 8
  br label %55

53:                                               ; preds = %41
  %54 = load i64, i64* @RESET, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %53, %51
  br label %117

56:                                               ; preds = %34
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @CAN_FLAGS_TSR, align 4
  %59 = and i32 %57, %58
  %60 = load i64, i64* @RESET, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %56
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, 1048575
  %69 = and i32 %66, %68
  %70 = load i64, i64* @RESET, align 8
  %71 = trunc i64 %70 to i32
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i64, i64* @SET, align 8
  store i64 %74, i64* %5, align 8
  br label %77

75:                                               ; preds = %63
  %76 = load i64, i64* @RESET, align 8
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %75, %73
  br label %116

78:                                               ; preds = %56
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @CAN_FLAGS_RF0R, align 4
  %81 = and i32 %79, %80
  %82 = load i64, i64* @RESET, align 8
  %83 = trunc i64 %82 to i32
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %78
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, 1048575
  %91 = and i32 %88, %90
  %92 = load i64, i64* @RESET, align 8
  %93 = trunc i64 %92 to i32
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i64, i64* @SET, align 8
  store i64 %96, i64* %5, align 8
  br label %99

97:                                               ; preds = %85
  %98 = load i64, i64* @RESET, align 8
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %97, %95
  br label %115

100:                                              ; preds = %78
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, 1048575
  %106 = and i32 %103, %105
  %107 = load i64, i64* @RESET, align 8
  %108 = trunc i64 %107 to i32
  %109 = icmp ne i32 %106, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i64, i64* @SET, align 8
  store i64 %111, i64* %5, align 8
  br label %114

112:                                              ; preds = %100
  %113 = load i64, i64* @RESET, align 8
  store i64 %113, i64* %5, align 8
  br label %114

114:                                              ; preds = %112, %110
  br label %115

115:                                              ; preds = %114, %99
  br label %116

116:                                              ; preds = %115, %77
  br label %117

117:                                              ; preds = %116, %55
  br label %118

118:                                              ; preds = %117, %33
  %119 = load i64, i64* %5, align 8
  ret i64 %119
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_CAN_GET_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
