; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_reversedCopyResultToDstBuf.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_reversedCopyResultToDstBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_14__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_13__*)* @reversedCopyResultToDstBuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reversedCopyResultToDstBuf(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %89, %3
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %14, %18
  br i1 %19, label %20, label %92

20:                                               ; preds = %13
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call %struct.TYPE_14__* @tscFieldInfoGetField(%struct.TYPE_16__* %21, i64 %22)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %8, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @tscFieldInfoGetOffset(%struct.TYPE_16__* %24, i64 %25)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %29, i64 %38
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %9, align 8
  %45 = mul nsw i64 %43, %44
  %46 = getelementptr inbounds i8, i8* %39, i64 %45
  store i8* %46, i8** %10, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %9, align 8
  %55 = mul nsw i64 %53, %54
  %56 = getelementptr inbounds i8, i8* %49, i64 %55
  store i8* %56, i8** %11, align 8
  store i64 0, i64* %12, align 8
  br label %57

57:                                               ; preds = %85, %20
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %58, %62
  br i1 %63, label %64, label %88

64:                                               ; preds = %57
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 @memcpy(i8* %65, i8* %66, i64 %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %11, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = sext i32 %80 to i64
  %83 = sub i64 0, %82
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8* %84, i8** %10, align 8
  br label %85

85:                                               ; preds = %64
  %86 = load i64, i64* %12, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %12, align 8
  br label %57

88:                                               ; preds = %57
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %7, align 8
  br label %13

92:                                               ; preds = %13
  ret void
}

declare dso_local %struct.TYPE_14__* @tscFieldInfoGetField(%struct.TYPE_16__*, i64) #1

declare dso_local i64 @tscFieldInfoGetOffset(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
