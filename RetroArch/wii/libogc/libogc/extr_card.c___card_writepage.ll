; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_writepage.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32*, i32, i32 }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_3__* null, align 8
@EXI_WRITE = common dso_local global i32 0, align 4
@__card_txhandler = common dso_local global i32 0, align 4
@CARD_ERROR_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @__card_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_writepage(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %7, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @EXI_CHANNEL_0, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @EXI_CHANNEL_2, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %2
  %16 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %16, i64* %3, align 8
  br label %106

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cardmap, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %7, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 242, i32* %24, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 17
  %29 = and i32 %28, 63
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = ashr i32 %36, 9
  %38 = and i32 %37, 255
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %38, i32* %42, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %45, 7
  %47 = and i32 %46, 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %47, i32* %51, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 127
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  store i32 %55, i32* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i32 5, i32* %61, align 4
  %62 = load i32, i32* @EXI_WRITE, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  store i32 3, i32* %66, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @__card_start(i64 %67, i32* null, i32 %68)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp ult i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %17
  %73 = load i64, i64* %6, align 8
  store i64 %73, i64* %3, align 8
  br label %106

74:                                               ; preds = %17
  %75 = load i64, i64* %4, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @EXI_WRITE, align 4
  %83 = call i32 @EXI_ImmEx(i64 %75, i32* %78, i32 %81, i32 %82)
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %98

85:                                               ; preds = %74
  %86 = load i64, i64* %4, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @__card_txhandler, align 4
  %94 = call i32 @EXI_Dma(i64 %86, i32 %89, i32 128, i32 %92, i32 %93)
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %97, i64* %3, align 8
  br label %106

98:                                               ; preds = %85, %74
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  store i32* null, i32** %100, align 8
  %101 = load i64, i64* %4, align 8
  %102 = call i32 @EXI_Deselect(i64 %101)
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @EXI_Unlock(i64 %103)
  %105 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %105, i64* %3, align 8
  br label %106

106:                                              ; preds = %98, %96, %72, %15
  %107 = load i64, i64* %3, align 8
  ret i64 %107
}

declare dso_local i64 @__card_start(i64, i32*, i32) #1

declare dso_local i32 @EXI_ImmEx(i64, i32*, i32, i32) #1

declare dso_local i32 @EXI_Dma(i64, i32, i32, i32, i32) #1

declare dso_local i32 @EXI_Deselect(i64) #1

declare dso_local i32 @EXI_Unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
