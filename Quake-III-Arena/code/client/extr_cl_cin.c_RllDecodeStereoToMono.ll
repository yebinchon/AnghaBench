; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RllDecodeStereoToMono.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RllDecodeStereoToMono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@cin = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RllDecodeStereoToMono(i8* %0, i16* %1, i32 %2, i8 signext %3, i16 zeroext %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i16 %4, i16* %10, align 2
  %14 = load i8, i8* %9, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load i16, i16* %10, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 65280
  %20 = sub nsw i32 %19, 32768
  store i32 %20, i32* %12, align 4
  %21 = load i16, i16* %10, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 255
  %24 = shl i32 %23, 8
  %25 = sub nsw i32 %24, 32768
  store i32 %25, i32* %13, align 4
  br label %34

26:                                               ; preds = %5
  %27 = load i16, i16* %10, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 65280
  store i32 %29, i32* %12, align 4
  %30 = load i16, i16* %10, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 255
  %33 = shl i32 %32, 8
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %26, %16
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %74, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cin, i32 0, i32 0), align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = mul i32 %43, 2
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i32, i32* %41, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %40, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cin, i32 0, i32 0), align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = mul i32 %55, 2
  %57 = add i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i32, i32* %53, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %52, %63
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %65, %66
  %68 = sdiv i32 %67, 2
  %69 = trunc i32 %68 to i16
  %70 = load i16*, i16** %7, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i16, i16* %70, i64 %72
  store i16 %69, i16* %73, align 2
  br label %74

74:                                               ; preds = %39
  %75 = load i32, i32* %11, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %35

77:                                               ; preds = %35
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  ret i64 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
