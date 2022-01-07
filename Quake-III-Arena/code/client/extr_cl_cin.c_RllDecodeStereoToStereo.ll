; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RllDecodeStereoToStereo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_RllDecodeStereoToStereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@cin = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RllDecodeStereoToStereo(i8* %0, i16* %1, i32 %2, i8 signext %3, i16 zeroext %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i16 %4, i16* %10, align 2
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i8, i8* %9, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load i16, i16* %10, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 65280
  %22 = sub nsw i32 %21, 32768
  store i32 %22, i32* %13, align 4
  %23 = load i16, i16* %10, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 255
  %26 = shl i32 %25, 8
  %27 = sub nsw i32 %26, 32768
  store i32 %27, i32* %14, align 4
  br label %36

28:                                               ; preds = %5
  %29 = load i16, i16* %10, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, 65280
  store i32 %31, i32* %13, align 4
  %32 = load i16, i16* %10, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 255
  %35 = shl i32 %34, 8
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %28, %18
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %80, %36
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cin, i32 0, i32 0), align 8
  %45 = load i8*, i8** %12, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %12, align 8
  %47 = load i8, i8* %45, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i64, i64* %44, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %43, %50
  %52 = trunc i64 %51 to i16
  %53 = sext i16 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cin, i32 0, i32 0), align 8
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %12, align 8
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i64, i64* %56, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %55, %62
  %64 = trunc i64 %63 to i16
  %65 = sext i16 %64 to i32
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = trunc i32 %66 to i16
  %68 = load i16*, i16** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 0
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %68, i64 %71
  store i16 %67, i16* %72, align 2
  %73 = load i32, i32* %14, align 4
  %74 = trunc i32 %73 to i16
  %75 = load i16*, i16** %7, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i16, i16* %75, i64 %78
  store i16 %74, i16* %79, align 2
  br label %80

80:                                               ; preds = %41
  %81 = load i32, i32* %11, align 4
  %82 = add i32 %81, 2
  store i32 %82, i32* %11, align 4
  br label %37

83:                                               ; preds = %37
  %84 = load i32, i32* %8, align 4
  %85 = lshr i32 %84, 1
  %86 = zext i32 %85 to i64
  ret i64 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
