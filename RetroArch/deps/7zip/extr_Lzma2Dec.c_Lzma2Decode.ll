; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Lzma2Dec.c_Lzma2Decode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_Lzma2Dec.c_Lzma2Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32* }

@LZMA_PROPS_SIZE = common dso_local global i32 0, align 4
@LZMA_STATUS_NOT_SPECIFIED = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@LZMA_STATUS_NEEDS_MORE_INPUT = common dso_local global i64 0, align 8
@SZ_ERROR_INPUT_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Lzma2Decode(i32* %0, i64* %1, i32* %2, i64* %3, i32 %4, i32 %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  store i32* %7, i32** %16, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %19, align 8
  %25 = load i64*, i64** %12, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %20, align 8
  %27 = load i32, i32* @LZMA_PROPS_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %21, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %22, align 8
  %31 = call i32 @Lzma2Dec_Construct(%struct.TYPE_6__* %17)
  %32 = load i64*, i64** %12, align 8
  store i64 0, i64* %32, align 8
  %33 = load i64*, i64** %10, align 8
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* @LZMA_STATUS_NOT_SPECIFIED, align 8
  %35 = load i64*, i64** %15, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load i64, i64* %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @Lzma2Dec_GetOldProps(i32 %42, i32* %30)
  %44 = call i32 @RINOK(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %46 = load i32, i32* @LZMA_PROPS_SIZE, align 4
  %47 = load i32*, i32** %16, align 8
  %48 = call i32 @LzmaDec_AllocateProbs(%struct.TYPE_7__* %45, i32* %30, i32 %46, i32* %47)
  %49 = call i32 @RINOK(i32 %48)
  %50 = load i64, i64* %20, align 8
  %51 = load i64*, i64** %12, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* %19, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i64*, i64** %12, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i64*, i64** %15, align 8
  %57 = call i64 @Lzma2Dec_DecodeToDic(%struct.TYPE_6__* %17, i64 %52, i32* %53, i64* %54, i32 %55, i64* %56)
  store i64 %57, i64* %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %10, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i64, i64* %18, align 8
  %63 = load i64, i64* @SZ_OK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %8
  %66 = load i64*, i64** %15, align 8
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @LZMA_STATUS_NEEDS_MORE_INPUT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i64, i64* @SZ_ERROR_INPUT_EOF, align 8
  store i64 %71, i64* %18, align 8
  br label %72

72:                                               ; preds = %70, %65, %8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %74 = load i32*, i32** %16, align 8
  %75 = call i32 @LzmaDec_FreeProbs(%struct.TYPE_7__* %73, i32* %74)
  %76 = load i64, i64* %18, align 8
  %77 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %77)
  ret i64 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Lzma2Dec_Construct(%struct.TYPE_6__*) #2

declare dso_local i32 @RINOK(i32) #2

declare dso_local i32 @Lzma2Dec_GetOldProps(i32, i32*) #2

declare dso_local i32 @LzmaDec_AllocateProbs(%struct.TYPE_7__*, i32*, i32, i32*) #2

declare dso_local i64 @Lzma2Dec_DecodeToDic(%struct.TYPE_6__*, i64, i32*, i64*, i32, i64*) #2

declare dso_local i32 @LzmaDec_FreeProbs(%struct.TYPE_7__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
