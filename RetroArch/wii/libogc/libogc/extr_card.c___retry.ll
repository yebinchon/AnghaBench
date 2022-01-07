; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___retry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32, i32, i32, i32 }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_4__* null, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@EXI_SPEED16MHZ = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@CARD_READSIZE = common dso_local global i32 0, align 4
@CARD_ERROR_READY = common dso_local global i64 0, align 8
@__card_txhandler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__retry(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @EXI_CHANNEL_0, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @EXI_CHANNEL_2, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %1
  %14 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %14, i64* %2, align 8
  br label %115

15:                                               ; preds = %9
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cardmap, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %5, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @EXI_DEVICE_0, align 4
  %21 = load i32, i32* @EXI_SPEED16MHZ, align 4
  %22 = call i64 @EXI_Select(i64 %19, i32 %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @EXI_Unlock(i64 %25)
  %27 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %27, i64* %2, align 8
  br label %115

28:                                               ; preds = %15
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = call i32 @__setuptimeout(%struct.TYPE_4__* %29)
  %31 = load i64, i64* %3, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EXI_WRITE, align 4
  %39 = call i64 @EXI_ImmEx(i64 %31, i32* %34, i32 %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = load i64, i64* %3, align 8
  %43 = call i32 @EXI_Deselect(i64 %42)
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @EXI_Unlock(i64 %44)
  %46 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %46, i64* %2, align 8
  br label %115

47:                                               ; preds = %28
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 82
  br i1 %53, label %54, label %75

54:                                               ; preds = %47
  %55 = load i64, i64* %3, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @CARD_READSIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @EXI_WRITE, align 4
  %66 = call i64 @EXI_ImmEx(i64 %55, i32* %61, i32 %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %54
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @EXI_Deselect(i64 %69)
  %71 = load i64, i64* %3, align 8
  %72 = call i32 @EXI_Unlock(i64 %71)
  %73 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %73, i64* %2, align 8
  br label %115

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74, %47
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i64, i64* %3, align 8
  %82 = call i32 @EXI_Deselect(i64 %81)
  %83 = load i64, i64* %3, align 8
  %84 = call i32 @EXI_Unlock(i64 %83)
  %85 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %85, i64* %2, align 8
  br label %115

86:                                               ; preds = %75
  store i32 128, i32* %4, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 82
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @CARD_READSIZE, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %86
  %96 = load i64, i64* %3, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @__card_txhandler, align 4
  %105 = call i64 @EXI_Dma(i64 %96, i32 %99, i32 %100, i32 %103, i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %95
  %108 = load i64, i64* %3, align 8
  %109 = call i32 @EXI_Deselect(i64 %108)
  %110 = load i64, i64* %3, align 8
  %111 = call i32 @EXI_Unlock(i64 %110)
  %112 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %112, i64* %2, align 8
  br label %115

113:                                              ; preds = %95
  %114 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %114, i64* %2, align 8
  br label %115

115:                                              ; preds = %113, %107, %80, %68, %41, %24, %13
  %116 = load i64, i64* %2, align 8
  ret i64 %116
}

declare dso_local i64 @EXI_Select(i64, i32, i32) #1

declare dso_local i32 @EXI_Unlock(i64) #1

declare dso_local i32 @__setuptimeout(%struct.TYPE_4__*) #1

declare dso_local i64 @EXI_ImmEx(i64, i32*, i32, i32) #1

declare dso_local i32 @EXI_Deselect(i64) #1

declare dso_local i64 @EXI_Dma(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
