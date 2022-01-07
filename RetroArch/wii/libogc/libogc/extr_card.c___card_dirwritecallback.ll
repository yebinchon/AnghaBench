; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_dirwritecallback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_dirwritecallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i64, i64)*, i32, %struct.card_dat*, %struct.card_dat* }
%struct.card_dat = type { i32 }

@cardmap = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @__card_dirwritecallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__card_dirwritecallback(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32 (i64, i64)*, align 8
  %7 = alloca %struct.card_dat*, align 8
  %8 = alloca %struct.card_dat*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 (i64, i64)* null, i32 (i64, i64)** %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cardmap, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %9, align 8
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp uge i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load %struct.card_dat*, %struct.card_dat** %18, align 8
  %20 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %19, i64 8192
  store %struct.card_dat* %20, %struct.card_dat** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load %struct.card_dat*, %struct.card_dat** %22, align 8
  %24 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %23, i64 16384
  store %struct.card_dat* %24, %struct.card_dat** %8, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load %struct.card_dat*, %struct.card_dat** %26, align 8
  %28 = load %struct.card_dat*, %struct.card_dat** %7, align 8
  %29 = icmp eq %struct.card_dat* %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %16
  %31 = load %struct.card_dat*, %struct.card_dat** %8, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store %struct.card_dat* %31, %struct.card_dat** %33, align 8
  %34 = load %struct.card_dat*, %struct.card_dat** %8, align 8
  %35 = load %struct.card_dat*, %struct.card_dat** %7, align 8
  %36 = call i32 @memcpy(%struct.card_dat* %34, %struct.card_dat* %35, i32 8192)
  br label %44

37:                                               ; preds = %16
  %38 = load %struct.card_dat*, %struct.card_dat** %7, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store %struct.card_dat* %38, %struct.card_dat** %40, align 8
  %41 = load %struct.card_dat*, %struct.card_dat** %7, align 8
  %42 = load %struct.card_dat*, %struct.card_dat** %8, align 8
  %43 = call i32 @memcpy(%struct.card_dat* %41, %struct.card_dat* %42, i32 8192)
  br label %44

44:                                               ; preds = %37, %30
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @__card_putcntrlblock(%struct.TYPE_4__* %51, i64 %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32 (i64, i64)*, i32 (i64, i64)** %56, align 8
  store i32 (i64, i64)* %57, i32 (i64, i64)** %6, align 8
  %58 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %59 = icmp ne i32 (i64, i64)* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 (i64, i64)* null, i32 (i64, i64)** %62, align 8
  %63 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %64 = load i64, i64* %3, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 %63(i64 %64, i64 %65)
  br label %67

67:                                               ; preds = %60, %54
  ret void
}

declare dso_local i32 @memcpy(%struct.card_dat*, %struct.card_dat*, i32) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
