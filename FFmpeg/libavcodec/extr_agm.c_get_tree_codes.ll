; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_get_tree_codes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_get_tree_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, %struct.TYPE_3__*, i32, i64, i32)* @get_tree_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_tree_codes(i64* %0, %struct.TYPE_3__* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %22

13:                                               ; preds = %5
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i64, i64* %9, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 %17, i64* %21, align 8
  br label %61

22:                                               ; preds = %13, %5
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %22
  %26 = load i64*, i64** %6, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = shl i32 0, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  call void @get_tree_codes(i64* %26, %struct.TYPE_3__* %27, i32 %35, i64 %40, i32 %42)
  %43 = load i64*, i64** %6, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 1, %54
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  call void @get_tree_codes(i64* %43, %struct.TYPE_3__* %44, i32 %52, i64 %57, i32 %59)
  br label %60

60:                                               ; preds = %25, %22
  br label %61

61:                                               ; preds = %60, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
