; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-spi.c_spiFrequencyToClockDiv.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-spi.c_spiFrequencyToClockDiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32 }

@SPI_CLK_EQU_SYSCLK = common dso_local global i64 0, align 8
@__const.spiFrequencyToClockDiv.minFreqReg = private unnamed_addr constant %struct.TYPE_5__ { i32 2147479552, i64 0, i32 0, i32 0, i32 0 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spiFrequencyToClockDiv(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %14 = call i64 (...) @getApbFrequency()
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @SPI_CLK_EQU_SYSCLK, align 8
  store i64 %19, i64* %2, align 8
  br label %120

20:                                               ; preds = %1
  %21 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.TYPE_5__* @__const.spiFrequencyToClockDiv.minFreqReg to i8*), i64 32, i1 false)
  %22 = call i8* @ClkRegToFreq(%struct.TYPE_5__* %5)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %2, align 8
  br label %120

30:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  %31 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 32, i1 false)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %114, %30
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 63
  br i1 %34, label %35, label %117

35:                                               ; preds = %32
  %36 = bitcast %struct.TYPE_5__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 32, i1 false)
  store i64 -2, i64* %13, align 8
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  br label %39

39:                                               ; preds = %107, %35
  %40 = load i64, i64* %13, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %13, align 8
  %42 = icmp sle i64 %40, 1
  br i1 %42, label %43, label %108

43:                                               ; preds = %39
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = sdiv i64 %44, %48
  %50 = load i64, i64* %3, align 8
  %51 = sdiv i64 %49, %50
  %52 = sub nsw i64 %51, 1
  %53 = load i64, i64* %13, align 8
  %54 = add nsw i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp sgt i32 %56, 8191
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i32 8191, i32* %59, align 4
  br label %69

60:                                               ; preds = %43
  %61 = load i32, i32* %12, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i32 0, i32* %64, align 4
  br label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %12, align 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %63
  br label %69

69:                                               ; preds = %68, %58
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  %73 = sdiv i32 %72, 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i32 %73, i32* %74, align 8
  %75 = call i8* @ClkRegToFreq(%struct.TYPE_5__* %10)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i64, i64* %3, align 8
  %79 = trunc i64 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = call i32 @memcpy(%struct.TYPE_5__* %8, %struct.TYPE_5__* %10, i32 32)
  br label %108

83:                                               ; preds = %69
  %84 = load i32, i32* %11, align 4
  %85 = load i64, i64* %3, align 8
  %86 = trunc i64 %85 to i32
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %83
  %89 = load i64, i64* %3, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %89, %91
  %93 = trunc i64 %92 to i32
  %94 = call i64 @abs(i32 %93)
  %95 = load i64, i64* %3, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %95, %97
  %99 = trunc i64 %98 to i32
  %100 = call i64 @abs(i32 %99)
  %101 = icmp slt i64 %94, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %88
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %9, align 4
  %104 = call i32 @memcpy(%struct.TYPE_5__* %8, %struct.TYPE_5__* %10, i32 32)
  br label %105

105:                                              ; preds = %102, %88
  br label %106

106:                                              ; preds = %105, %83
  br label %107

107:                                              ; preds = %106
  br label %39

108:                                              ; preds = %81, %39
  %109 = load i32, i32* %11, align 4
  %110 = load i64, i64* %3, align 8
  %111 = trunc i64 %110 to i32
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %117

114:                                              ; preds = %108
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %32

117:                                              ; preds = %113, %32
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %2, align 8
  br label %120

120:                                              ; preds = %117, %27, %18
  %121 = load i64, i64* %2, align 8
  ret i64 %121
}

declare dso_local i64 @getApbFrequency(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ClkRegToFreq(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
