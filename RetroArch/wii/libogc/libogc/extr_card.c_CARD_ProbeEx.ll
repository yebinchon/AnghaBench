; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_ProbeEx.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_ProbeEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64 }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_FATAL_ERROR = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_3__* null, align 8
@CARD_ERROR_BUSY = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARD_ERROR_READY = common dso_local global i64 0, align 8
@EXI_FLAG_ATTACH = common dso_local global i32 0, align 4
@CARD_ERROR_WRONGDEVICE = common dso_local global i64 0, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@card_sector_size = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CARD_ProbeEx(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @EXI_CHANNEL_0, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @EXI_CHANNEL_2, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %3
  %21 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %21, i64* %4, align 8
  br label %127

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cardmap, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @_CPU_ISR_Disable(i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @EXI_ProbeEx(i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ule i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %22
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* @CARD_ERROR_BUSY, align 8
  store i64 %36, i64* %8, align 8
  br label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @_CPU_ISR_Restore(i32 %40)
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %4, align 8
  br label %127

43:                                               ; preds = %22
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %43
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @_CPU_ISR_Restore(i32 %54)
  %56 = load i64, i64* @CARD_ERROR_BUSY, align 8
  store i64 %56, i64* %4, align 8
  br label %127

57:                                               ; preds = %48
  %58 = load i64*, i64** %6, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %6, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i64*, i64** %7, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %7, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %68, %65
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @_CPU_ISR_Restore(i32 %74)
  %76 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %76, i64* %4, align 8
  br label %127

77:                                               ; preds = %43
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @EXI_GetState(i64 %78)
  %80 = load i32, i32* @EXI_FLAG_ATTACH, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i64, i64* @CARD_ERROR_WRONGDEVICE, align 8
  store i64 %84, i64* %8, align 8
  br label %123

85:                                               ; preds = %77
  %86 = load i64, i64* @CARD_ERROR_BUSY, align 8
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* @EXI_DEVICE_0, align 4
  %89 = call i64 @EXI_GetID(i64 %87, i32 %88, i32* %10)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %122

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @__card_iscard(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* @CARD_ERROR_WRONGDEVICE, align 8
  store i64 %96, i64* %8, align 8
  br label %121

97:                                               ; preds = %91
  %98 = load i64*, i64** %6, align 8
  %99 = icmp ne i64* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, 252
  %103 = sext i32 %102 to i64
  %104 = load i64*, i64** %6, align 8
  store i64 %103, i64* %104, align 8
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i64*, i64** %7, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @_ROTL(i32 %109, i32 23)
  %111 = and i32 %110, 28
  store i32 %111, i32* %12, align 4
  %112 = load i64*, i64** @card_sector_size, align 8
  %113 = load i32, i32* %12, align 4
  %114 = ashr i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %112, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** %7, align 8
  store i64 %117, i64* %118, align 8
  br label %119

119:                                              ; preds = %108, %105
  %120 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %120, i64* %8, align 8
  br label %121

121:                                              ; preds = %119, %95
  br label %122

122:                                              ; preds = %121, %85
  br label %123

123:                                              ; preds = %122, %83
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @_CPU_ISR_Restore(i32 %124)
  %126 = load i64, i64* %8, align 8
  store i64 %126, i64* %4, align 8
  br label %127

127:                                              ; preds = %123, %73, %53, %39, %20
  %128 = load i64, i64* %4, align 8
  ret i64 %128
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i64 @EXI_ProbeEx(i64) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @EXI_GetState(i64) #1

declare dso_local i64 @EXI_GetID(i64, i32, i32*) #1

declare dso_local i32 @__card_iscard(i32) #1

declare dso_local i32 @_ROTL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
