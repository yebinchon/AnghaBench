; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/lz4/lib/extr_lz4.c_LZ4_compress_fast_extState_fastReset.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/lz4/lib/extr_lz4.c_LZ4_compress_fast_extState_fastReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }

@ACCELERATION_DEFAULT = common dso_local global i32 0, align 4
@LZ4_64Klimit = common dso_local global i32 0, align 4
@byU16 = common dso_local global i32 0, align 4
@notLimited = common dso_local global i32 0, align 4
@noDict = common dso_local global i32 0, align 4
@dictSmall = common dso_local global i32 0, align 4
@noDictIssue = common dso_local global i32 0, align 4
@byU32 = common dso_local global i32 0, align 4
@limitedOutput = common dso_local global i32 0, align 4
@MAX_DISTANCE = common dso_local global i64 0, align 8
@byPtr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_compress_fast_extState_fastReset(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_6__*
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %14, align 8
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @ACCELERATION_DEFAULT, align 4
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %24, %6
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @LZ4_compressBound(i32 %28)
  %30 = icmp sge i32 %27, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @LZ4_64Klimit, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %31
  %36 = load i32, i32* @byU16, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @LZ4_prepareTable(%struct.TYPE_5__* %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @notLimited, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @noDict, align 4
  %53 = load i32, i32* @dictSmall, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @LZ4_compress_generic(%struct.TYPE_5__* %46, i8* %47, i8* %48, i32 %49, i32* null, i32 0, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %138

56:                                               ; preds = %35
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @notLimited, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @noDict, align 4
  %64 = load i32, i32* @noDictIssue, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @LZ4_compress_generic(%struct.TYPE_5__* %57, i8* %58, i8* %59, i32 %60, i32* null, i32 0, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %7, align 4
  br label %138

67:                                               ; preds = %31
  %68 = load i32, i32* @byU32, align 4
  store i32 %68, i32* %16, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @LZ4_prepareTable(%struct.TYPE_5__* %69, i32 %70, i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @notLimited, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @noDict, align 4
  %80 = load i32, i32* @noDictIssue, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @LZ4_compress_generic(%struct.TYPE_5__* %73, i8* %74, i8* %75, i32 %76, i32* null, i32 0, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %7, align 4
  br label %138

83:                                               ; preds = %26
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @LZ4_64Klimit, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %121

87:                                               ; preds = %83
  %88 = load i32, i32* @byU16, align 4
  store i32 %88, i32* %17, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @LZ4_prepareTable(%struct.TYPE_5__* %89, i32 %90, i32 %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %87
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @limitedOutput, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* @noDict, align 4
  %106 = load i32, i32* @dictSmall, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @LZ4_compress_generic(%struct.TYPE_5__* %98, i8* %99, i8* %100, i32 %101, i32* null, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %7, align 4
  br label %138

109:                                              ; preds = %87
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @limitedOutput, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* @noDict, align 4
  %118 = load i32, i32* @noDictIssue, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @LZ4_compress_generic(%struct.TYPE_5__* %110, i8* %111, i8* %112, i32 %113, i32* null, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %7, align 4
  br label %138

121:                                              ; preds = %83
  %122 = load i32, i32* @byU32, align 4
  store i32 %122, i32* %18, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %18, align 4
  %126 = call i32 @LZ4_prepareTable(%struct.TYPE_5__* %123, i32 %124, i32 %125)
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @limitedOutput, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* @noDict, align 4
  %135 = load i32, i32* @noDictIssue, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @LZ4_compress_generic(%struct.TYPE_5__* %127, i8* %128, i8* %129, i32 %130, i32* null, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %121, %109, %97, %67, %56, %45
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @LZ4_compressBound(i32) #1

declare dso_local i32 @LZ4_prepareTable(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @LZ4_compress_generic(%struct.TYPE_5__*, i8*, i8*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
