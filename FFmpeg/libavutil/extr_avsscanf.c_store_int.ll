; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_avsscanf.c_store_int.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_avsscanf.c_store_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64)* @store_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_int(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %34

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %34 [
    i32 130, label %12
    i32 131, label %16
    i32 132, label %21
    i32 129, label %26
    i32 128, label %30
  ]

12:                                               ; preds = %10
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i8
  %15 = load i8*, i8** %4, align 8
  store i8 %14, i8* %15, align 1
  br label %34

16:                                               ; preds = %10
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i16
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to i16*
  store i16 %18, i16* %20, align 2
  br label %34

21:                                               ; preds = %10
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 4
  br label %34

26:                                               ; preds = %10
  %27 = load i64, i64* %6, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to i64*
  store i64 %27, i64* %29, align 8
  br label %34

30:                                               ; preds = %10
  %31 = load i64, i64* %6, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = bitcast i8* %32 to i64*
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %9, %10, %30, %26, %21, %16, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
