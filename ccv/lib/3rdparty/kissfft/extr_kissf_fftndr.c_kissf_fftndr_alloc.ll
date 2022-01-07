; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kissf_fftndr.c_kissf_fftndr_alloc.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kissf_fftndr.c_kissf_fftndr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @kissf_fftndr_alloc(i32* %0, i32 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @prod(i32* %25, i32 %27)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @kissf_fftr_alloc(i32 %29, i32 %30, %struct.TYPE_5__* null, i64* %13)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @kissf_fftnd_alloc(i32* %32, i32 %34, i32 %35, i8* null, i64* %14)
  %37 = load i32, i32* %17, align 4
  %38 = mul nsw i32 2, %37
  %39 = load i32, i32* %16, align 4
  %40 = add nsw i32 %39, 2
  %41 = call i32 @MAX(i32 %38, i32 %40)
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %45, 2
  %47 = mul nsw i32 %44, %46
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = add i64 %43, %49
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %13, align 8
  %52 = add i64 4, %51
  %53 = load i64, i64* %14, align 8
  %54 = add i64 %52, %53
  %55 = load i64, i64* %15, align 8
  %56 = add i64 %54, %55
  store i64 %56, i64* %18, align 8
  %57 = load i64*, i64** %11, align 8
  %58 = icmp eq i64* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %5
  %60 = load i64, i64* %18, align 8
  %61 = call i64 @malloc(i64 %60)
  %62 = inttoptr i64 %61 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %12, align 8
  br label %74

63:                                               ; preds = %5
  %64 = load i64*, i64** %11, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %18, align 8
  %67 = icmp uge i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %10, align 8
  %70 = bitcast i8* %69 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %12, align 8
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i64, i64* %18, align 8
  %73 = load i64*, i64** %11, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %59
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %76 = icmp eq %struct.TYPE_5__* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %117

78:                                               ; preds = %74
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %80 = load i64, i64* %18, align 8
  %81 = call i32 @memset(%struct.TYPE_5__* %79, i32 0, i64 %80)
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %17, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 1
  %92 = call i64 @kissf_fftr_alloc(i32 %88, i32 %89, %struct.TYPE_5__* %91, i64* %13)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  store i64 %92, i64* %94, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %96, 1
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = call i64 @kissf_fftnd_alloc(i32* %95, i32 %97, i32 %98, i8* %104, i64* %14)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = load i64, i64* %14, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %116, %struct.TYPE_5__** %6, align 8
  br label %117

117:                                              ; preds = %78, %77
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %118
}

declare dso_local i32 @prod(i32*, i32) #1

declare dso_local i64 @kissf_fftr_alloc(i32, i32, %struct.TYPE_5__*, i64*) #1

declare dso_local i64 @kissf_fftnd_alloc(i32*, i32, i32, i8*, i64*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
