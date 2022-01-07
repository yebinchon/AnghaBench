; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_dequant.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvq.c_dequant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32**, i32*, i32*, i32***, i64** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, float*, i32, i32*, i32*, i32)* @dequant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dequant(%struct.TYPE_3__* %0, i32* %1, float* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32* %1, i32** %9, align 8
  store float* %2, float** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %27

27:                                               ; preds = %177, %7
  %28 = load i32, i32* %16, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %28, %35
  br i1 %36, label %37, label %180

37:                                               ; preds = %27
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %45, %52
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %44, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %24, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %58, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %25, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = load i32***, i32**** %69, align 8
  %71 = getelementptr inbounds i32**, i32*** %70, i64 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %25, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %26, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %9, align 8
  %83 = load i32, i32* %81, align 4
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %26, align 4
  %85 = icmp eq i32 %84, 7
  br i1 %85, label %86, label %94

86:                                               ; preds = %37
  %87 = load i32, i32* %18, align 4
  %88 = and i32 %87, 64
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 -1, i32* %20, align 4
  br label %91

91:                                               ; preds = %90, %86
  %92 = load i32, i32* %18, align 4
  %93 = and i32 %92, 63
  store i32 %93, i32* %18, align 4
  br label %94

94:                                               ; preds = %91, %37
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  %97 = load i32***, i32**** %96, align 8
  %98 = getelementptr inbounds i32**, i32*** %97, i64 1
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %25, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %26, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %9, align 8
  %110 = load i32, i32* %108, align 4
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %26, align 4
  %112 = icmp eq i32 %111, 7
  br i1 %112, label %113, label %121

113:                                              ; preds = %94
  %114 = load i32, i32* %19, align 4
  %115 = and i32 %114, 64
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 -1, i32* %21, align 4
  br label %118

118:                                              ; preds = %117, %113
  %119 = load i32, i32* %19, align 4
  %120 = and i32 %119, 63
  store i32 %120, i32* %19, align 4
  br label %121

121:                                              ; preds = %118, %94
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %14, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  store i32* %127, i32** %22, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %14, align 4
  %131 = mul nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  store i32* %133, i32** %23, align 8
  store i32 0, i32* %17, align 4
  br label %134

134:                                              ; preds = %170, %121
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %24, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %173

138:                                              ; preds = %134
  %139 = load i32, i32* %20, align 4
  %140 = load i32*, i32** %22, align 8
  %141 = load i32, i32* %17, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %139, %144
  %146 = load i32, i32* %21, align 4
  %147 = load i32*, i32** %23, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %146, %151
  %153 = add nsw i32 %145, %152
  %154 = sitofp i32 %153 to float
  %155 = load float*, float** %10, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 5
  %158 = load i64**, i64*** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i64*, i64** %158, i64 %160
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %17, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %162, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds float, float* %155, i64 %168
  store float %154, float* %169, align 4
  br label %170

170:                                              ; preds = %138
  %171 = load i32, i32* %17, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %17, align 4
  br label %134

173:                                              ; preds = %134
  %174 = load i32, i32* %24, align 4
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %15, align 4
  br label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  br label %27

180:                                              ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
