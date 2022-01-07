; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dirac_arith.h_dirac_get_arith_bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dirac_arith.h_dirac_get_arith_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32 }

@ff_dirac_prob_branchless = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @dirac_get_arith_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirac_get_arith_bit(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %25, %26
  %28 = ashr i32 %27, 16
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = lshr i32 %29, 16
  %31 = load i32, i32* %6, align 4
  %32 = icmp uge i32 %30, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 16
  %39 = load i32, i32* %8, align 4
  %40 = sub i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %46

44:                                               ; preds = %2
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %44, %36
  %47 = load i64**, i64*** @ff_dirac_prob_branchless, align 8
  %48 = load i32, i32* %5, align 4
  %49 = ashr i32 %48, 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64*, i64** %47, i64 %50
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %56
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = call i32 @renorm(%struct.TYPE_5__* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = call i32 @refill(%struct.TYPE_5__* %75)
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @renorm(%struct.TYPE_5__*) #1

declare dso_local i32 @refill(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
