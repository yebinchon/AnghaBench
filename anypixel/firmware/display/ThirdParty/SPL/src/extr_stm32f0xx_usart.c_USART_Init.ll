; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_usart.c_USART_Init.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_usart.c_USART_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@USART_CR1_UE = common dso_local global i64 0, align 8
@USART_CR2_STOP = common dso_local global i64 0, align 8
@CR1_CLEAR_MASK = common dso_local global i64 0, align 8
@CR3_CLEAR_MASK = common dso_local global i64 0, align 8
@USART1 = common dso_local global %struct.TYPE_10__* null, align 8
@USART2 = common dso_local global %struct.TYPE_10__* null, align 8
@USART_CR1_OVER8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @USART_Init(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = call i32 @IS_USART_ALL_PERIPH(%struct.TYPE_10__* %9)
  %11 = call i32 @assert_param(i32 %10)
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @IS_USART_BAUDRATE(i32 %14)
  %16 = call i32 @assert_param(i32 %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @IS_USART_WORD_LENGTH(i64 %19)
  %21 = call i32 @assert_param(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @IS_USART_STOPBITS(i64 %24)
  %26 = call i32 @assert_param(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IS_USART_PARITY(i32 %29)
  %31 = call i32 @assert_param(i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @IS_USART_MODE(i32 %34)
  %36 = call i32 @assert_param(i32 %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IS_USART_HARDWARE_FLOW_CONTROL(i32 %39)
  %41 = call i32 @assert_param(i32 %40)
  %42 = load i64, i64* @USART_CR1_UE, align 8
  %43 = trunc i64 %42 to i32
  %44 = xor i32 %43, -1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i64, i64* @USART_CR2_STOP, align 8
  %53 = trunc i64 %52 to i32
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  %69 = load i64, i64* @CR1_CLEAR_MASK, align 8
  %70 = trunc i64 %69 to i32
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %77, %80
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %81, %84
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %7, align 4
  %94 = load i64, i64* @CR3_CLEAR_MASK, align 8
  %95 = trunc i64 %94 to i32
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = call i32 @RCC_GetClocksFreq(%struct.TYPE_12__* %8)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** @USART1, align 8
  %110 = icmp eq %struct.TYPE_10__* %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %2
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %6, align 4
  br label %125

114:                                              ; preds = %2
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** @USART2, align 8
  %117 = icmp eq %struct.TYPE_10__* %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %6, align 4
  br label %124

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %124, %111
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @USART_CR1_OVER8, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %125
  %133 = load i32, i32* %6, align 4
  %134 = mul nsw i32 2, %133
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sdiv i32 %134, %137
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %6, align 4
  %140 = mul nsw i32 2, %139
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = srem i32 %140, %143
  store i32 %144, i32* %7, align 4
  br label %156

145:                                              ; preds = %125
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sdiv i32 %146, %149
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = srem i32 %151, %154
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %145, %132
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sdiv i32 %160, 2
  %162 = icmp sge i32 %157, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %163, %156
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @USART_CR1_OVER8, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %166
  %174 = load i32, i32* %5, align 4
  %175 = and i32 %174, 15
  %176 = ashr i32 %175, 1
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %5, align 4
  %178 = and i32 %177, 65520
  %179 = load i32, i32* %7, align 4
  %180 = or i32 %178, %179
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %173, %166
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_USART_ALL_PERIPH(%struct.TYPE_10__*) #1

declare dso_local i32 @IS_USART_BAUDRATE(i32) #1

declare dso_local i32 @IS_USART_WORD_LENGTH(i64) #1

declare dso_local i32 @IS_USART_STOPBITS(i64) #1

declare dso_local i32 @IS_USART_PARITY(i32) #1

declare dso_local i32 @IS_USART_MODE(i32) #1

declare dso_local i32 @IS_USART_HARDWARE_FLOW_CONTROL(i32) #1

declare dso_local i32 @RCC_GetClocksFreq(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
