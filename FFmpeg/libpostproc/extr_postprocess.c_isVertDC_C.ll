; ModuleID = '/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_isVertDC_C.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_isVertDC_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, %struct.TYPE_5__*)* @isVertDC_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isVertDC_C(i64* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %13, %17
  %19 = ashr i32 %18, 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, 4
  %26 = load i64*, i64** %4, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64* %28, i64** %4, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %191, %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @BLOCK_SIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %194

34:                                               ; preds = %29
  %35 = load i64*, i64** %4, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 0, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %37, %43
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %10, align 4
  %50 = icmp ult i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i64*, i64** %4, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 1, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %56, %62
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %10, align 4
  %69 = icmp ult i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i64*, i64** %4, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 2, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %75, %81
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %10, align 4
  %88 = icmp ult i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load i64*, i64** %4, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 3, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %94, %100
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* %10, align 4
  %107 = icmp ult i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load i64*, i64** %4, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 4, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %114, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %113, %119
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* %10, align 4
  %126 = icmp ult i32 %124, %125
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %7, align 4
  %130 = load i64*, i64** %4, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 5
  %132 = load i64, i64* %131, align 8
  %133 = load i64*, i64** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 5, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %133, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %132, %138
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %139, %141
  %143 = trunc i64 %142 to i32
  %144 = load i32, i32* %10, align 4
  %145 = icmp ult i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %7, align 4
  %149 = load i64*, i64** %4, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 6
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 6, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %152, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = sub nsw i64 %151, %157
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %158, %160
  %162 = trunc i64 %161 to i32
  %163 = load i32, i32* %10, align 4
  %164 = icmp ult i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %7, align 4
  %168 = load i64*, i64** %4, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 7
  %170 = load i64, i64* %169, align 8
  %171 = load i64*, i64** %4, align 8
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 7, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %171, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = sub nsw i64 %170, %176
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %177, %179
  %181 = trunc i64 %180 to i32
  %182 = load i32, i32* %10, align 4
  %183 = icmp ult i32 %181, %182
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %5, align 4
  %188 = load i64*, i64** %4, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  store i64* %190, i64** %4, align 8
  br label %191

191:                                              ; preds = %34
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %29

194:                                              ; preds = %29
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp sgt i32 %195, %199
  %201 = zext i1 %200 to i32
  ret i32 %201
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
