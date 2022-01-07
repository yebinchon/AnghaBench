; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_psymodel.c_ff_psy_preprocess.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_psymodel.c_ff_psy_preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FFPsyPreprocessContext = type { i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, float*, i32, float*, i32)* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_psy_preprocess(%struct.FFPsyPreprocessContext* %0, float** %1, i32 %2) #0 {
  %4 = alloca %struct.FFPsyPreprocessContext*, align 8
  %5 = alloca float**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store %struct.FFPsyPreprocessContext* %0, %struct.FFPsyPreprocessContext** %4, align 8
  store float** %1, float*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.FFPsyPreprocessContext*, %struct.FFPsyPreprocessContext** %4, align 8
  %11 = getelementptr inbounds %struct.FFPsyPreprocessContext, %struct.FFPsyPreprocessContext* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.FFPsyPreprocessContext*, %struct.FFPsyPreprocessContext** %4, align 8
  %16 = getelementptr inbounds %struct.FFPsyPreprocessContext, %struct.FFPsyPreprocessContext* %15, i32 0, i32 2
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %9, align 8
  %17 = load %struct.FFPsyPreprocessContext*, %struct.FFPsyPreprocessContext** %4, align 8
  %18 = getelementptr inbounds %struct.FFPsyPreprocessContext, %struct.FFPsyPreprocessContext* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %62

21:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %58, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (i32, i32, i32, float*, i32, float*, i32)*, i32 (i32, i32, i32, float*, i32, float*, i32)** %28, align 8
  %30 = load %struct.FFPsyPreprocessContext*, %struct.FFPsyPreprocessContext** %4, align 8
  %31 = getelementptr inbounds %struct.FFPsyPreprocessContext, %struct.FFPsyPreprocessContext* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.FFPsyPreprocessContext*, %struct.FFPsyPreprocessContext** %4, align 8
  %34 = getelementptr inbounds %struct.FFPsyPreprocessContext, %struct.FFPsyPreprocessContext* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load float**, float*** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float*, float** %41, i64 %43
  %45 = load float*, float** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = load float**, float*** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float*, float** %49, i64 %51
  %53 = load float*, float** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = call i32 %29(i32 %32, i32 %39, i32 %40, float* %48, i32 1, float* %56, i32 1)
  br label %58

58:                                               ; preds = %26
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %22

61:                                               ; preds = %22
  br label %62

62:                                               ; preds = %61, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
