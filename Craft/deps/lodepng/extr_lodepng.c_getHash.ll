; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_getHash.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_getHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH_NUM_CHARACTERS = common dso_local global i64 0, align 8
@HASH_SHIFT = common dso_local global i64 0, align 8
@HASH_NUM_VALUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64)* @getHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getHash(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

15:                                               ; preds = %3
  %16 = load i64, i64* @HASH_NUM_CHARACTERS, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = add i64 %17, %18
  %20 = load i64, i64* %6, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = sub i64 %23, %24
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %22, %15
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %33, %34
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @HASH_SHIFT, align 8
  %41 = mul i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %38, %42
  %44 = load i32, i32* %8, align 4
  %45 = xor i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %31
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %10, align 8
  br label %27

49:                                               ; preds = %27
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @HASH_NUM_VALUES, align 4
  %52 = urem i32 %50, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %14
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
