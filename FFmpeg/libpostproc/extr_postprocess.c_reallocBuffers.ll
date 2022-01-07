; ModuleID = '/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_reallocBuffers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_reallocBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32, i32, i32, i32*, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32)* @reallocBuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reallocBuffers(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 15
  %16 = ashr i32 %15, 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 15
  %19 = ashr i32 %18, 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 11
  %28 = bitcast i32* %27 to i8**
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %29, 24
  %31 = add nsw i32 %30, 32
  %32 = call i32 @reallocAlign(i8** %28, i32 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 10
  %35 = bitcast i32* %34 to i8**
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %36, 24
  %38 = call i32 @reallocAlign(i8** %35, i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 9
  %41 = bitcast i32* %40 to i8**
  %42 = call i32 @reallocAlign(i8** %41, i32 256)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = bitcast i32** %44 to i8**
  %46 = call i32 @reallocAlign(i8** %45, i32 1024)
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %63, %5
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sdiv i32 %53, 64
  %55 = mul nsw i32 %54, 15
  %56 = sdiv i32 %55, 256
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %47

66:                                               ; preds = %47
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %98, %66
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %101

70:                                               ; preds = %67
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 8
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = bitcast i32* %76 to i8**
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %78, %79
  %81 = mul nsw i32 %80, 16
  %82 = add nsw i32 %81, 17408
  %83 = call i32 @reallocAlign(i8** %77, i32 %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 7
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = bitcast i32* %89 to i8**
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 7
  %93 = and i32 %92, -8
  %94 = mul nsw i32 256, %93
  %95 = sdiv i32 %94, 2
  %96 = add nsw i32 %95, 17408
  %97 = call i32 @reallocAlign(i8** %90, i32 %96)
  br label %98

98:                                               ; preds = %70
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %67

101:                                              ; preds = %67
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 6
  %104 = bitcast i32* %103 to i8**
  %105 = load i32, i32* %7, align 4
  %106 = mul nsw i32 2, %105
  %107 = add nsw i32 %106, 32
  %108 = call i32 @reallocAlign(i8** %104, i32 %107)
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 5
  %111 = bitcast i32* %110 to i8**
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %12, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = call i32 @reallocAlign(i8** %111, i32 %117)
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 4
  %121 = bitcast i32* %120 to i8**
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %12, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = call i32 @reallocAlign(i8** %121, i32 %127)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  %131 = bitcast i32* %130 to i8**
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = trunc i64 %134 to i32
  %136 = call i32 @reallocAlign(i8** %131, i32 %135)
  ret void
}

declare dso_local i32 @reallocAlign(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
