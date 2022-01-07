; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_SetDate.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_SetDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }

@ERROR = common dso_local global i64 0, align 8
@RTC_Format_BIN = common dso_local global i64 0, align 8
@RTC = common dso_local global %struct.TYPE_5__* null, align 8
@RTC_DR_RESERVED_MASK = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RTC_SetDate(i64 %0, %struct.TYPE_4__* %1) #0 {
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
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = and i64 %24, -17
  %26 = add nsw i64 %25, 10
  %27 = trunc i64 %26 to i32
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %20, %14, %2
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @RTC_Format_BIN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @IS_RTC_YEAR(i64 %37)
  %39 = call i32 @assert_param(i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = call i32 @IS_RTC_MONTH(i64 %43)
  %45 = call i32 @assert_param(i32 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @IS_RTC_DATE(i64 %48)
  %50 = call i32 @assert_param(i32 %49)
  br label %73

51:                                               ; preds = %30
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @RTC_Bcd2ToByte(i64 %54)
  %56 = call i32 @IS_RTC_YEAR(i64 %55)
  %57 = call i32 @assert_param(i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = call i64 @RTC_Bcd2ToByte(i64 %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @IS_RTC_MONTH(i64 %63)
  %65 = call i32 @assert_param(i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @RTC_Bcd2ToByte(i64 %68)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @IS_RTC_DATE(i64 %70)
  %72 = call i32 @assert_param(i32 %71)
  br label %73

73:                                               ; preds = %51, %34
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @IS_RTC_WEEKDAY(i64 %76)
  %78 = call i32 @assert_param(i32 %77)
  %79 = load i64, i64* %3, align 8
  %80 = load i64, i64* @RTC_Format_BIN, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %73
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = shl i64 %85, 16
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = shl i64 %90, 8
  %92 = or i64 %86, %91
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = or i64 %92, %95
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = shl i64 %99, 13
  %101 = or i64 %96, %100
  store i64 %101, i64* %5, align 8
  br label %125

102:                                              ; preds = %73
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @RTC_ByteToBcd2(i64 %105)
  %107 = shl i64 %106, 16
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = call i64 @RTC_ByteToBcd2(i64 %111)
  %113 = shl i64 %112, 8
  %114 = or i64 %107, %113
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @RTC_ByteToBcd2(i64 %117)
  %119 = or i64 %114, %118
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = shl i64 %122, 13
  %124 = or i64 %119, %123
  store i64 %124, i64* %5, align 8
  br label %125

125:                                              ; preds = %102, %82
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i32 202, i32* %127, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i32 83, i32* %129, align 8
  %130 = call i64 (...) @RTC_EnterInitMode()
  %131 = load i64, i64* @ERROR, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = load i64, i64* @ERROR, align 8
  store i64 %134, i64* %6, align 8
  br label %150

135:                                              ; preds = %125
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* @RTC_DR_RESERVED_MASK, align 8
  %138 = and i64 %136, %137
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = call i32 (...) @RTC_ExitInitMode()
  %142 = call i64 (...) @RTC_WaitForSynchro()
  %143 = load i64, i64* @ERROR, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i64, i64* @ERROR, align 8
  store i64 %146, i64* %6, align 8
  br label %149

147:                                              ; preds = %135
  %148 = load i64, i64* @SUCCESS, align 8
  store i64 %148, i64* %6, align 8
  br label %149

149:                                              ; preds = %147, %145
  br label %150

150:                                              ; preds = %149, %133
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** @RTC, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  store i32 255, i32* %152, align 8
  %153 = load i64, i64* %6, align 8
  ret i64 %153
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_RTC_FORMAT(i64) #1

declare dso_local i32 @IS_RTC_YEAR(i64) #1

declare dso_local i32 @IS_RTC_MONTH(i64) #1

declare dso_local i32 @IS_RTC_DATE(i64) #1

declare dso_local i64 @RTC_Bcd2ToByte(i64) #1

declare dso_local i32 @IS_RTC_WEEKDAY(i64) #1

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
