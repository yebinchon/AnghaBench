; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_cache.c__FAT_cache_readLittleEndianValue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_cache.c__FAT_cache_readLittleEndianValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_cache_readLittleEndianValue(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @_FAT_cache_readPartialSector(i32* %13, i32* %14, i32 %15, i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %37

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  switch i32 %22, label %35 [
    i32 1, label %23
    i32 2, label %27
    i32 4, label %31
  ]

23:                                               ; preds = %21
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %25 = load i32, i32* %24, align 16
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  br label %36

27:                                               ; preds = %21
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %29 = call i32 @u8array_to_u16(i32* %28, i32 0)
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  br label %36

31:                                               ; preds = %21
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %33 = call i32 @u8array_to_u32(i32* %32, i32 0)
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  br label %36

35:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %37

36:                                               ; preds = %31, %27, %23
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %35, %20
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @_FAT_cache_readPartialSector(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @u8array_to_u16(i32*, i32) #1

declare dso_local i32 @u8array_to_u32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
