; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_maskedclamp.c_maskedclamp_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_maskedclamp.c_maskedclamp_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32*, i32*, i32, i32, i32, %struct.TYPE_14__, i32* }
%struct.TYPE_14__ = type { i32 (i32*, i32*, i32*, i32*, i32, i32, i32)* }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32*, i32** }
%struct.TYPE_12__ = type { i32*, i32** }
%struct.TYPE_11__ = type { i32*, i32** }
%struct.TYPE_10__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32, i32)* @maskedclamp_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maskedclamp_slice(%struct.TYPE_17__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %9, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %224, %4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %227

38:                                               ; preds = %32
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %14, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %15, align 4
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %16, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = sdiv i32 %91, %92
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  %97 = mul nsw i32 %94, %96
  %98 = load i32, i32* %8, align 4
  %99 = sdiv i32 %97, %98
  store i32 %99, i32* %19, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %12, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  store i32* %113, i32** %20, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %14, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  store i32* %127, i32** %21, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32**, i32*** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %13, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  store i32* %141, i32** %22, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %15, align 4
  %153 = mul nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  store i32* %155, i32** %23, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %24, align 4
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %25, align 4
  %162 = load i32, i32* %11, align 4
  %163 = shl i32 1, %162
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %163, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %185, label %169

169:                                              ; preds = %38
  %170 = load i32*, i32** %23, align 8
  %171 = load i32, i32* %15, align 4
  %172 = load i32*, i32** %20, align 8
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 7
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %18, align 4
  %183 = sub nsw i32 %181, %182
  %184 = call i32 @av_image_copy_plane(i32* %170, i32 %171, i32* %172, i32 %173, i32 %180, i32 %183)
  br label %224

185:                                              ; preds = %38
  %186 = load i32, i32* %18, align 4
  store i32 %186, i32* %26, align 4
  br label %187

187:                                              ; preds = %220, %185
  %188 = load i32, i32* %26, align 4
  %189 = load i32, i32* %19, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %223

191:                                              ; preds = %187
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 6
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i32 (i32*, i32*, i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32, i32)** %194, align 8
  %196 = load i32*, i32** %20, align 8
  %197 = load i32*, i32** %23, align 8
  %198 = load i32*, i32** %21, align 8
  %199 = load i32*, i32** %22, align 8
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* %24, align 4
  %202 = load i32, i32* %25, align 4
  %203 = call i32 %195(i32* %196, i32* %197, i32* %198, i32* %199, i32 %200, i32 %201, i32 %202)
  %204 = load i32, i32* %15, align 4
  %205 = load i32*, i32** %23, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32* %207, i32** %23, align 8
  %208 = load i32, i32* %12, align 4
  %209 = load i32*, i32** %20, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  store i32* %211, i32** %20, align 8
  %212 = load i32, i32* %14, align 4
  %213 = load i32*, i32** %21, align 8
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  store i32* %215, i32** %21, align 8
  %216 = load i32, i32* %13, align 4
  %217 = load i32*, i32** %22, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32* %219, i32** %22, align 8
  br label %220

220:                                              ; preds = %191
  %221 = load i32, i32* %26, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %26, align 4
  br label %187

223:                                              ; preds = %187
  br label %224

224:                                              ; preds = %223, %169
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %11, align 4
  br label %32

227:                                              ; preds = %32
  ret i32 0
}

declare dso_local i32 @av_image_copy_plane(i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
