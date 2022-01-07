; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___erase_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___erase_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 (i64, i64)*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@cardmap = common dso_local global %struct.TYPE_6__* null, align 8
@__write_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @__erase_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__erase_callback(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32 (i64, i64)*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 (i64, i64)* null, i32 (i64, i64)** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cardmap, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %10
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp uge i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %7, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @__write_callback, align 4
  %34 = call i64 @__card_write(i64 %19, i32 %26, i32 %29, i32 %32, i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = icmp uge i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %15
  br label %54

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32 (i64, i64)*, i32 (i64, i64)** %40, align 8
  store i32 (i64, i64)* %41, i32 (i64, i64)** %6, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 (i64, i64)* null, i32 (i64, i64)** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @__card_putcntrlblock(%struct.TYPE_6__* %44, i64 %45)
  %47 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %48 = icmp ne i32 (i64, i64)* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load i32 (i64, i64)*, i32 (i64, i64)** %6, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 %50(i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %36, %49, %38
  ret void
}

declare dso_local i64 @__card_write(i64, i32, i32, i32, i32) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
