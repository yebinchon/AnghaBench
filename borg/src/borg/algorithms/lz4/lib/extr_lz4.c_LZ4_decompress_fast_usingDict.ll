; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/lz4/lib/extr_lz4.c_LZ4_decompress_fast_usingDict.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/lz4/lib/extr_lz4.c_LZ4_decompress_fast_usingDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_decompress_fast_usingDict(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %5
  %15 = load i8*, i8** %10, align 8
  %16 = load i32, i32* %11, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14, %5
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @LZ4_decompress_fast(i8* %22, i8* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %33

26:                                               ; preds = %14
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @LZ4_decompress_fast_extDict(i8* %27, i8* %28, i32 %29, i8* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %26, %21
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @LZ4_decompress_fast(i8*, i8*, i32) #1

declare dso_local i32 @LZ4_decompress_fast_extDict(i8*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
