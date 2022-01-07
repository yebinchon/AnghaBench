; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_filter.c_copy_CTB_to_hv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_filter.c_copy_CTB_to_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i64*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* @copy_CTB_to_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_CTB_to_hv(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %21, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %35, %45
  store i32 %46, i32* %22, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %18, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %52, %62
  store i32 %63, i32* %23, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %20, align 4
  %72 = mul nsw i32 2, %71
  %73 = load i32, i32* %22, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %21, align 4
  %78 = shl i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %70, %79
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %21, align 4
  %84 = shl i32 %82, %83
  %85 = call i32 @memcpy(i64 %80, i32* %81, i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %20, align 4
  %94 = mul nsw i32 2, %93
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %22, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %21, align 4
  %101 = shl i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %92, %102
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %17, align 4
  %107 = sub nsw i32 %106, 1
  %108 = mul nsw i32 %105, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %104, i64 %109
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %21, align 4
  %113 = shl i32 %111, %112
  %114 = call i32 @memcpy(i64 %103, i32* %110, i32 %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %19, align 4
  %123 = mul nsw i32 2, %122
  %124 = load i32, i32* %23, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %21, align 4
  %129 = shl i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %121, %130
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %21, align 4
  %136 = shl i32 1, %135
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @copy_vert(i64 %131, i32* %132, i32 %133, i32 %134, i32 %136, i32 %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %19, align 4
  %147 = mul nsw i32 2, %146
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* %23, align 4
  %150 = mul nsw i32 %148, %149
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32, i32* %21, align 4
  %154 = shl i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %145, %155
  %157 = load i32*, i32** %12, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sub nsw i32 %158, 1
  %160 = load i32, i32* %21, align 4
  %161 = shl i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %157, i64 %162
  %164 = load i32, i32* %21, align 4
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %21, align 4
  %167 = shl i32 1, %166
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @copy_vert(i64 %156, i32* %163, i32 %164, i32 %165, i32 %167, i32 %168)
  ret void
}

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @copy_vert(i64, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
