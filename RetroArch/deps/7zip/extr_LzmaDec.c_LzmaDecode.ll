; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaDec.c_LzmaDecode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaDec.c_LzmaDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32* }

@RC_INIT_SIZE = common dso_local global i64 0, align 8
@SZ_ERROR_INPUT_EOF = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@LZMA_STATUS_NEEDS_MORE_INPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LzmaDecode(i32* %0, i64* %1, i32* %2, i64* %3, i32* %4, i32 %5, i32 %6, i64* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_7__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i64* %1, i64** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64* %3, i64** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i64* %7, i64** %18, align 8
  store i32* %8, i32** %19, align 8
  %24 = load i64*, i64** %14, align 8
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %22, align 8
  %26 = load i64*, i64** %12, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %23, align 8
  %28 = load i64*, i64** %12, align 8
  store i64 0, i64* %28, align 8
  %29 = load i64*, i64** %14, align 8
  store i64 0, i64* %29, align 8
  %30 = load i64, i64* %22, align 8
  %31 = load i64, i64* @RC_INIT_SIZE, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %9
  %34 = load i64, i64* @SZ_ERROR_INPUT_EOF, align 8
  store i64 %34, i64* %10, align 8
  br label %76

35:                                               ; preds = %9
  %36 = call i32 @LzmaDec_Construct(%struct.TYPE_7__* %20)
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load i32*, i32** %19, align 8
  %40 = call i64 @LzmaDec_AllocateProbs(%struct.TYPE_7__* %20, i32* %37, i32 %38, i32* %39)
  store i64 %40, i64* %21, align 8
  %41 = load i64, i64* %21, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i64, i64* %21, align 8
  store i64 %44, i64* %10, align 8
  br label %76

45:                                               ; preds = %35
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i32* %46, i32** %47, align 8
  %48 = load i64, i64* %23, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = call i32 @LzmaDec_Init(%struct.TYPE_7__* %20)
  %51 = load i64, i64* %22, align 8
  %52 = load i64*, i64** %14, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* %23, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i64*, i64** %14, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load i64*, i64** %18, align 8
  %58 = call i64 @LzmaDec_DecodeToDic(%struct.TYPE_7__* %20, i64 %53, i32* %54, i64* %55, i32 %56, i64* %57)
  store i64 %58, i64* %21, align 8
  %59 = load i64, i64* %21, align 8
  %60 = load i64, i64* @SZ_OK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %45
  %63 = load i64*, i64** %18, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* @SZ_ERROR_INPUT_EOF, align 8
  store i64 %68, i64* %21, align 8
  br label %69

69:                                               ; preds = %67, %62, %45
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %12, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = call i32 @LzmaDec_FreeProbs(%struct.TYPE_7__* %20, i32* %73)
  %75 = load i64, i64* %21, align 8
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %69, %43, %33
  %77 = load i64, i64* %10, align 8
  ret i64 %77
}

declare dso_local i32 @LzmaDec_Construct(%struct.TYPE_7__*) #1

declare dso_local i64 @LzmaDec_AllocateProbs(%struct.TYPE_7__*, i32*, i32, i32*) #1

declare dso_local i32 @LzmaDec_Init(%struct.TYPE_7__*) #1

declare dso_local i64 @LzmaDec_DecodeToDic(%struct.TYPE_7__*, i64, i32*, i64*, i32, i64*) #1

declare dso_local i32 @LzmaDec_FreeProbs(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
