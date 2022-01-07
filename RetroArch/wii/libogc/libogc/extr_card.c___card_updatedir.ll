; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_updatedir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_updatedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.card_dircntrl = type { i32, i32, i32 }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_FATAL_ERROR = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_4__* null, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@__card_direrasecallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @__card_updatedir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_updatedir(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.card_dircntrl*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  store i8* null, i8** %7, align 8
  store %struct.card_dircntrl* null, %struct.card_dircntrl** %8, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @EXI_CHANNEL_0, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @EXI_CHANNEL_2, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %2
  %17 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %17, i64* %3, align 8
  br label %65

18:                                               ; preds = %12
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cardmap, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %6, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %27, i64* %3, align 8
  br label %65

28:                                               ; preds = %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = call i8* @__card_getdirblock(%struct.TYPE_4__* %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr i8, i8* %31, i64 8128
  %33 = bitcast i8* %32 to %struct.card_dircntrl*
  store %struct.card_dircntrl* %33, %struct.card_dircntrl** %8, align 8
  %34 = load %struct.card_dircntrl*, %struct.card_dircntrl** %8, align 8
  %35 = getelementptr inbounds %struct.card_dircntrl, %struct.card_dircntrl* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.card_dircntrl*, %struct.card_dircntrl** %8, align 8
  %41 = getelementptr inbounds %struct.card_dircntrl, %struct.card_dircntrl* %40, i32 0, i32 1
  %42 = load %struct.card_dircntrl*, %struct.card_dircntrl** %8, align 8
  %43 = getelementptr inbounds %struct.card_dircntrl, %struct.card_dircntrl* %42, i32 0, i32 0
  %44 = call i32 @__card_checksum(i32* %39, i32 8188, i32* %41, i32* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @DCStoreRange(i8* %45, i32 8192)
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = sub nsw i32 %52, %56
  %58 = ashr i32 %57, 13
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = load i32, i32* @__card_direrasecallback, align 4
  %64 = call i64 @__card_sectorerase(i64 %50, i32 %62, i32 %63)
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %28, %26, %16
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local i8* @__card_getdirblock(%struct.TYPE_4__*) #1

declare dso_local i32 @__card_checksum(i32*, i32, i32*, i32*) #1

declare dso_local i32 @DCStoreRange(i8*, i32) #1

declare dso_local i64 @__card_sectorerase(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
