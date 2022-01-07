; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_depackrnc1.c_rnc_crc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_depackrnc1.c_rnc_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @rnc_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rnc_crc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [256 x i16], align 16
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %9, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %45, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %48

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %6, align 2
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %37, %14
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i32
  %28 = ashr i32 %27, 1
  %29 = xor i32 %28, 40961
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %6, align 2
  br label %36

31:                                               ; preds = %20
  %32 = load i16, i16* %6, align 2
  %33 = zext i16 %32 to i32
  %34 = ashr i32 %33, 1
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %6, align 2
  br label %36

36:                                               ; preds = %31, %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load i16, i16* %6, align 2
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [256 x i16], [256 x i16]* %5, i64 0, i64 %43
  store i16 %41, i16* %44, align 2
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %11

48:                                               ; preds = %11
  store i16 0, i16* %6, align 2
  br label %49

49:                                               ; preds = %53, %48
  %50 = load i64, i64* %4, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %4, align 8
  %52 = icmp ne i64 %50, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %9, align 8
  %56 = load i8, i8* %54, align 1
  %57 = zext i8 %56 to i32
  %58 = load i16, i16* %6, align 2
  %59 = zext i16 %58 to i32
  %60 = xor i32 %59, %57
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %6, align 2
  %62 = load i16, i16* %6, align 2
  %63 = zext i16 %62 to i32
  %64 = ashr i32 %63, 8
  %65 = load i16, i16* %6, align 2
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, 255
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [256 x i16], [256 x i16]* %5, i64 0, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = xor i32 %64, %71
  %73 = trunc i32 %72 to i16
  store i16 %73, i16* %6, align 2
  br label %49

74:                                               ; preds = %49
  %75 = load i16, i16* %6, align 2
  %76 = zext i16 %75 to i64
  ret i64 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
