; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_entry_index.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_entry_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, i32)* @entry_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entry_index(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast %struct.TYPE_3__* %6 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %0, i64* %13, align 4
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %1, i64* %14, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %17, %19
  %21 = sdiv i32 %15, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %24, %26
  %28 = srem i32 %22, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %29, %31
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %33, %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %36, %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 4, %41
  %43 = add nsw i32 %42, 1
  %44 = mul nsw i32 %39, %43
  %45 = add nsw i32 %32, %44
  %46 = load i32, i32* %9, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %46, %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %49, %51
  %53 = add nsw i32 %45, %52
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %53, %54
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
