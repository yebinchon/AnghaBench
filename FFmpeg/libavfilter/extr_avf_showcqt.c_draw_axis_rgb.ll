; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_draw_axis_rgb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_draw_axis_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32**, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { float, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32)* @draw_axis_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_axis_rgb(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  store float 0x3F70101020000000, float* %14, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %200, %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %203

27:                                               ; preds = %23
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32**, i32*** %29, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %33, %34
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %35, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %32, i64 %42
  store i32* %43, i32** %15, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %49, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %48, i64 %56
  store i32* %57, i32** %16, align 8
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %196, %27
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %199

62:                                               ; preds = %58
  %63 = load i32*, i32** %16, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %101, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load float, float* %73, align 4
  %75 = call i8* @lrintf(float %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32*, i32** %15, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %15, align 8
  store i32 %76, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load float, float* %84, align 4
  %86 = call i8* @lrintf(float %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32*, i32** %15, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %15, align 8
  store i32 %87, i32* %88, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load float, float* %95, align 4
  %97 = call i8* @lrintf(float %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load i32*, i32** %15, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %15, align 8
  store i32 %98, i32* %99, align 4
  br label %193

101:                                              ; preds = %62
  %102 = load i32*, i32** %16, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 255
  br i1 %105, label %106, label %122

106:                                              ; preds = %101
  %107 = load i32*, i32** %16, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %15, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %15, align 8
  store i32 %109, i32* %110, align 4
  %112 = load i32*, i32** %16, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %15, align 8
  store i32 %114, i32* %115, align 4
  %117 = load i32*, i32** %16, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %15, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %15, align 8
  store i32 %119, i32* %120, align 4
  br label %192

122:                                              ; preds = %101
  %123 = load float, float* %14, align 4
  %124 = load i32*, i32** %16, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = sitofp i32 %126 to float
  %128 = fmul float %123, %127
  store float %128, float* %13, align 4
  %129 = load float, float* %13, align 4
  %130 = load i32*, i32** %16, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = sitofp i32 %132 to float
  %134 = fmul float %129, %133
  %135 = load float, float* %13, align 4
  %136 = fsub float 1.000000e+00, %135
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load float, float* %142, align 4
  %144 = fmul float %136, %143
  %145 = fadd float %134, %144
  %146 = call i8* @lrintf(float %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load i32*, i32** %15, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %15, align 8
  store i32 %147, i32* %148, align 4
  %150 = load float, float* %13, align 4
  %151 = load i32*, i32** %16, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = sitofp i32 %153 to float
  %155 = fmul float %150, %154
  %156 = load float, float* %13, align 4
  %157 = fsub float 1.000000e+00, %156
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load float, float* %163, align 4
  %165 = fmul float %157, %164
  %166 = fadd float %155, %165
  %167 = call i8* @lrintf(float %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load i32*, i32** %15, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %15, align 8
  store i32 %168, i32* %169, align 4
  %171 = load float, float* %13, align 4
  %172 = load i32*, i32** %16, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = load i32, i32* %173, align 4
  %175 = sitofp i32 %174 to float
  %176 = fmul float %171, %175
  %177 = load float, float* %13, align 4
  %178 = fsub float 1.000000e+00, %177
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 2
  %185 = load float, float* %184, align 4
  %186 = fmul float %178, %185
  %187 = fadd float %176, %186
  %188 = call i8* @lrintf(float %187)
  %189 = ptrtoint i8* %188 to i32
  %190 = load i32*, i32** %15, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %15, align 8
  store i32 %189, i32* %190, align 4
  br label %192

192:                                              ; preds = %122, %106
  br label %193

193:                                              ; preds = %192, %67
  %194 = load i32*, i32** %16, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 4
  store i32* %195, i32** %16, align 8
  br label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  br label %58

199:                                              ; preds = %58
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %10, align 4
  br label %23

203:                                              ; preds = %23
  ret void
}

declare dso_local i8* @lrintf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
