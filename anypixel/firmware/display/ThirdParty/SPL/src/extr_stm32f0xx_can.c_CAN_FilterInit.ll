; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_can.c_CAN_FilterInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_can.c_CAN_FilterInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@FMR_FINIT = common dso_local global i32 0, align 4
@CAN = common dso_local global %struct.TYPE_7__* null, align 8
@CAN_FilterScale_16bit = common dso_local global i64 0, align 8
@CAN_FilterScale_32bit = common dso_local global i64 0, align 8
@CAN_FilterMode_IdMask = common dso_local global i64 0, align 8
@CAN_Filter_FIFO0 = common dso_local global i64 0, align 8
@CAN_Filter_FIFO1 = common dso_local global i64 0, align 8
@ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CAN_FilterInit(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @IS_CAN_FILTER_NUMBER(i32 %6)
  %8 = call i32 @assert_param(i32 %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @IS_CAN_FILTER_MODE(i64 %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @IS_CAN_FILTER_SCALE(i64 %16)
  %18 = call i32 @assert_param(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @IS_CAN_FILTER_FIFO(i64 %21)
  %23 = call i32 @assert_param(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @IS_FUNCTIONAL_STATE(i64 %26)
  %28 = call i32 @assert_param(i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 1, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @FMR_FINIT, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* %3, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CAN_FilterScale_16bit, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %98

49:                                               ; preds = %1
  %50 = load i32, i32* %3, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = and i32 65535, %59
  %61 = shl i32 %60, 16
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = and i32 65535, %65
  %67 = or i32 %61, %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %67, i32* %76, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = and i32 65535, %80
  %82 = shl i32 %81, 16
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = and i32 65535, %86
  %88 = or i32 %82, %87
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 5
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i32 %88, i32* %97, align 4
  br label %98

98:                                               ; preds = %49, %1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CAN_FilterScale_32bit, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %152

104:                                              ; preds = %98
  %105 = load i32, i32* %3, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 8
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = and i32 65535, %113
  %115 = shl i32 %114, 16
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = and i32 65535, %119
  %121 = or i32 %115, %120
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32 %121, i32* %130, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = and i32 65535, %134
  %136 = shl i32 %135, 16
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = and i32 65535, %140
  %142 = or i32 %136, %141
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 5
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  store i32 %142, i32* %151, align 4
  br label %152

152:                                              ; preds = %104, %98
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @CAN_FilterMode_IdMask, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %152
  %159 = load i32, i32* %3, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %171

165:                                              ; preds = %152
  %166 = load i32, i32* %3, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %165, %158
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @CAN_Filter_FIFO0, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %171
  %178 = load i32, i32* %3, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, %179
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %177, %171
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @CAN_Filter_FIFO1, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  %191 = load i32, i32* %3, align 4
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %190, %184
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @ENABLE, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %196
  %203 = load i32, i32* %3, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %202, %196
  %209 = load i32, i32* @FMR_FINIT, align 4
  %210 = xor i32 %209, -1
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** @CAN, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = and i32 %213, %210
  store i32 %214, i32* %212, align 8
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_CAN_FILTER_NUMBER(i32) #1

declare dso_local i32 @IS_CAN_FILTER_MODE(i64) #1

declare dso_local i32 @IS_CAN_FILTER_SCALE(i64) #1

declare dso_local i32 @IS_CAN_FILTER_FIFO(i64) #1

declare dso_local i32 @IS_FUNCTIONAL_STATE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
