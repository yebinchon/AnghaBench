; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___blockwritecallback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___blockwritecallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i32 (i64, i64)*, i32 }

@CARD_ERROR_READY = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @__blockwritecallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__blockwritecallback(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32 (i64, i64)*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %8, i64* %5, align 8
  store i32 (i64, i64)* null, i32 (i64, i64)** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cardmap, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %7, align 8
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp uge i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 128
  store i32 %19, i32* %17, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 128
  store i32 %23, i32* %21, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 128
  store i32 %27, i32* %25, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %15
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @__card_writepage(i64 %34, void (i64, i64)* @__blockwritecallback)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* @CARD_ERROR_READY, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %63

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %15
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @__card_putcntrlblock(%struct.TYPE_4__* %47, i64 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = load i32 (i64, i64)*, i32 (i64, i64)** %52, align 8
  store i32 (i64, i64)* %53, i32 (i64, i64)** %6, align 8
  %54 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %55 = icmp ne i32 (i64, i64)* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  store i32 (i64, i64)* null, i32 (i64, i64)** %58, align 8
  %59 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 %59(i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %38, %56, %50
  ret void
}

declare dso_local i64 @__card_writepage(i64, void (i64, i64)*) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
