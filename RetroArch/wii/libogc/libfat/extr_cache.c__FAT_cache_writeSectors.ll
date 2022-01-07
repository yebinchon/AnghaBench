; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_cache.c__FAT_cache_writeSectors.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_cache.c__FAT_cache_writeSectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_cache_writeSectors(%struct.TYPE_7__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %13, align 8
  br label %16

16:                                               ; preds = %42, %4
  %17 = load i64, i64* %8, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %16
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call %struct.TYPE_6__* @_FAT_cache_getPage(%struct.TYPE_7__* %20, i64 %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %12, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %75

26:                                               ; preds = %19
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  store i64 %31, i64* %10, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %40, %26
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = mul nsw i64 %46, %49
  %51 = add nsw i64 %45, %50
  %52 = load i32*, i32** %13, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = mul nsw i64 %53, %56
  %58 = call i32 @memcpy(i64 %51, i32* %52, i64 %57)
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = mul nsw i64 %59, %62
  %64 = load i32*, i32** %13, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 %63
  store i32* %65, i32** %13, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %8, align 8
  %71 = sub nsw i64 %70, %69
  store i64 %71, i64* %8, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  br label %16

74:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %25
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_6__* @_FAT_cache_getPage(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
