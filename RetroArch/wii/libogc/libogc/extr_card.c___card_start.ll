; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_start.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i8*, i8* }

@EXI_CHANNEL_0 = common dso_local global i64 0, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_4__* null, align 8
@__unlocked_callback = common dso_local global i32* null, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@__card_unlockedhandler = common dso_local global i32 0, align 4
@CARD_ERROR_BUSY = common dso_local global i64 0, align 8
@EXI_SPEED16MHZ = common dso_local global i32 0, align 4
@CARD_ERROR_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i8*)* @__card_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_start(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @EXI_CHANNEL_0, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @EXI_CHANNEL_2, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %3
  %18 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %18, i64* %4, align 8
  br label %71

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cardmap, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @_CPU_ISR_Disable(i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32*, i32** @__unlocked_callback, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* @EXI_DEVICE_0, align 4
  %44 = load i32, i32* @__card_unlockedhandler, align 4
  %45 = call i64 @EXI_Lock(i64 %42, i32 %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @_CPU_ISR_Restore(i32 %48)
  %50 = load i64, i64* @CARD_ERROR_BUSY, align 8
  store i64 %50, i64* %4, align 8
  br label %71

51:                                               ; preds = %38
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* @EXI_DEVICE_0, align 4
  %56 = load i32, i32* @EXI_SPEED16MHZ, align 4
  %57 = call i64 @EXI_Select(i64 %54, i32 %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @EXI_Unlock(i64 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @_CPU_ISR_Restore(i32 %62)
  %64 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  store i64 %64, i64* %4, align 8
  br label %71

65:                                               ; preds = %51
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %67 = call i32 @__setuptimeout(%struct.TYPE_4__* %66)
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @_CPU_ISR_Restore(i32 %68)
  %70 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %65, %59, %47, %17
  %72 = load i64, i64* %4, align 8
  ret i64 %72
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i64 @EXI_Lock(i64, i32, i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i64 @EXI_Select(i64, i32, i32) #1

declare dso_local i32 @EXI_Unlock(i64) #1

declare dso_local i32 @__setuptimeout(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
