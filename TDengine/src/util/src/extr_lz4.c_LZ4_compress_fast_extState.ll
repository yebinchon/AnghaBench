; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_lz4.c_LZ4_compress_fast_extState.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_lz4.c_LZ4_compress_fast_extState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ACCELERATION_DEFAULT = common dso_local global i32 0, align 4
@LZ4_64Klimit = common dso_local global i32 0, align 4
@notLimited = common dso_local global i32 0, align 4
@byU16 = common dso_local global i32 0, align 4
@noDict = common dso_local global i32 0, align 4
@noDictIssue = common dso_local global i32 0, align 4
@byU32 = common dso_local global i32 0, align 4
@limitedOutput = common dso_local global i32 0, align 4
@byPtr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_compress_fast_extState(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32* %17, i32** %14, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_3__*
  %20 = call i32 @LZ4_resetStream(%struct.TYPE_3__* %19)
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* @ACCELERATION_DEFAULT, align 4
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %23, %6
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @LZ4_compressBound(i32 %27)
  %29 = icmp sge i32 %26, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @LZ4_64Klimit, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i32*, i32** %14, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @notLimited, align 4
  %40 = load i32, i32* @byU16, align 4
  %41 = load i32, i32* @noDict, align 4
  %42 = load i32, i32* @noDictIssue, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @LZ4_compress_generic(i32* %35, i8* %36, i8* %37, i32 %38, i32 0, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %84

45:                                               ; preds = %30
  %46 = load i32*, i32** %14, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @notLimited, align 4
  %51 = load i32, i32* @byU32, align 4
  %52 = load i32, i32* @noDict, align 4
  %53 = load i32, i32* @noDictIssue, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @LZ4_compress_generic(i32* %46, i8* %47, i8* %48, i32 %49, i32 0, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %84

56:                                               ; preds = %25
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @LZ4_64Klimit, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32*, i32** %14, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @limitedOutput, align 4
  %67 = load i32, i32* @byU16, align 4
  %68 = load i32, i32* @noDict, align 4
  %69 = load i32, i32* @noDictIssue, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @LZ4_compress_generic(i32* %61, i8* %62, i8* %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %84

72:                                               ; preds = %56
  %73 = load i32*, i32** %14, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @limitedOutput, align 4
  %79 = load i32, i32* @byU32, align 4
  %80 = load i32, i32* @noDict, align 4
  %81 = load i32, i32* @noDictIssue, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @LZ4_compress_generic(i32* %73, i8* %74, i8* %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %72, %60, %45, %34
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @LZ4_resetStream(%struct.TYPE_3__*) #1

declare dso_local i32 @LZ4_compressBound(i32) #1

declare dso_local i32 @LZ4_compress_generic(i32*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
