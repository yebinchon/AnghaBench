; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_rtc.c_RTC_GetTimeStamp.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_rtc.c_RTC_GetTimeStamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i64 }

@RTC = common dso_local global %struct.TYPE_8__* null, align 8
@RTC_TR_RESERVED_MASK = common dso_local global i32 0, align 4
@RTC_DR_RESERVED_MASK = common dso_local global i32 0, align 4
@RTC_TR_HT = common dso_local global i32 0, align 4
@RTC_TR_HU = common dso_local global i32 0, align 4
@RTC_TR_MNT = common dso_local global i32 0, align 4
@RTC_TR_MNU = common dso_local global i32 0, align 4
@RTC_TR_ST = common dso_local global i32 0, align 4
@RTC_TR_SU = common dso_local global i32 0, align 4
@RTC_TR_PM = common dso_local global i32 0, align 4
@RTC_DR_MT = common dso_local global i32 0, align 4
@RTC_DR_MU = common dso_local global i32 0, align 4
@RTC_DR_DT = common dso_local global i32 0, align 4
@RTC_DR_DU = common dso_local global i32 0, align 4
@RTC_DR_WDU = common dso_local global i32 0, align 4
@RTC_Format_BIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RTC_GetTimeStamp(i32 %0, %struct.TYPE_6__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @IS_RTC_FORMAT(i32 %9)
  %11 = call i32 @assert_param(i32 %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @RTC, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RTC_TR_RESERVED_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @RTC, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RTC_DR_RESERVED_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @RTC_TR_HT, align 4
  %24 = load i32, i32* @RTC_TR_HU, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = ashr i32 %26, 16
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @RTC_TR_MNT, align 4
  %34 = load i32, i32* @RTC_TR_MNU, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = ashr i32 %36, 8
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @RTC_TR_ST, align 4
  %44 = load i32, i32* @RTC_TR_SU, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @RTC_TR_PM, align 4
  %53 = and i32 %51, %52
  %54 = ashr i32 %53, 16
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @RTC_DR_MT, align 4
  %63 = load i32, i32* @RTC_DR_MU, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = ashr i32 %65, 8
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @RTC_DR_DT, align 4
  %73 = load i32, i32* @RTC_DR_DU, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @RTC_DR_WDU, align 4
  %82 = and i32 %80, %81
  %83 = ashr i32 %82, 13
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @RTC_Format_BIN, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %134

91:                                               ; preds = %3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @RTC_Bcd2ToByte(i8* %94)
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @RTC_Bcd2ToByte(i8* %101)
  %103 = inttoptr i64 %102 to i8*
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @RTC_Bcd2ToByte(i8* %108)
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @RTC_Bcd2ToByte(i8* %115)
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @RTC_Bcd2ToByte(i8* %122)
  %124 = inttoptr i64 %123 to i8*
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @RTC_Bcd2ToByte(i8* %129)
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  br label %134

134:                                              ; preds = %91, %3
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_RTC_FORMAT(i32) #1

declare dso_local i64 @RTC_Bcd2ToByte(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
