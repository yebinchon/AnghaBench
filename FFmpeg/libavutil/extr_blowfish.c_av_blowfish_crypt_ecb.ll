; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_blowfish.c_av_blowfish_crypt_ecb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_blowfish.c_av_blowfish_crypt_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@AV_BF_ROUNDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_blowfish_crypt_ecb(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %66

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @AV_BF_ROUNDS, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = xor i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @AV_BF_ROUNDS, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %55, %18
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @F(i32 %34, i32 %35, i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @F(i32 %44, i32 %45, i32 %53)
  br label %55

55:                                               ; preds = %33
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %56, 2
  store i32 %57, i32* %11, align 4
  br label %30

58:                                               ; preds = %30
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = xor i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %115

66:                                               ; preds = %4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = xor i32 %72, %71
  store i32 %73, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %74

74:                                               ; preds = %101, %66
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @AV_BF_ROUNDS, align 4
  %77 = add nsw i32 %76, 1
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @F(i32 %80, i32 %81, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @F(i32 %90, i32 %91, i32 %99)
  br label %101

101:                                              ; preds = %79
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 2
  store i32 %103, i32* %11, align 4
  br label %74

104:                                              ; preds = %74
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @AV_BF_ROUNDS, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = xor i32 %113, %112
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %104, %58
  %116 = load i32, i32* %10, align 4
  %117 = load i32*, i32** %6, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32*, i32** %7, align 8
  store i32 %118, i32* %119, align 4
  ret void
}

declare dso_local i32 @F(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
