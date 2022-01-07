; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_get_image_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_get_image_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32* } @get_image_layer(i64 %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_5__* %5 to { i64, i32* }*
  %9 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %8, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %8, i32 0, i32 1
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %6, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call { i64, i32* } @make_image(i32 %12, i32 %14, i32 1)
  %16 = bitcast %struct.TYPE_5__* %4 to { i64, i32* }*
  %17 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %16, i32 0, i32 0
  %18 = extractvalue { i64, i32* } %15, 0
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %16, i32 0, i32 1
  %20 = extractvalue { i64, i32* } %15, 1
  store i32* %20, i32** %19, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %49, %3
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %24, %26
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %33, %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %36, %38
  %40 = add nsw i32 %32, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %31, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %43, i32* %48, align 4
  br label %49

49:                                               ; preds = %29
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %21

52:                                               ; preds = %21
  %53 = bitcast %struct.TYPE_5__* %4 to { i64, i32* }*
  %54 = load { i64, i32* }, { i64, i32* }* %53, align 8
  ret { i64, i32* } %54
}

declare dso_local { i64, i32* } @make_image(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
