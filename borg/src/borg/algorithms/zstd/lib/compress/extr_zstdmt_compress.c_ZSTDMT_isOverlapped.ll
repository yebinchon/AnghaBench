; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_isOverlapped.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_isOverlapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i64)* @ZSTDMT_isOverlapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ZSTDMT_isOverlapped(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = bitcast %struct.TYPE_6__* %6 to { i32, i64 }*
  %13 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %12, i32 0, i32 0
  store i32 %0, i32* %13, align 8
  %14 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %12, i32 0, i32 1
  store i64 %1, i64* %14, align 8
  %15 = bitcast %struct.TYPE_5__* %7 to { i32, i64 }*
  %16 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %15, i32 0, i32 0
  store i32 %2, i32* %16, align 8
  %17 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %15, i32 0, i32 1
  store i64 %3, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32* %25, i32** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32*, i32** %8, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %4
  store i32 0, i32* %5, align 4
  br label %60

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = icmp eq i32* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40
  store i32 0, i32* %5, align 4
  br label %60

49:                                               ; preds = %44
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ult i32* %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ult i32* %54, %55
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ false, %49 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %57, %48, %39
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
