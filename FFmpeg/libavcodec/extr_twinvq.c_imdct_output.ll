; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_imdct_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_imdct_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float*, i32*, float*, %struct.TYPE_8__*, %struct.TYPE_7__*, i64, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 (float*, float*, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32, float**, i32)* @imdct_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imdct_output(%struct.TYPE_10__* %0, i32 %1, i32 %2, float** %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float** %3, float*** %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %11, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load float*, float** %22, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %23, i64 %29
  store float* %30, float** %12, align 8
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %64, %5
  %32 = load i32, i32* %15, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %31
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %45, %51
  %53 = load float*, float** %12, align 8
  %54 = load i32, i32* %15, align 4
  %55 = mul nsw i32 2, %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %53, i64 %60
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @imdct_and_window(%struct.TYPE_10__* %40, i32 %41, i32 %42, i64 %52, float* %61, i32 %62)
  br label %64

64:                                               ; preds = %39
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %31

67:                                               ; preds = %31
  %68 = load float**, float*** %9, align 8
  %69 = icmp ne float** %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %164

71:                                               ; preds = %67
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %14, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %13, align 4
  %82 = load float**, float*** %9, align 8
  %83 = getelementptr inbounds float*, float** %82, i64 0
  %84 = load float*, float** %83, align 8
  %85 = getelementptr inbounds float, float* %84, i64 0
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  store float* %88, float** %16, align 8
  %89 = load float*, float** %16, align 8
  %90 = load float*, float** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(float* %89, float* %90, i32 %94)
  %96 = load float*, float** %16, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %96, i64 %98
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load float*, float** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memcpy(float* %99, float* %102, i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %164

114:                                              ; preds = %71
  %115 = load float**, float*** %9, align 8
  %116 = getelementptr inbounds float*, float** %115, i64 1
  %117 = load float*, float** %116, align 8
  %118 = getelementptr inbounds float, float* %117, i64 0
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %118, i64 %120
  store float* %121, float** %17, align 8
  %122 = load float*, float** %17, align 8
  %123 = load float*, float** %12, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 2, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %123, i64 %128
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = trunc i64 %132 to i32
  %134 = call i32 @memcpy(float* %122, float* %129, i32 %133)
  %135 = load float*, float** %17, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  %141 = load float*, float** %140, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 2, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %141, i64 %146
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 4
  %151 = trunc i64 %150 to i32
  %152 = call i32 @memcpy(float* %138, float* %147, i32 %151)
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32 (float*, float*, i32)*, i32 (float*, float*, i32)** %156, align 8
  %158 = load float*, float** %16, align 8
  %159 = load float*, float** %17, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 %157(float* %158, float* %159, i32 %162)
  br label %164

164:                                              ; preds = %70, %114, %71
  ret void
}

declare dso_local i32 @imdct_and_window(%struct.TYPE_10__*, i32, i32, i64, float*, i32) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
