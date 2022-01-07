; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_tim.c_TIM_DeInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_tim.c_TIM_DeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIM1 = common dso_local global i32* null, align 8
@RCC_APB2Periph_TIM1 = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@DISABLE = common dso_local global i32 0, align 4
@TIM2 = common dso_local global i32* null, align 8
@RCC_APB1Periph_TIM2 = common dso_local global i32 0, align 4
@TIM3 = common dso_local global i32* null, align 8
@RCC_APB1Periph_TIM3 = common dso_local global i32 0, align 4
@TIM4 = common dso_local global i32* null, align 8
@RCC_APB1Periph_TIM4 = common dso_local global i32 0, align 4
@TIM5 = common dso_local global i32* null, align 8
@RCC_APB1Periph_TIM5 = common dso_local global i32 0, align 4
@TIM6 = common dso_local global i32* null, align 8
@RCC_APB1Periph_TIM6 = common dso_local global i32 0, align 4
@TIM7 = common dso_local global i32* null, align 8
@RCC_APB1Periph_TIM7 = common dso_local global i32 0, align 4
@TIM8 = common dso_local global i32* null, align 8
@RCC_APB2Periph_TIM8 = common dso_local global i32 0, align 4
@TIM9 = common dso_local global i32* null, align 8
@RCC_APB2Periph_TIM9 = common dso_local global i32 0, align 4
@TIM10 = common dso_local global i32* null, align 8
@RCC_APB2Periph_TIM10 = common dso_local global i32 0, align 4
@TIM11 = common dso_local global i32* null, align 8
@RCC_APB2Periph_TIM11 = common dso_local global i32 0, align 4
@TIM12 = common dso_local global i32* null, align 8
@RCC_APB1Periph_TIM12 = common dso_local global i32 0, align 4
@TIM13 = common dso_local global i32* null, align 8
@RCC_APB1Periph_TIM13 = common dso_local global i32 0, align 4
@TIM14 = common dso_local global i32* null, align 8
@RCC_APB1Periph_TIM14 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TIM_DeInit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @IS_TIM_ALL_PERIPH(i32* %3)
  %5 = call i32 @assert_param(i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32*, i32** @TIM1, align 8
  %8 = icmp eq i32* %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @RCC_APB2Periph_TIM1, align 4
  %11 = load i32, i32* @ENABLE, align 4
  %12 = call i32 @RCC_APB2PeriphResetCmd(i32 %10, i32 %11)
  %13 = load i32, i32* @RCC_APB2Periph_TIM1, align 4
  %14 = load i32, i32* @DISABLE, align 4
  %15 = call i32 @RCC_APB2PeriphResetCmd(i32 %13, i32 %14)
  br label %172

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = load i32*, i32** @TIM2, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* @RCC_APB1Periph_TIM2, align 4
  %22 = load i32, i32* @ENABLE, align 4
  %23 = call i32 @RCC_APB1PeriphResetCmd(i32 %21, i32 %22)
  %24 = load i32, i32* @RCC_APB1Periph_TIM2, align 4
  %25 = load i32, i32* @DISABLE, align 4
  %26 = call i32 @RCC_APB1PeriphResetCmd(i32 %24, i32 %25)
  br label %171

27:                                               ; preds = %16
  %28 = load i32*, i32** %2, align 8
  %29 = load i32*, i32** @TIM3, align 8
  %30 = icmp eq i32* %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @RCC_APB1Periph_TIM3, align 4
  %33 = load i32, i32* @ENABLE, align 4
  %34 = call i32 @RCC_APB1PeriphResetCmd(i32 %32, i32 %33)
  %35 = load i32, i32* @RCC_APB1Periph_TIM3, align 4
  %36 = load i32, i32* @DISABLE, align 4
  %37 = call i32 @RCC_APB1PeriphResetCmd(i32 %35, i32 %36)
  br label %170

38:                                               ; preds = %27
  %39 = load i32*, i32** %2, align 8
  %40 = load i32*, i32** @TIM4, align 8
  %41 = icmp eq i32* %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* @RCC_APB1Periph_TIM4, align 4
  %44 = load i32, i32* @ENABLE, align 4
  %45 = call i32 @RCC_APB1PeriphResetCmd(i32 %43, i32 %44)
  %46 = load i32, i32* @RCC_APB1Periph_TIM4, align 4
  %47 = load i32, i32* @DISABLE, align 4
  %48 = call i32 @RCC_APB1PeriphResetCmd(i32 %46, i32 %47)
  br label %169

49:                                               ; preds = %38
  %50 = load i32*, i32** %2, align 8
  %51 = load i32*, i32** @TIM5, align 8
  %52 = icmp eq i32* %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* @RCC_APB1Periph_TIM5, align 4
  %55 = load i32, i32* @ENABLE, align 4
  %56 = call i32 @RCC_APB1PeriphResetCmd(i32 %54, i32 %55)
  %57 = load i32, i32* @RCC_APB1Periph_TIM5, align 4
  %58 = load i32, i32* @DISABLE, align 4
  %59 = call i32 @RCC_APB1PeriphResetCmd(i32 %57, i32 %58)
  br label %168

60:                                               ; preds = %49
  %61 = load i32*, i32** %2, align 8
  %62 = load i32*, i32** @TIM6, align 8
  %63 = icmp eq i32* %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i32, i32* @RCC_APB1Periph_TIM6, align 4
  %66 = load i32, i32* @ENABLE, align 4
  %67 = call i32 @RCC_APB1PeriphResetCmd(i32 %65, i32 %66)
  %68 = load i32, i32* @RCC_APB1Periph_TIM6, align 4
  %69 = load i32, i32* @DISABLE, align 4
  %70 = call i32 @RCC_APB1PeriphResetCmd(i32 %68, i32 %69)
  br label %167

71:                                               ; preds = %60
  %72 = load i32*, i32** %2, align 8
  %73 = load i32*, i32** @TIM7, align 8
  %74 = icmp eq i32* %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32, i32* @RCC_APB1Periph_TIM7, align 4
  %77 = load i32, i32* @ENABLE, align 4
  %78 = call i32 @RCC_APB1PeriphResetCmd(i32 %76, i32 %77)
  %79 = load i32, i32* @RCC_APB1Periph_TIM7, align 4
  %80 = load i32, i32* @DISABLE, align 4
  %81 = call i32 @RCC_APB1PeriphResetCmd(i32 %79, i32 %80)
  br label %166

82:                                               ; preds = %71
  %83 = load i32*, i32** %2, align 8
  %84 = load i32*, i32** @TIM8, align 8
  %85 = icmp eq i32* %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* @RCC_APB2Periph_TIM8, align 4
  %88 = load i32, i32* @ENABLE, align 4
  %89 = call i32 @RCC_APB2PeriphResetCmd(i32 %87, i32 %88)
  %90 = load i32, i32* @RCC_APB2Periph_TIM8, align 4
  %91 = load i32, i32* @DISABLE, align 4
  %92 = call i32 @RCC_APB2PeriphResetCmd(i32 %90, i32 %91)
  br label %165

93:                                               ; preds = %82
  %94 = load i32*, i32** %2, align 8
  %95 = load i32*, i32** @TIM9, align 8
  %96 = icmp eq i32* %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i32, i32* @RCC_APB2Periph_TIM9, align 4
  %99 = load i32, i32* @ENABLE, align 4
  %100 = call i32 @RCC_APB2PeriphResetCmd(i32 %98, i32 %99)
  %101 = load i32, i32* @RCC_APB2Periph_TIM9, align 4
  %102 = load i32, i32* @DISABLE, align 4
  %103 = call i32 @RCC_APB2PeriphResetCmd(i32 %101, i32 %102)
  br label %164

104:                                              ; preds = %93
  %105 = load i32*, i32** %2, align 8
  %106 = load i32*, i32** @TIM10, align 8
  %107 = icmp eq i32* %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32, i32* @RCC_APB2Periph_TIM10, align 4
  %110 = load i32, i32* @ENABLE, align 4
  %111 = call i32 @RCC_APB2PeriphResetCmd(i32 %109, i32 %110)
  %112 = load i32, i32* @RCC_APB2Periph_TIM10, align 4
  %113 = load i32, i32* @DISABLE, align 4
  %114 = call i32 @RCC_APB2PeriphResetCmd(i32 %112, i32 %113)
  br label %163

115:                                              ; preds = %104
  %116 = load i32*, i32** %2, align 8
  %117 = load i32*, i32** @TIM11, align 8
  %118 = icmp eq i32* %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %115
  %120 = load i32, i32* @RCC_APB2Periph_TIM11, align 4
  %121 = load i32, i32* @ENABLE, align 4
  %122 = call i32 @RCC_APB2PeriphResetCmd(i32 %120, i32 %121)
  %123 = load i32, i32* @RCC_APB2Periph_TIM11, align 4
  %124 = load i32, i32* @DISABLE, align 4
  %125 = call i32 @RCC_APB2PeriphResetCmd(i32 %123, i32 %124)
  br label %162

126:                                              ; preds = %115
  %127 = load i32*, i32** %2, align 8
  %128 = load i32*, i32** @TIM12, align 8
  %129 = icmp eq i32* %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i32, i32* @RCC_APB1Periph_TIM12, align 4
  %132 = load i32, i32* @ENABLE, align 4
  %133 = call i32 @RCC_APB1PeriphResetCmd(i32 %131, i32 %132)
  %134 = load i32, i32* @RCC_APB1Periph_TIM12, align 4
  %135 = load i32, i32* @DISABLE, align 4
  %136 = call i32 @RCC_APB1PeriphResetCmd(i32 %134, i32 %135)
  br label %161

137:                                              ; preds = %126
  %138 = load i32*, i32** %2, align 8
  %139 = load i32*, i32** @TIM13, align 8
  %140 = icmp eq i32* %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i32, i32* @RCC_APB1Periph_TIM13, align 4
  %143 = load i32, i32* @ENABLE, align 4
  %144 = call i32 @RCC_APB1PeriphResetCmd(i32 %142, i32 %143)
  %145 = load i32, i32* @RCC_APB1Periph_TIM13, align 4
  %146 = load i32, i32* @DISABLE, align 4
  %147 = call i32 @RCC_APB1PeriphResetCmd(i32 %145, i32 %146)
  br label %160

148:                                              ; preds = %137
  %149 = load i32*, i32** %2, align 8
  %150 = load i32*, i32** @TIM14, align 8
  %151 = icmp eq i32* %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i32, i32* @RCC_APB1Periph_TIM14, align 4
  %154 = load i32, i32* @ENABLE, align 4
  %155 = call i32 @RCC_APB1PeriphResetCmd(i32 %153, i32 %154)
  %156 = load i32, i32* @RCC_APB1Periph_TIM14, align 4
  %157 = load i32, i32* @DISABLE, align 4
  %158 = call i32 @RCC_APB1PeriphResetCmd(i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %152, %148
  br label %160

160:                                              ; preds = %159, %141
  br label %161

161:                                              ; preds = %160, %130
  br label %162

162:                                              ; preds = %161, %119
  br label %163

163:                                              ; preds = %162, %108
  br label %164

164:                                              ; preds = %163, %97
  br label %165

165:                                              ; preds = %164, %86
  br label %166

166:                                              ; preds = %165, %75
  br label %167

167:                                              ; preds = %166, %64
  br label %168

168:                                              ; preds = %167, %53
  br label %169

169:                                              ; preds = %168, %42
  br label %170

170:                                              ; preds = %169, %31
  br label %171

171:                                              ; preds = %170, %20
  br label %172

172:                                              ; preds = %171, %9
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_TIM_ALL_PERIPH(i32*) #1

declare dso_local i32 @RCC_APB2PeriphResetCmd(i32, i32) #1

declare dso_local i32 @RCC_APB1PeriphResetCmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
