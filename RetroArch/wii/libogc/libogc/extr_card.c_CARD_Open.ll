; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_Open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64, i64 }
%struct.card_dat = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@card_gamecode = common dso_local global i64 0, align 8
@card_company = common dso_local global i64 0, align 8
@CARD_ERROR_BROKEN = common dso_local global i64 0, align 8
@CARD_ERROR_READY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CARD_Open(i64 %0, i8* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.card_dat*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store %struct.card_dat* null, %struct.card_dat** %10, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %11, align 8
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
  br label %107

21:                                               ; preds = %15
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @__card_getcntrlblock(i64 %24, %struct.TYPE_11__** %11)
  store i64 %25, i64* %8, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %4, align 8
  br label %107

29:                                               ; preds = %21
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* @card_gamecode, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load i64, i64* @card_company, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i64 @__card_getfilenum(%struct.TYPE_11__* %30, i8* %31, i8* %33, i8* %35, i64* %9)
  store i64 %36, i64* %8, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @__card_putcntrlblock(%struct.TYPE_11__* %39, i64 %40)
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %4, align 8
  br label %107

43:                                               ; preds = %29
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %45 = call %struct.card_dat* @__card_getdirblock(%struct.TYPE_11__* %44)
  store %struct.card_dat* %45, %struct.card_dat** %10, align 8
  %46 = load %struct.card_dat*, %struct.card_dat** %10, align 8
  %47 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 5
  br i1 %53, label %66, label %54

54:                                               ; preds = %43
  %55 = load %struct.card_dat*, %struct.card_dat** %10, align 8
  %56 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %54, %43
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %68 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  %69 = call i32 @__card_putcntrlblock(%struct.TYPE_11__* %67, i64 %68)
  %70 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  store i64 %70, i64* %4, align 8
  br label %107

71:                                               ; preds = %54
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 4
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  store i64 0, i64* %80, align 8
  %81 = load %struct.card_dat*, %struct.card_dat** %10, align 8
  %82 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.card_dat*, %struct.card_dat** %10, align 8
  %95 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %104 = load i64, i64* @CARD_ERROR_READY, align 8
  %105 = call i32 @__card_putcntrlblock(%struct.TYPE_11__* %103, i64 %104)
  %106 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %106, i64* %4, align 8
  br label %107

107:                                              ; preds = %71, %66, %38, %27, %19
  %108 = load i64, i64* %4, align 8
  ret i64 %108
}

declare dso_local i64 @__card_getcntrlblock(i64, %struct.TYPE_11__**) #1

declare dso_local i64 @__card_getfilenum(%struct.TYPE_11__*, i8*, i8*, i8*, i64*) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_11__*, i64) #1

declare dso_local %struct.card_dat* @__card_getdirblock(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
