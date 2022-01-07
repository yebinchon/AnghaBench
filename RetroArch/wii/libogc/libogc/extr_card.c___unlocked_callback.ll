; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___unlocked_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___unlocked_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { void (i64, i64)*, i32*, i32 (i64, i64)*, i32 (i64, i64)* }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_3__* null, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@__card_unlockedhandler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @__unlocked_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unlocked_callback(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32 (i64, i64)*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @EXI_CHANNEL_0, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @EXI_CHANNEL_2, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  br label %101

16:                                               ; preds = %11
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cardmap, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %6, align 8
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp uge i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store void (i64, i64)* @__unlocked_callback, void (i64, i64)** %25, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i32, i32* @EXI_DEVICE_0, align 4
  %28 = load i32, i32* @__card_unlockedhandler, align 4
  %29 = call i32 @EXI_Lock(i64 %26, i32 %27, i32 %28)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store void (i64, i64)* null, void (i64, i64)** %33, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @__retry(i64 %34)
  store i64 %35, i64* %5, align 8
  br label %37

36:                                               ; preds = %23
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %36, %31
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i64, i64* %5, align 8
  %40 = icmp ult i64 %39, 0
  br i1 %40, label %41, label %101

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 243
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 245
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %41
  br label %101

56:                                               ; preds = %48
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 82
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32 (i64, i64)*, i32 (i64, i64)** %65, align 8
  store i32 (i64, i64)* %66, i32 (i64, i64)** %7, align 8
  %67 = load i32 (i64, i64)*, i32 (i64, i64)** %7, align 8
  %68 = icmp ne i32 (i64, i64)* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  store i32 (i64, i64)* null, i32 (i64, i64)** %71, align 8
  %72 = load i32 (i64, i64)*, i32 (i64, i64)** %7, align 8
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 %72(i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %69, %63
  br label %99

77:                                               ; preds = %56
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %82, 241
  br i1 %83, label %84, label %98

84:                                               ; preds = %77
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32 (i64, i64)*, i32 (i64, i64)** %86, align 8
  store i32 (i64, i64)* %87, i32 (i64, i64)** %7, align 8
  %88 = load i32 (i64, i64)*, i32 (i64, i64)** %7, align 8
  %89 = icmp ne i32 (i64, i64)* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i32 (i64, i64)* null, i32 (i64, i64)** %92, align 8
  %93 = load i32 (i64, i64)*, i32 (i64, i64)** %7, align 8
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i32 %93(i64 %94, i64 %95)
  br label %97

97:                                               ; preds = %90, %84
  br label %98

98:                                               ; preds = %97, %77
  br label %99

99:                                               ; preds = %98, %76
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %15, %55, %100, %38
  ret void
}

declare dso_local i32 @EXI_Lock(i64, i32, i32) #1

declare dso_local i64 @__retry(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
