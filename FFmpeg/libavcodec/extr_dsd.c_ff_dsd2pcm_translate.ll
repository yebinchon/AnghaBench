; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dsd.c_ff_dsd2pcm_translate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dsd.c_ff_dsd2pcm_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64* }

@FIFOSIZE = common dso_local global i32 0, align 4
@ff_reverse = common dso_local global i64* null, align 8
@CTABLES = common dso_local global i32 0, align 4
@FIFOMASK = common dso_local global i32 0, align 4
@ctables = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_dsd2pcm_translate(%struct.TYPE_3__* %0, i64 %1, i32 %2, i64* %3, i32 %4, float* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca double, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store float* %5, float** %13, align 8
  store i32 %6, i32* %14, align 4
  %23 = load i32, i32* @FIFOSIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %15, align 8
  %26 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %17, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = mul nuw i64 8, %24
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memcpy(i64* %26, i64* %32, i32 %34)
  br label %36

36:                                               ; preds = %122, %7
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %9, align 8
  %39 = icmp ugt i64 %37, 0
  br i1 %39, label %40, label %134

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i64*, i64** @ff_reverse, align 8
  %45 = load i64*, i64** %11, align 8
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  br label %52

49:                                               ; preds = %40
  %50 = load i64*, i64** %11, align 8
  %51 = load i64, i64* %50, align 8
  br label %52

52:                                               ; preds = %49, %43
  %53 = phi i64 [ %48, %43 ], [ %51, %49 ]
  %54 = load i32, i32* %17, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %26, i64 %55
  store i64 %53, i64* %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i64*, i64** %11, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64* %60, i64** %11, align 8
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* @CTABLES, align 4
  %63 = sub i32 %61, %62
  %64 = load i32, i32* @FIFOMASK, align 4
  %65 = and i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %26, i64 %66
  store i64* %67, i64** %19, align 8
  %68 = load i64*, i64** @ff_reverse, align 8
  %69 = load i64*, i64** %19, align 8
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %19, align 8
  store i64 %72, i64* %73, align 8
  store double 0.000000e+00, double* %20, align 8
  store i32 0, i32* %18, align 4
  br label %74

74:                                               ; preds = %119, %52
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* @CTABLES, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %122

78:                                               ; preds = %74
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = sub i32 %79, %80
  %82 = load i32, i32* @FIFOMASK, align 4
  %83 = and i32 %81, %82
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %26, i64 %84
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %21, align 8
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* @CTABLES, align 4
  %89 = mul i32 %88, 2
  %90 = sub i32 %89, 1
  %91 = sub i32 %87, %90
  %92 = load i32, i32* %18, align 4
  %93 = add i32 %91, %92
  %94 = load i32, i32* @FIFOMASK, align 4
  %95 = and i32 %93, %94
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %26, i64 %96
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %22, align 8
  %99 = load i64**, i64*** @ctables, align 8
  %100 = load i32, i32* %18, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i64*, i64** %99, i64 %101
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* %21, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64**, i64*** @ctables, align 8
  %108 = load i32, i32* %18, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i64*, i64** %107, i64 %109
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %22, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %106, %114
  %116 = sitofp i64 %115 to double
  %117 = load double, double* %20, align 8
  %118 = fadd double %117, %116
  store double %118, double* %20, align 8
  br label %119

119:                                              ; preds = %78
  %120 = load i32, i32* %18, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %18, align 4
  br label %74

122:                                              ; preds = %74
  %123 = load double, double* %20, align 8
  %124 = fptrunc double %123 to float
  %125 = load float*, float** %13, align 8
  store float %124, float* %125, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load float*, float** %13, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds float, float* %127, i64 %128
  store float* %129, float** %13, align 8
  %130 = load i32, i32* %17, align 4
  %131 = add i32 %130, 1
  %132 = load i32, i32* @FIFOMASK, align 4
  %133 = and i32 %131, %132
  store i32 %133, i32* %17, align 4
  br label %36

134:                                              ; preds = %36
  %135 = load i32, i32* %17, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  %141 = mul nuw i64 8, %24
  %142 = trunc i64 %141 to i32
  %143 = call i32 @memcpy(i64* %140, i64* %26, i32 %142)
  %144 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %144)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
