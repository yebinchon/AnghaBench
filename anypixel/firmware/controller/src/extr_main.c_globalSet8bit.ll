; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_globalSet8bit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_globalSet8bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@panelLEDmap = common dso_local global i32* null, align 8
@ledpackets = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @globalSet8bit(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sdiv i32 %12, 3
  %14 = sdiv i32 %13, 14
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sdiv i32 %15, 3
  %17 = srem i32 %16, 14
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = srem i32 %18, 3
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = srem i32 %20, 7
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = srem i32 %22, 7
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %24, 7
  %26 = mul nsw i32 %25, 2
  %27 = load i32, i32* %6, align 4
  %28 = sdiv i32 %27, 7
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32*, i32** @panelLEDmap, align 8
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 %31, 7
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %32, %33
  %35 = mul nsw i32 %34, 3
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %30, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, 5
  %43 = mul nsw i32 %42, 16
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %46, i32* %56, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
