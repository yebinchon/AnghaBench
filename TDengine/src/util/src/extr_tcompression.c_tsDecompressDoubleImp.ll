; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsDecompressDoubleImp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsDecompressDoubleImp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

@DOUBLE_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsDecompressDoubleImp(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %union.anon, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to double*
  store double* %19, double** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %36

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DOUBLE_BYTES, align 4
  %31 = mul nsw i32 %29, %30
  %32 = call i32 @memcpy(i8* %26, i8* %28, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DOUBLE_BYTES, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %4, align 4
  br label %83

36:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %76, %36
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %79

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  %43 = srem i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %45, %41
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @INT8MASK(i32 4)
  %56 = and i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 4
  store i32 %58, i32* %9, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @decodeDoubleValue(i8* %59, i32* %10, i32 %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %15, align 4
  %65 = xor i32 %63, %64
  %66 = bitcast %union.anon* %16 to i32*
  store i32 %65, i32* %66, align 8
  %67 = bitcast %union.anon* %16 to i32*
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %12, align 4
  %69 = bitcast %union.anon* %16 to double*
  %70 = load double, double* %69, align 8
  %71 = load double*, double** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds double, double* %71, i64 %74
  store double %70, double* %75, align 8
  br label %76

76:                                               ; preds = %53
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %37

79:                                               ; preds = %37
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @DOUBLE_BYTES, align 4
  %82 = mul nsw i32 %80, %81
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %25
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @INT8MASK(i32) #1

declare dso_local i32 @decodeDoubleValue(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
