; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_SetTime.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_SetTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i64, i64 }

@ERROR = common dso_local global i64 0, align 8
@RTC_Format_BIN = common dso_local global i64 0, align 8
@RTC = common dso_local global %struct.TYPE_5__* null, align 8
@RTC_CR_FMT = common dso_local global i64 0, align 8
@RESET = common dso_local global i64 0, align 8
@RTC_TR_RESERVED_MASK = common dso_local global i64 0, align 8
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
  br i1 %13, label %14, label %52

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RTC_CR_FMT, align 8
  %19 = and i64 %17, %18
  %20 = load i64, i64* @RESET, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @IS_RTC_HOUR12(i64 %25)
  %27 = call i32 @assert_param(i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @IS_RTC_H12(i32 %30)
  %32 = call i32 @assert_param(i32 %31)
  br label %41

33:                                               ; preds = %14
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @IS_RTC_HOUR24(i64 %38)
  %40 = call i32 @assert_param(i32 %39)
  br label %41

41:                                               ; preds = %33, %22
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @IS_RTC_MINUTES(i64 %44)
  %46 = call i32 @assert_param(i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @IS_RTC_SECONDS(i64 %49)
  %51 = call i32 @assert_param(i32 %50)
  br label %95

52:                                               ; preds = %2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RTC_CR_FMT, align 8
  %57 = and i64 %55, %56
  %58 = load i64, i64* @RESET, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %52
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @RTC_Bcd2ToByte(i64 %63)
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @IS_RTC_HOUR12(i64 %65)
  %67 = call i32 @assert_param(i32 %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @IS_RTC_H12(i32 %70)
  %72 = call i32 @assert_param(i32 %71)
  br label %82

73:                                               ; preds = %52
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 0, i32* %75, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @RTC_Bcd2ToByte(i64 %78)
  %80 = call i32 @IS_RTC_HOUR24(i64 %79)
  %81 = call i32 @assert_param(i32 %80)
  br label %82

82:                                               ; preds = %73, %60
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @RTC_Bcd2ToByte(i64 %85)
  %87 = call i32 @IS_RTC_MINUTES(i64 %86)
  %88 = call i32 @assert_param(i32 %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @RTC_Bcd2ToByte(i64 %91)
  %93 = call i32 @IS_RTC_SECONDS(i64 %92)
  %94 = call i32 @assert_param(i32 %93)
  br label %95

95:                                               ; preds = %82, %41
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* @RTC_Format_BIN, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = shl i64 %102, 16
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = shl i64 %106, 8
  %108 = or i64 %103, %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = or i64 %108, %111
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = shl i64 %116, 16
  %118 = or i64 %112, %117
  store i64 %118, i64* %5, align 8
  br label %142

119:                                              ; preds = %95
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @RTC_ByteToBcd2(i64 %122)
  %124 = shl i64 %123, 16
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @RTC_ByteToBcd2(i64 %127)
  %129 = shl i64 %128, 8
  %130 = or i64 %124, %129
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @RTC_ByteToBcd2(i64 %133)
  %135 = or i64 %130, %134
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = shl i64 %139, 16
  %141 = or i64 %135, %140
  store i64 %141, i64* %5, align 8
  br label %142

142:                                              ; preds = %119, %99
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  store i32 202, i32* %144, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  store i32 83, i32* %146, align 8
  %147 = call i64 (...) @RTC_EnterInitMode()
  %148 = load i64, i64* @ERROR, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load i64, i64* @ERROR, align 8
  store i64 %151, i64* %6, align 8
  br label %167

152:                                              ; preds = %142
  %153 = load i64, i64* %5, align 8
  %154 = load i64, i64* @RTC_TR_RESERVED_MASK, align 8
  %155 = and i64 %153, %154
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  store i64 %155, i64* %157, align 8
  %158 = call i32 (...) @RTC_ExitInitMode()
  %159 = call i64 (...) @RTC_WaitForSynchro()
  %160 = load i64, i64* @ERROR, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  %163 = load i64, i64* @ERROR, align 8
  store i64 %163, i64* %6, align 8
  br label %166

164:                                              ; preds = %152
  %165 = load i64, i64* @SUCCESS, align 8
  store i64 %165, i64* %6, align 8
  br label %166

166:                                              ; preds = %164, %162
  br label %167

167:                                              ; preds = %166, %150
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  store i32 255, i32* %169, align 8
  %170 = load i64, i64* %6, align 8
  ret i64 %170
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
