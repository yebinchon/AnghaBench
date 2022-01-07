; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_mountcallback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_mountcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i64, i64)* }

@cardmap = common dso_local global %struct.TYPE_5__* null, align 8
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARD_ERROR_IOERROR = common dso_local global i64 0, align 8
@CARD_ERROR_UNLOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @__card_mountcallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__card_mountcallback(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32 (i64, i64)*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cardmap, align 8
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 %9
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %7, align 8
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @CARD_ERROR_IOERROR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15, %2
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @__card_dounmount(i64 %20, i64 %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @__card_putcntrlblock(%struct.TYPE_5__* %23, i64 %24)
  br label %56

26:                                               ; preds = %15
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @CARD_ERROR_UNLOCKED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @__card_domount(i64 %31)
  store i64 %32, i64* %5, align 8
  %33 = icmp uge i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %69

35:                                               ; preds = %30
  br label %55

36:                                               ; preds = %26
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = icmp slt i32 %40, 7
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @__card_domount(i64 %43)
  store i64 %44, i64* %5, align 8
  %45 = icmp uge i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %69

47:                                               ; preds = %42
  br label %54

48:                                               ; preds = %36
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = call i64 @__card_verify(%struct.TYPE_5__* %49)
  store i64 %50, i64* %5, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @__card_putcntrlblock(%struct.TYPE_5__* %51, i64 %52)
  br label %54

54:                                               ; preds = %48, %47
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %19
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32 (i64, i64)*, i32 (i64, i64)** %58, align 8
  store i32 (i64, i64)* %59, i32 (i64, i64)** %6, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 (i64, i64)* null, i32 (i64, i64)** %61, align 8
  %62 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %63 = icmp ne i32 (i64, i64)* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 %65(i64 %66, i64 %67)
  br label %69

69:                                               ; preds = %34, %46, %64, %56
  ret void
}

declare dso_local i32 @__card_dounmount(i64, i64) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @__card_domount(i64) #1

declare dso_local i64 @__card_verify(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
