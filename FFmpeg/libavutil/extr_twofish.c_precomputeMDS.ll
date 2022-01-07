; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_twofish.c_precomputeMDS.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_twofish.c_precomputeMDS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32, i32 }

@MD1 = common dso_local global i64* null, align 8
@MD2 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @precomputeMDS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @precomputeMDS(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [4 x i64], align 16
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %155, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %158

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2
  store i64 %10, i64* %12, align 16
  %13 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1
  store i64 %10, i64* %13, align 8
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  store i64 %10, i64* %14, align 16
  %15 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @tf_h0(i64* %15, i32 %18, i32 %21)
  %23 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %24 = load i64, i64* %23, align 16
  %25 = trunc i64 %24 to i32
  %26 = load i64*, i64** @MD1, align 8
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %28 = load i64, i64* %27, align 16
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 %31, 8
  %33 = xor i32 %25, %32
  %34 = load i64*, i64** @MD2, align 8
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %36 = load i64, i64* %35, align 16
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = shl i32 %39, 16
  %41 = xor i32 %33, %40
  %42 = load i64*, i64** @MD2, align 8
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = shl i32 %47, 24
  %49 = xor i32 %41, %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load i64*, i64** @MD2, align 8
  %57 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i64*, i64** @MD2, align 8
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = shl i32 %67, 8
  %69 = xor i32 %61, %68
  %70 = load i64*, i64** @MD1, align 8
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = shl i32 %75, 16
  %77 = xor i32 %69, %76
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %80, 24
  %82 = xor i32 %77, %81
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load i64*, i64** @MD1, align 8
  %90 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2
  %91 = load i64, i64* %90, align 16
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i64*, i64** @MD2, align 8
  %96 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2
  %97 = load i64, i64* %96, align 16
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = shl i32 %100, 8
  %102 = xor i32 %94, %101
  %103 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2
  %104 = load i64, i64* %103, align 16
  %105 = trunc i64 %104 to i32
  %106 = shl i32 %105, 16
  %107 = xor i32 %102, %106
  %108 = load i64*, i64** @MD2, align 8
  %109 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2
  %110 = load i64, i64* %109, align 16
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = shl i32 %113, 24
  %115 = xor i32 %107, %114
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %115, i32* %121, align 4
  %122 = load i64*, i64** @MD1, align 8
  %123 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = shl i32 %130, 8
  %132 = xor i32 %127, %131
  %133 = load i64*, i64** @MD2, align 8
  %134 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = shl i32 %138, 16
  %140 = xor i32 %132, %139
  %141 = load i64*, i64** @MD1, align 8
  %142 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = shl i32 %146, 24
  %148 = xor i32 %140, %147
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %148, i32* %154, align 4
  br label %155

155:                                              ; preds = %8
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %4, align 4
  br label %5

158:                                              ; preds = %5
  ret void
}

declare dso_local i32 @tf_h0(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
