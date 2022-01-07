; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_cache.c__FAT_cache_writePartialSector.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_cache.c__FAT_cache_writePartialSector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_cache_writePartialSector(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* %10, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %11, align 8
  %17 = add i64 %15, %16
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %54

24:                                               ; preds = %5
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.TYPE_6__* @_FAT_cache_getPage(%struct.TYPE_7__* %25, i32 %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %13, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %29 = icmp eq %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %54

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub i32 %32, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul i32 %40, %43
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %44, %45
  %47 = zext i32 %46 to i64
  %48 = add nsw i64 %39, %47
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @memcpy(i64 %48, i8* %49, i64 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %31, %30, %23
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_6__* @_FAT_cache_getPage(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
