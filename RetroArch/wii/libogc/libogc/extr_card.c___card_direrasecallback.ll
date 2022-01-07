; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_direrasecallback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_direrasecallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i64, i64)*, i32, i64 }
%struct.card_dat = type { i32 }

@cardmap = common dso_local global %struct.TYPE_5__* null, align 8
@__card_dirwritecallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @__card_direrasecallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__card_direrasecallback(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32 (i64, i64)*, align 8
  %7 = alloca %struct.card_dat*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 (i64, i64)* null, i32 (i64, i64)** %6, align 8
  store %struct.card_dat* null, %struct.card_dat** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cardmap, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 %10
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp uge i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = call %struct.card_dat* @__card_getdirblock(%struct.TYPE_5__* %16)
  store %struct.card_dat* %17, %struct.card_dat** %7, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.card_dat*, %struct.card_dat** %7, align 8
  %20 = ptrtoint %struct.card_dat* %19 to i32
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = sub nsw i32 %20, %24
  %26 = ashr i32 %25, 13
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %26, %29
  %31 = load %struct.card_dat*, %struct.card_dat** %7, align 8
  %32 = load i32, i32* @__card_dirwritecallback, align 4
  %33 = call i64 @__card_write(i64 %18, i32 %30, i32 8192, %struct.card_dat* %31, i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = icmp uge i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %15
  br label %59

36:                                               ; preds = %15
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @__card_putcntrlblock(%struct.TYPE_5__* %43, i64 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32 (i64, i64)*, i32 (i64, i64)** %48, align 8
  store i32 (i64, i64)* %49, i32 (i64, i64)** %6, align 8
  %50 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %51 = icmp ne i32 (i64, i64)* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 (i64, i64)* null, i32 (i64, i64)** %54, align 8
  %55 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 %55(i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %35, %52, %46
  ret void
}

declare dso_local %struct.card_dat* @__card_getdirblock(%struct.TYPE_5__*) #1

declare dso_local i64 @__card_write(i64, i32, i32, %struct.card_dat*, i32) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
