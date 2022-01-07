; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_usart.c_USART_Init.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_usart.c_USART_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i8* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_13__ = type { i32, i32 }

@USART_HardwareFlowControl_None = common dso_local global i32 0, align 4
@USART_CR2_STOP = common dso_local global i64 0, align 8
@CR1_CLEAR_MASK = common dso_local global i64 0, align 8
@CR3_CLEAR_MASK = common dso_local global i64 0, align 8
@USART1 = common dso_local global %struct.TYPE_11__* null, align 8
@USART6 = common dso_local global %struct.TYPE_11__* null, align 8
@USART_CR1_OVER8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @USART_Init(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = call i32 @IS_USART_ALL_PERIPH(%struct.TYPE_11__* %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @IS_USART_BAUDRATE(i32 %15)
  %17 = call i32 @assert_param(i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @IS_USART_WORD_LENGTH(i64 %20)
  %22 = call i32 @assert_param(i32 %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @IS_USART_STOPBITS(i64 %25)
  %27 = call i32 @assert_param(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IS_USART_PARITY(i32 %30)
  %32 = call i32 @assert_param(i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @IS_USART_MODE(i32 %35)
  %37 = call i32 @assert_param(i32 %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IS_USART_HARDWARE_FLOW_CONTROL(i32 %40)
  %42 = call i32 @assert_param(i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @USART_HardwareFlowControl_None, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = call i32 @IS_USART_1236_PERIPH(%struct.TYPE_11__* %49)
  %51 = call i32 @assert_param(i32 %50)
  br label %52

52:                                               ; preds = %48, %2
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %5, align 4
  %56 = load i64, i64* @USART_CR2_STOP, align 8
  %57 = trunc i64 %56 to i32
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  %76 = load i64, i64* @CR1_CLEAR_MASK, align 8
  %77 = trunc i64 %76 to i32
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %84, %87
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %88, %91
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %5, align 4
  %104 = load i64, i64* @CR3_CLEAR_MASK, align 8
  %105 = trunc i64 %104 to i32
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %5, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = call i32 @RCC_GetClocksFreq(%struct.TYPE_13__* %9)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** @USART1, align 8
  %123 = icmp eq %struct.TYPE_11__* %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %52
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** @USART6, align 8
  %127 = icmp eq %struct.TYPE_11__* %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124, %52
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %6, align 4
  br label %134

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %131, %128
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @USART_CR1_OVER8, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %134
  %142 = load i32, i32* %6, align 4
  %143 = mul nsw i32 25, %142
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = mul nsw i32 2, %146
  %148 = sdiv i32 %143, %147
  store i32 %148, i32* %7, align 4
  br label %157

149:                                              ; preds = %134
  %150 = load i32, i32* %6, align 4
  %151 = mul nsw i32 25, %150
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 4, %154
  %156 = sdiv i32 %151, %155
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %149, %141
  %158 = load i32, i32* %7, align 4
  %159 = sdiv i32 %158, 100
  %160 = shl i32 %159, 4
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %5, align 4
  %163 = ashr i32 %162, 4
  %164 = mul nsw i32 100, %163
  %165 = sub nsw i32 %161, %164
  store i32 %165, i32* %8, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @USART_CR1_OVER8, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %157
  %173 = load i32, i32* %8, align 4
  %174 = mul nsw i32 %173, 8
  %175 = add nsw i32 %174, 50
  %176 = sdiv i32 %175, 100
  %177 = and i32 %176, 7
  %178 = load i32, i32* %5, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %5, align 4
  br label %188

180:                                              ; preds = %157
  %181 = load i32, i32* %8, align 4
  %182 = mul nsw i32 %181, 16
  %183 = add nsw i32 %182, 50
  %184 = sdiv i32 %183, 100
  %185 = and i32 %184, 15
  %186 = load i32, i32* %5, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %180, %172
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = inttoptr i64 %190 to i8*
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 3
  store i8* %191, i8** %193, align 8
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_USART_ALL_PERIPH(%struct.TYPE_11__*) #1

declare dso_local i32 @IS_USART_BAUDRATE(i32) #1

declare dso_local i32 @IS_USART_WORD_LENGTH(i64) #1

declare dso_local i32 @IS_USART_STOPBITS(i64) #1

declare dso_local i32 @IS_USART_PARITY(i32) #1

declare dso_local i32 @IS_USART_MODE(i32) #1

declare dso_local i32 @IS_USART_HARDWARE_FLOW_CONTROL(i32) #1

declare dso_local i32 @IS_USART_1236_PERIPH(%struct.TYPE_11__*) #1

declare dso_local i32 @RCC_GetClocksFreq(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
