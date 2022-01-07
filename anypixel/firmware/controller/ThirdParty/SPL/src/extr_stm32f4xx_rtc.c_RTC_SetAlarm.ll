; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_SetAlarm.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_SetAlarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i64, i64 }

@RTC_Format_BIN = common dso_local global i64 0, align 8
@RTC = common dso_local global %struct.TYPE_7__* null, align 8
@RTC_CR_FMT = common dso_local global i64 0, align 8
@RESET = common dso_local global i64 0, align 8
@RTC_AlarmDateWeekDaySel_Date = common dso_local global i64 0, align 8
@RTC_Alarm_A = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RTC_SetAlarm(i64 %0, i64 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @IS_RTC_FORMAT(i64 %8)
  %10 = call i32 @assert_param(i32 %9)
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @IS_RTC_ALARM(i64 %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @IS_ALARM_MASK(i64 %16)
  %18 = call i32 @assert_param(i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @IS_RTC_ALARM_DATE_WEEKDAY_SEL(i64 %21)
  %23 = call i32 @assert_param(i32 %22)
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @RTC_Format_BIN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %89

27:                                               ; preds = %3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RTC, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RTC_CR_FMT, align 8
  %32 = and i64 %30, %31
  %33 = load i64, i64* @RESET, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @IS_RTC_HOUR12(i64 %39)
  %41 = call i32 @assert_param(i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @IS_RTC_H12(i32 %45)
  %47 = call i32 @assert_param(i32 %46)
  br label %58

48:                                               ; preds = %27
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @IS_RTC_HOUR24(i64 %55)
  %57 = call i32 @assert_param(i32 %56)
  br label %58

58:                                               ; preds = %48, %35
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @IS_RTC_MINUTES(i64 %62)
  %64 = call i32 @assert_param(i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @IS_RTC_SECONDS(i64 %68)
  %70 = call i32 @assert_param(i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RTC_AlarmDateWeekDaySel_Date, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %58
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @IS_RTC_ALARM_DATE_WEEKDAY_DATE(i64 %79)
  %81 = call i32 @assert_param(i32 %80)
  br label %88

82:                                               ; preds = %58
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @IS_RTC_ALARM_DATE_WEEKDAY_WEEKDAY(i64 %85)
  %87 = call i32 @assert_param(i32 %86)
  br label %88

88:                                               ; preds = %82, %76
  br label %160

89:                                               ; preds = %3
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RTC, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @RTC_CR_FMT, align 8
  %94 = and i64 %92, %93
  %95 = load i64, i64* @RESET, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %89
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @RTC_Bcd2ToByte(i64 %101)
  store i64 %102, i64* %7, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @IS_RTC_HOUR12(i64 %103)
  %105 = call i32 @assert_param(i32 %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @IS_RTC_H12(i32 %109)
  %111 = call i32 @assert_param(i32 %110)
  br label %123

112:                                              ; preds = %89
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i32 0, i32* %115, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @RTC_Bcd2ToByte(i64 %119)
  %121 = call i32 @IS_RTC_HOUR24(i64 %120)
  %122 = call i32 @assert_param(i32 %121)
  br label %123

123:                                              ; preds = %112, %97
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @RTC_Bcd2ToByte(i64 %127)
  %129 = call i32 @IS_RTC_MINUTES(i64 %128)
  %130 = call i32 @assert_param(i32 %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @RTC_Bcd2ToByte(i64 %134)
  %136 = call i32 @IS_RTC_SECONDS(i64 %135)
  %137 = call i32 @assert_param(i32 %136)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @RTC_AlarmDateWeekDaySel_Date, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %123
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @RTC_Bcd2ToByte(i64 %146)
  store i64 %147, i64* %7, align 8
  %148 = load i64, i64* %7, align 8
  %149 = call i32 @IS_RTC_ALARM_DATE_WEEKDAY_DATE(i64 %148)
  %150 = call i32 @assert_param(i32 %149)
  br label %159

151:                                              ; preds = %123
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @RTC_Bcd2ToByte(i64 %154)
  store i64 %155, i64* %7, align 8
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @IS_RTC_ALARM_DATE_WEEKDAY_WEEKDAY(i64 %156)
  %158 = call i32 @assert_param(i32 %157)
  br label %159

159:                                              ; preds = %151, %143
  br label %160

160:                                              ; preds = %159, %88
  %161 = load i64, i64* %4, align 8
  %162 = load i64, i64* @RTC_Format_BIN, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %201

164:                                              ; preds = %160
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = shl i64 %168, 16
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = shl i64 %173, 8
  %175 = or i64 %169, %174
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = or i64 %175, %179
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = shl i64 %185, 16
  %187 = or i64 %180, %186
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = shl i64 %190, 24
  %192 = or i64 %187, %191
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = or i64 %192, %195
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = or i64 %196, %199
  store i64 %200, i64* %7, align 8
  br label %242

201:                                              ; preds = %160
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @RTC_ByteToBcd2(i64 %205)
  %207 = shl i64 %206, 16
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = call i64 @RTC_ByteToBcd2(i64 %211)
  %213 = shl i64 %212, 8
  %214 = or i64 %207, %213
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = call i64 @RTC_ByteToBcd2(i64 %218)
  %220 = or i64 %214, %219
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = shl i64 %225, 16
  %227 = or i64 %220, %226
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = call i64 @RTC_ByteToBcd2(i64 %230)
  %232 = shl i64 %231, 24
  %233 = or i64 %227, %232
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = or i64 %233, %236
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = or i64 %237, %240
  store i64 %241, i64* %7, align 8
  br label %242

242:                                              ; preds = %201, %164
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RTC, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  store i32 202, i32* %244, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RTC, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  store i32 83, i32* %246, align 8
  %247 = load i64, i64* %5, align 8
  %248 = load i64, i64* @RTC_Alarm_A, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %242
  %251 = load i64, i64* %7, align 8
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RTC, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 3
  store i64 %251, i64* %253, align 8
  br label %258

254:                                              ; preds = %242
  %255 = load i64, i64* %7, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RTC, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 2
  store i64 %255, i64* %257, align 8
  br label %258

258:                                              ; preds = %254, %250
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RTC, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  store i32 255, i32* %260, align 8
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_RTC_FORMAT(i64) #1

declare dso_local i32 @IS_RTC_ALARM(i64) #1

declare dso_local i32 @IS_ALARM_MASK(i64) #1

declare dso_local i32 @IS_RTC_ALARM_DATE_WEEKDAY_SEL(i64) #1

declare dso_local i32 @IS_RTC_HOUR12(i64) #1

declare dso_local i32 @IS_RTC_H12(i32) #1

declare dso_local i32 @IS_RTC_HOUR24(i64) #1

declare dso_local i32 @IS_RTC_MINUTES(i64) #1

declare dso_local i32 @IS_RTC_SECONDS(i64) #1

declare dso_local i32 @IS_RTC_ALARM_DATE_WEEKDAY_DATE(i64) #1

declare dso_local i32 @IS_RTC_ALARM_DATE_WEEKDAY_WEEKDAY(i64) #1

declare dso_local i64 @RTC_Bcd2ToByte(i64) #1

declare dso_local i64 @RTC_ByteToBcd2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
