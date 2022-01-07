; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_dcmi.c_DCMI_Init.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_dcmi.c_DCMI_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64 }

@DCMI_CR_ENABLE = common dso_local global i32 0, align 4
@DCMI_CR_CAPTURE = common dso_local global i32 0, align 4
@DCMI = common dso_local global %struct.TYPE_5__* null, align 8
@DCMI_CR_CM = common dso_local global i64 0, align 8
@DCMI_CR_ESS = common dso_local global i32 0, align 4
@DCMI_CR_PCKPOL = common dso_local global i32 0, align 4
@DCMI_CR_HSPOL = common dso_local global i32 0, align 4
@DCMI_CR_VSPOL = common dso_local global i32 0, align 4
@DCMI_CR_FCRC_0 = common dso_local global i32 0, align 4
@DCMI_CR_FCRC_1 = common dso_local global i32 0, align 4
@DCMI_CR_EDM_0 = common dso_local global i32 0, align 4
@DCMI_CR_EDM_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DCMI_Init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @IS_DCMI_CAPTURE_MODE(i64 %6)
  %8 = call i32 @assert_param(i32 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @IS_DCMI_SYNCHRO(i32 %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IS_DCMI_PCKPOLARITY(i32 %16)
  %18 = call i32 @assert_param(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @IS_DCMI_VSPOLARITY(i32 %21)
  %23 = call i32 @assert_param(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @IS_DCMI_HSPOLARITY(i32 %26)
  %28 = call i32 @assert_param(i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @IS_DCMI_CAPTURE_RATE(i32 %31)
  %33 = call i32 @assert_param(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @IS_DCMI_EXTENDED_DATA(i32 %36)
  %38 = call i32 @assert_param(i32 %37)
  %39 = load i32, i32* @DCMI_CR_ENABLE, align 4
  %40 = load i32, i32* @DCMI_CR_CAPTURE, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DCMI, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DCMI, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %3, align 4
  %50 = load i64, i64* @DCMI_CR_CM, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @DCMI_CR_ESS, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @DCMI_CR_PCKPOL, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @DCMI_CR_HSPOL, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @DCMI_CR_VSPOL, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @DCMI_CR_FCRC_0, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @DCMI_CR_FCRC_1, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @DCMI_CR_EDM_0, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @DCMI_CR_EDM_1, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %74, %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %78, %81
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %82, %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %86, %89
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %90, %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %94, %97
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %3, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DCMI, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_DCMI_CAPTURE_MODE(i64) #1

declare dso_local i32 @IS_DCMI_SYNCHRO(i32) #1

declare dso_local i32 @IS_DCMI_PCKPOLARITY(i32) #1

declare dso_local i32 @IS_DCMI_VSPOLARITY(i32) #1

declare dso_local i32 @IS_DCMI_HSPOLARITY(i32) #1

declare dso_local i32 @IS_DCMI_CAPTURE_RATE(i32) #1

declare dso_local i32 @IS_DCMI_EXTENDED_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
