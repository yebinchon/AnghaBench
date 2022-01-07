; ModuleID = '/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_doHorizDefFilter_C.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_doHorizDefFilter_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_3__*)* @doHorizDefFilter_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doHorizDefFilter_C(i32* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %134, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @BLOCK_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %137

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = mul nsw i32 5, %24
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = mul nsw i32 2, %32
  %34 = add nsw i32 %25, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @FFABS(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 8, %39
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %129

42:                                               ; preds = %17
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  %50 = sdiv i32 %49, 2
  store i32 %50, i32* %9, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  %58 = mul nsw i32 5, %57
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  %66 = mul nsw i32 2, %65
  %67 = add nsw i32 %58, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  %75 = mul nsw i32 5, %74
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 7
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = mul nsw i32 2, %82
  %84 = add nsw i32 %75, %83
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @FFABS(i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @FFABS(i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @FFABS(i32 %89)
  %91 = call i32 @FFMIN(i32 %88, i32 %90)
  %92 = sub nsw i32 %86, %91
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @FFMAX(i32 %93, i32 0)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = mul nsw i32 5, %95
  %97 = add nsw i32 %96, 32
  %98 = ashr i32 %97, 6
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 0, %99
  %101 = call i32 @FFSIGN(i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = mul nsw i32 %102, %101
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %42
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @FFMAX(i32 %107, i32 0)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @FFMIN(i32 %109, i32 %110)
  store i32 %111, i32* %12, align 4
  br label %118

112:                                              ; preds = %42
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @FFMIN(i32 %113, i32 0)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @FFMAX(i32 %115, i32 %116)
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %112, %106
  %119 = load i32, i32* %12, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %118, %17
  %130 = load i32, i32* %5, align 4
  %131 = load i32*, i32** %4, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %4, align 8
  br label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %13

137:                                              ; preds = %13
  ret void
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFSIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
