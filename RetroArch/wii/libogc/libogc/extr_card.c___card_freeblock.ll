; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_freeblock.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_freeblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.card_bat = type { i64*, i32 }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_4__* null, align 8
@CARD_SYSAREA = common dso_local global i64 0, align 8
@CARD_ERROR_BROKEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32)* @__card_freeblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_freeblock(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.card_bat*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 65535, i64* %8, align 8
  store i64 65535, i64* %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  store %struct.card_bat* null, %struct.card_bat** %11, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @EXI_CHANNEL_0, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @EXI_CHANNEL_2, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %3
  %20 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %20, i64* %4, align 8
  br label %84

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cardmap, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %10, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %30, i64* %4, align 8
  br label %84

31:                                               ; preds = %21
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = call %struct.card_bat* @__card_getbatblock(%struct.TYPE_4__* %32)
  store %struct.card_bat* %33, %struct.card_bat** %11, align 8
  %34 = load %struct.card_bat*, %struct.card_bat** %11, align 8
  %35 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @CARD_SYSAREA, align 8
  %39 = sub i64 %37, %38
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %31, %58
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %43, 65535
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %79

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @CARD_SYSAREA, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp uge i64 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50, %46
  %57 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  store i64 %57, i64* %4, align 8
  br label %84

58:                                               ; preds = %50
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %9, align 8
  %60 = load %struct.card_bat*, %struct.card_bat** %11, align 8
  %61 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @CARD_SYSAREA, align 8
  %65 = sub i64 %63, %64
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %8, align 8
  %68 = load %struct.card_bat*, %struct.card_bat** %11, align 8
  %69 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @CARD_SYSAREA, align 8
  %73 = sub i64 %71, %72
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  store i64 0, i64* %74, align 8
  %75 = load %struct.card_bat*, %struct.card_bat** %11, align 8
  %76 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %42

79:                                               ; preds = %45
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.card_bat*, %struct.card_bat** %11, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @__card_updatefat(i64 %80, %struct.card_bat* %81, i32 %82)
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %79, %56, %29, %19
  %85 = load i64, i64* %4, align 8
  ret i64 %85
}

declare dso_local %struct.card_bat* @__card_getbatblock(%struct.TYPE_4__*) #1

declare dso_local i64 @__card_updatefat(i64, %struct.card_bat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
