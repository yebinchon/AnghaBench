; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_can.c_CAN_OperatingModeRequest.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_can.c_CAN_OperatingModeRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@CAN_ModeStatus_Failed = common dso_local global i64 0, align 8
@INAK_TIMEOUT = common dso_local global i64 0, align 8
@CAN_OperatingMode_Initialization = common dso_local global i64 0, align 8
@CAN_MCR_SLEEP = common dso_local global i64 0, align 8
@CAN_MCR_INRQ = common dso_local global i64 0, align 8
@CAN_MODE_MASK = common dso_local global i32 0, align 4
@CAN_MSR_INAK = common dso_local global i32 0, align 4
@CAN_ModeStatus_Success = common dso_local global i64 0, align 8
@CAN_OperatingMode_Normal = common dso_local global i64 0, align 8
@CAN_OperatingMode_Sleep = common dso_local global i64 0, align 8
@CAN_MSR_SLAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CAN_OperatingModeRequest(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @CAN_ModeStatus_Failed, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* @INAK_TIMEOUT, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = call i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_4__* %9)
  %11 = call i32 @assert_param(i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @IS_CAN_OPERATING_MODE(i64 %12)
  %14 = call i32 @assert_param(i32 %13)
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @CAN_OperatingMode_Initialization, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CAN_MCR_SLEEP, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  %25 = load i64, i64* @CAN_MCR_INRQ, align 8
  %26 = or i64 %24, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %42, %18
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CAN_MODE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @CAN_MSR_INAK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %37, %29
  %41 = phi i1 [ false, %29 ], [ %39, %37 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %6, align 8
  br label %29

45:                                               ; preds = %40
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @CAN_MODE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @CAN_MSR_INAK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* @CAN_ModeStatus_Failed, align 8
  store i64 %54, i64* %5, align 8
  br label %57

55:                                               ; preds = %45
  %56 = load i64, i64* @CAN_ModeStatus_Success, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %55, %53
  br label %146

58:                                               ; preds = %2
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @CAN_OperatingMode_Normal, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %98

62:                                               ; preds = %58
  %63 = load i64, i64* @CAN_MCR_SLEEP, align 8
  %64 = load i64, i64* @CAN_MCR_INRQ, align 8
  %65 = or i64 %63, %64
  %66 = xor i64 %65, -1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = and i64 %69, %66
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %83, %62
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CAN_MODE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %78, %71
  %82 = phi i1 [ false, %71 ], [ %80, %78 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i64, i64* %6, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %6, align 8
  br label %71

86:                                               ; preds = %81
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CAN_MODE_MASK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i64, i64* @CAN_ModeStatus_Failed, align 8
  store i64 %94, i64* %5, align 8
  br label %97

95:                                               ; preds = %86
  %96 = load i64, i64* @CAN_ModeStatus_Success, align 8
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %95, %93
  br label %145

98:                                               ; preds = %58
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @CAN_OperatingMode_Sleep, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %142

102:                                              ; preds = %98
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CAN_MCR_INRQ, align 8
  %107 = xor i64 %106, -1
  %108 = and i64 %105, %107
  %109 = load i64, i64* @CAN_MCR_SLEEP, align 8
  %110 = or i64 %108, %109
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %126, %102
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @CAN_MODE_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @CAN_MSR_SLAK, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load i64, i64* %6, align 8
  %123 = icmp ne i64 %122, 0
  br label %124

124:                                              ; preds = %121, %113
  %125 = phi i1 [ false, %113 ], [ %123, %121 ]
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = load i64, i64* %6, align 8
  %128 = add nsw i64 %127, -1
  store i64 %128, i64* %6, align 8
  br label %113

129:                                              ; preds = %124
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CAN_MODE_MASK, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @CAN_MSR_SLAK, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i64, i64* @CAN_ModeStatus_Failed, align 8
  store i64 %138, i64* %5, align 8
  br label %141

139:                                              ; preds = %129
  %140 = load i64, i64* @CAN_ModeStatus_Success, align 8
  store i64 %140, i64* %5, align 8
  br label %141

141:                                              ; preds = %139, %137
  br label %144

142:                                              ; preds = %98
  %143 = load i64, i64* @CAN_ModeStatus_Failed, align 8
  store i64 %143, i64* %5, align 8
  br label %144

144:                                              ; preds = %142, %141
  br label %145

145:                                              ; preds = %144, %97
  br label %146

146:                                              ; preds = %145, %57
  %147 = load i64, i64* %5, align 8
  ret i64 %147
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_CAN_ALL_PERIPH(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_CAN_OPERATING_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
