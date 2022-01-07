; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgq.c_tgq_idct_put_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eatgq.c_tgq_idct_put_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32** }

@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, [64 x i32]*, %struct.TYPE_8__*, i32, i32)* @tgq_idct_put_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgq_idct_put_mb(%struct.TYPE_7__* %0, [64 x i32]* %1, %struct.TYPE_8__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca [64 x i32]*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store [64 x i32]* %1, [64 x i32]** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %25, 16
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %31, 16
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32* %34, i32** %12, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = mul nsw i32 %40, 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %41, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %39, i64 %48
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %50, 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32* %53, i32** %13, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = mul nsw i32 %59, 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %60, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %58, i64 %67
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %69, 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32* %72, i32** %14, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load [64 x i32]*, [64 x i32]** %7, align 8
  %76 = getelementptr inbounds [64 x i32], [64 x i32]* %75, i64 0
  %77 = getelementptr inbounds [64 x i32], [64 x i32]* %76, i64 0, i64 0
  %78 = call i32 @ff_ea_idct_put_c(i32* %73, i32 %74, i32* %77)
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  %81 = load i32, i32* %11, align 4
  %82 = load [64 x i32]*, [64 x i32]** %7, align 8
  %83 = getelementptr inbounds [64 x i32], [64 x i32]* %82, i64 1
  %84 = getelementptr inbounds [64 x i32], [64 x i32]* %83, i64 0, i64 0
  %85 = call i32 @ff_ea_idct_put_c(i32* %80, i32 %81, i32* %84)
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %11, align 4
  %88 = mul nsw i32 8, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %11, align 4
  %92 = load [64 x i32]*, [64 x i32]** %7, align 8
  %93 = getelementptr inbounds [64 x i32], [64 x i32]* %92, i64 2
  %94 = getelementptr inbounds [64 x i32], [64 x i32]* %93, i64 0, i64 0
  %95 = call i32 @ff_ea_idct_put_c(i32* %90, i32 %91, i32* %94)
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %11, align 4
  %98 = mul nsw i32 8, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  %102 = load i32, i32* %11, align 4
  %103 = load [64 x i32]*, [64 x i32]** %7, align 8
  %104 = getelementptr inbounds [64 x i32], [64 x i32]* %103, i64 3
  %105 = getelementptr inbounds [64 x i32], [64 x i32]* %104, i64 0, i64 0
  %106 = call i32 @ff_ea_idct_put_c(i32* %101, i32 %102, i32* %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %136, label %115

115:                                              ; preds = %5
  %116 = load i32*, i32** %13, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load [64 x i32]*, [64 x i32]** %7, align 8
  %123 = getelementptr inbounds [64 x i32], [64 x i32]* %122, i64 4
  %124 = getelementptr inbounds [64 x i32], [64 x i32]* %123, i64 0, i64 0
  %125 = call i32 @ff_ea_idct_put_c(i32* %116, i32 %121, i32* %124)
  %126 = load i32*, i32** %14, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = load [64 x i32]*, [64 x i32]** %7, align 8
  %133 = getelementptr inbounds [64 x i32], [64 x i32]* %132, i64 5
  %134 = getelementptr inbounds [64 x i32], [64 x i32]* %133, i64 0, i64 0
  %135 = call i32 @ff_ea_idct_put_c(i32* %126, i32 %131, i32* %134)
  br label %136

136:                                              ; preds = %115, %5
  ret void
}

declare dso_local i32 @ff_ea_idct_put_c(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
