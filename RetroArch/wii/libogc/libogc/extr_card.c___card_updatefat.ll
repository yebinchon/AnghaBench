; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_updatefat.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_updatefat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32 }
%struct.card_bat = type { i32, i32, i32 }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_FATAL_ERROR = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_3__* null, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@__card_faterasecallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.card_bat*, i32)* @__card_updatefat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_updatefat(i64 %0, %struct.card_bat* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.card_bat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.card_bat* %1, %struct.card_bat** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @EXI_CHANNEL_0, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @EXI_CHANNEL_2, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %3
  %17 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %17, i64* %4, align 8
  br label %63

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cardmap, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %8, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %27, i64* %4, align 8
  br label %63

28:                                               ; preds = %18
  %29 = load %struct.card_bat*, %struct.card_bat** %6, align 8
  %30 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.card_bat*, %struct.card_bat** %6, align 8
  %34 = ptrtoint %struct.card_bat* %33 to i32
  %35 = add nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i32*
  %38 = load %struct.card_bat*, %struct.card_bat** %6, align 8
  %39 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %38, i32 0, i32 1
  %40 = load %struct.card_bat*, %struct.card_bat** %6, align 8
  %41 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %40, i32 0, i32 0
  %42 = call i32 @__card_checksum(i32* %37, i32 8188, i32* %39, i32* %41)
  %43 = load %struct.card_bat*, %struct.card_bat** %6, align 8
  %44 = call i32 @DCStoreRange(%struct.card_bat* %43, i32 8192)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.card_bat*, %struct.card_bat** %6, align 8
  %50 = ptrtoint %struct.card_bat* %49 to i32
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = sub nsw i32 %50, %54
  %56 = ashr i32 %55, 13
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %56, %59
  %61 = load i32, i32* @__card_faterasecallback, align 4
  %62 = call i64 @__card_sectorerase(i64 %48, i32 %60, i32 %61)
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %28, %26, %16
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

declare dso_local i32 @__card_checksum(i32*, i32, i32*, i32*) #1

declare dso_local i32 @DCStoreRange(%struct.card_bat*, i32) #1

declare dso_local i64 @__card_sectorerase(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
