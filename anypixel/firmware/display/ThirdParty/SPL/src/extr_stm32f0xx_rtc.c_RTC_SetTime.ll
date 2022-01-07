; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_rtc.c_RTC_SetTime.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_rtc.c_RTC_SetTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i64, i64 }

@ERROR = common dso_local global i64 0, align 8
@RTC_Format_BIN = common dso_local global i64 0, align 8
@RTC = common dso_local global %struct.TYPE_5__* null, align 8
@RTC_CR_FMT = common dso_local global i64 0, align 8
@RESET = common dso_local global i32 0, align 4
@RTC_TR_RESERVED_MASK = common dso_local global i64 0, align 8
@RTC_CR_BYPSHAD = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RTC_SetTime(i64 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i64, i64* @ERROR, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @IS_RTC_FORMAT(i64 %8)
  %10 = call i32 @assert_param(i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @RTC_Format_BIN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RTC_CR_FMT, align 8
  %19 = and i64 %17, %18
  %20 = load i32, i32* @RESET, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %14
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @IS_RTC_HOUR12(i64 %26)
  %28 = call i32 @assert_param(i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @IS_RTC_H12(i32 %31)
  %33 = call i32 @assert_param(i32 %32)
  br label %42

34:                                               ; preds = %14
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @IS_RTC_HOUR24(i64 %39)
  %41 = call i32 @assert_param(i32 %40)
  br label %42

42:                                               ; preds = %34, %23
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @IS_RTC_MINUTES(i64 %45)
  %47 = call i32 @assert_param(i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @IS_RTC_SECONDS(i64 %50)
  %52 = call i32 @assert_param(i32 %51)
  br label %97

53:                                               ; preds = %2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RTC_CR_FMT, align 8
  %58 = and i64 %56, %57
  %59 = load i32, i32* @RESET, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %58, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %53
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @RTC_Bcd2ToByte(i64 %65)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @IS_RTC_HOUR12(i64 %67)
  %69 = call i32 @assert_param(i32 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @IS_RTC_H12(i32 %72)
  %74 = call i32 @assert_param(i32 %73)
  br label %84

75:                                               ; preds = %53
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @RTC_Bcd2ToByte(i64 %80)
  %82 = call i32 @IS_RTC_HOUR24(i64 %81)
  %83 = call i32 @assert_param(i32 %82)
  br label %84

84:                                               ; preds = %75, %62
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @RTC_Bcd2ToByte(i64 %87)
  %89 = call i32 @IS_RTC_MINUTES(i64 %88)
  %90 = call i32 @assert_param(i32 %89)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @RTC_Bcd2ToByte(i64 %93)
  %95 = call i32 @IS_RTC_SECONDS(i64 %94)
  %96 = call i32 @assert_param(i32 %95)
  br label %97

97:                                               ; preds = %84, %42
  %98 = load i64, i64* %3, align 8
  %99 = load i64, i64* @RTC_Format_BIN, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %121

101:                                              ; preds = %97
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = shl i64 %104, 16
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = shl i64 %108, 8
  %110 = or i64 %105, %109
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = or i64 %110, %113
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = shl i64 %118, 16
  %120 = or i64 %114, %119
  store i64 %120, i64* %5, align 8
  br label %144

121:                                              ; preds = %97
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @RTC_ByteToBcd2(i64 %124)
  %126 = shl i64 %125, 16
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @RTC_ByteToBcd2(i64 %129)
  %131 = shl i64 %130, 8
  %132 = or i64 %126, %131
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @RTC_ByteToBcd2(i64 %135)
  %137 = or i64 %132, %136
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = shl i64 %141, 16
  %143 = or i64 %137, %142
  store i64 %143, i64* %5, align 8
  br label %144

144:                                              ; preds = %121, %101
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  store i32 202, i32* %146, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  store i32 83, i32* %148, align 8
  %149 = call i64 (...) @RTC_EnterInitMode()
  %150 = load i64, i64* @ERROR, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i64, i64* @ERROR, align 8
  store i64 %153, i64* %6, align 8
  br label %182

154:                                              ; preds = %144
  %155 = load i64, i64* %5, align 8
  %156 = load i64, i64* @RTC_TR_RESERVED_MASK, align 8
  %157 = and i64 %155, %156
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  %160 = call i32 (...) @RTC_ExitInitMode()
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* @RTC_CR_BYPSHAD, align 4
  %165 = sext i32 %164 to i64
  %166 = and i64 %163, %165
  %167 = load i32, i32* @RESET, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp eq i64 %166, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %154
  %171 = call i64 (...) @RTC_WaitForSynchro()
  %172 = load i64, i64* @ERROR, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i64, i64* @ERROR, align 8
  store i64 %175, i64* %6, align 8
  br label %178

176:                                              ; preds = %170
  %177 = load i64, i64* @SUCCESS, align 8
  store i64 %177, i64* %6, align 8
  br label %178

178:                                              ; preds = %176, %174
  br label %181

179:                                              ; preds = %154
  %180 = load i64, i64* @SUCCESS, align 8
  store i64 %180, i64* %6, align 8
  br label %181

181:                                              ; preds = %179, %178
  br label %182

182:                                              ; preds = %181, %152
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  store i32 255, i32* %184, align 8
  %185 = load i64, i64* %6, align 8
  ret i64 %185
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_RTC_FORMAT(i64) #1

declare dso_local i32 @IS_RTC_HOUR12(i64) #1

declare dso_local i32 @IS_RTC_H12(i32) #1

declare dso_local i32 @IS_RTC_HOUR24(i64) #1

declare dso_local i32 @IS_RTC_MINUTES(i64) #1

declare dso_local i32 @IS_RTC_SECONDS(i64) #1

declare dso_local i64 @RTC_Bcd2ToByte(i64) #1

declare dso_local i64 @RTC_ByteToBcd2(i64) #1

declare dso_local i64 @RTC_EnterInitMode(...) #1

declare dso_local i32 @RTC_ExitInitMode(...) #1

declare dso_local i64 @RTC_WaitForSynchro(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
