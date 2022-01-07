; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_OpenEntry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_OpenEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i64, i64 }
%struct.card_dat = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARD_ERROR_BROKEN = common dso_local global i64 0, align 8
@CARD_ERROR_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CARD_OpenEntry(i64 %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.card_dat*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store %struct.card_dat* null, %struct.card_dat** %10, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %11, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @EXI_CHANNEL_0, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @EXI_CHANNEL_2, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %20, i64* %4, align 8
  br label %115

21:                                               ; preds = %15
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @__card_getcntrlblock(i64 %24, %struct.TYPE_14__** %11)
  store i64 %25, i64* %8, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %4, align 8
  br label %115

29:                                               ; preds = %21
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i64 @__card_getfilenum(%struct.TYPE_14__* %30, i8* %34, i8* %38, i8* %42, i64* %9)
  store i64 %43, i64* %8, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @__card_putcntrlblock(%struct.TYPE_14__* %46, i64 %47)
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %4, align 8
  br label %115

50:                                               ; preds = %29
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %52 = call %struct.card_dat* @__card_getdirblock(%struct.TYPE_14__* %51)
  store %struct.card_dat* %52, %struct.card_dat** %10, align 8
  %53 = load %struct.card_dat*, %struct.card_dat** %10, align 8
  %54 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 5
  br i1 %60, label %73, label %61

61:                                               ; preds = %50
  %62 = load %struct.card_dat*, %struct.card_dat** %10, align 8
  %63 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %68, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %61, %50
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %75 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  %76 = call i32 @__card_putcntrlblock(%struct.TYPE_14__* %74, i64 %75)
  %77 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  store i64 %77, i64* %4, align 8
  br label %115

78:                                               ; preds = %61
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.card_dat*, %struct.card_dat** %10, align 8
  %90 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %95, %98
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.card_dat*, %struct.card_dat** %10, align 8
  %103 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %112 = load i64, i64* @CARD_ERROR_READY, align 8
  %113 = call i32 @__card_putcntrlblock(%struct.TYPE_14__* %111, i64 %112)
  %114 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %78, %73, %45, %27, %19
  %116 = load i64, i64* %4, align 8
  ret i64 %116
}

declare dso_local i64 @__card_getcntrlblock(i64, %struct.TYPE_14__**) #1

declare dso_local i64 @__card_getfilenum(%struct.TYPE_14__*, i8*, i8*, i8*, i64*) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_14__*, i64) #1

declare dso_local %struct.card_dat* @__card_getdirblock(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
