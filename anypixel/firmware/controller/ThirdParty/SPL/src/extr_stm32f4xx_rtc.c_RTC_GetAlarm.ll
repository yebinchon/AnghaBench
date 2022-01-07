; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_GetAlarm.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_GetAlarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i64 }

@RTC_Alarm_A = common dso_local global i64 0, align 8
@RTC = common dso_local global %struct.TYPE_7__* null, align 8
@RTC_ALRMAR_HT = common dso_local global i64 0, align 8
@RTC_ALRMAR_HU = common dso_local global i64 0, align 8
@RTC_ALRMAR_MNT = common dso_local global i64 0, align 8
@RTC_ALRMAR_MNU = common dso_local global i64 0, align 8
@RTC_ALRMAR_ST = common dso_local global i64 0, align 8
@RTC_ALRMAR_SU = common dso_local global i64 0, align 8
@RTC_ALRMAR_PM = common dso_local global i64 0, align 8
@RTC_ALRMAR_DT = common dso_local global i64 0, align 8
@RTC_ALRMAR_DU = common dso_local global i64 0, align 8
@RTC_ALRMAR_WDSEL = common dso_local global i64 0, align 8
@RTC_AlarmMask_All = common dso_local global i64 0, align 8
@RTC_Format_BIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RTC_GetAlarm(i64 %0, i64 %1, %struct.TYPE_6__* %2) #0 {
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
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @RTC_Alarm_A, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RTC, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RTC, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @RTC_ALRMAR_HT, align 8
  %28 = load i64, i64* @RTC_ALRMAR_HU, align 8
  %29 = or i64 %27, %28
  %30 = and i64 %26, %29
  %31 = ashr i64 %30, 16
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i8* %32, i8** %35, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @RTC_ALRMAR_MNT, align 8
  %38 = load i64, i64* @RTC_ALRMAR_MNU, align 8
  %39 = or i64 %37, %38
  %40 = and i64 %36, %39
  %41 = ashr i64 %40, 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @RTC_ALRMAR_ST, align 8
  %48 = load i64, i64* @RTC_ALRMAR_SU, align 8
  %49 = or i64 %47, %48
  %50 = and i64 %46, %49
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @RTC_ALRMAR_PM, align 8
  %57 = and i64 %55, %56
  %58 = ashr i64 %57, 16
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @RTC_ALRMAR_DT, align 8
  %64 = load i64, i64* @RTC_ALRMAR_DU, align 8
  %65 = or i64 %63, %64
  %66 = and i64 %62, %65
  %67 = ashr i64 %66, 24
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @RTC_ALRMAR_WDSEL, align 8
  %73 = and i64 %71, %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @RTC_AlarmMask_All, align 8
  %78 = and i64 %76, %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* @RTC_Format_BIN, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %25
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @RTC_Bcd2ToByte(i8* %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  store i8* %89, i8** %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @RTC_Bcd2ToByte(i8* %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i8* %97, i8** %100, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @RTC_Bcd2ToByte(i8* %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i8* @RTC_Bcd2ToByte(i8* %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %84, %25
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_RTC_FORMAT(i64) #1

declare dso_local i32 @IS_RTC_ALARM(i64) #1

declare dso_local i8* @RTC_Bcd2ToByte(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
