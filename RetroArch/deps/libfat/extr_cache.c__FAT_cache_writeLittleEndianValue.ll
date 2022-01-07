; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_cache.c__FAT_cache_writeLittleEndianValue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_cache.c__FAT_cache_writeLittleEndianValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_FAT_cache_writeLittleEndianValue(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* %11, align 4
  switch i32 %14, label %26 [
    i32 1, label %15
    i32 2, label %18
    i32 4, label %22
  ]

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  br label %27

18:                                               ; preds = %5
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @u16_to_u8array(i32* %19, i32 0, i32 %20)
  br label %27

22:                                               ; preds = %5
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @u32_to_u8array(i32* %23, i32 0, i32 %24)
  br label %27

26:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %34

27:                                               ; preds = %22, %18, %15
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @_FAT_cache_writePartialSector(i32* %28, i32* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %27, %26
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @u16_to_u8array(i32*, i32, i32) #2

declare dso_local i32 @u32_to_u8array(i32*, i32, i32) #2

declare dso_local i32 @_FAT_cache_writePartialSector(i32*, i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
