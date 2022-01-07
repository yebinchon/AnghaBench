; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lagfun.c_lagfun_frame8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lagfun.c_lagfun_frame8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { float, i32, i32*, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { float**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i32)* @lagfun_frame8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lagfun_frame8(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %9, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load float, float* %27, align 8
  store float %28, float* %10, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %11, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %12, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %13, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %232, %4
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %235

46:                                               ; preds = %40
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %16, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  %67 = mul nsw i32 %64, %66
  %68 = load i32, i32* %8, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %17, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load float**, float*** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float*, float** %72, i64 %74
  %76 = load float*, float** %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %77, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %76, i64 %86
  store float* %87, float** %18, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load float**, float*** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float*, float** %90, i64 %92
  %94 = load float*, float** %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %95, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %94, i64 %104
  store float* %105, float** %19, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load float**, float*** %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float*, float** %108, i64 %110
  %112 = load float*, float** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %113, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %112, i64 %122
  store float* %123, float** %20, align 8
  %124 = load i32, i32* %15, align 4
  %125 = shl i32 1, %124
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %159, label %131

131:                                              ; preds = %46
  %132 = load float*, float** %20, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load float*, float** %18, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %16, align 4
  %157 = sub nsw i32 %155, %156
  %158 = call i32 @av_image_copy_plane(float* %132, i32 %139, float* %140, i32 %147, i32 %154, i32 %157)
  br label %232

159:                                              ; preds = %46
  %160 = load i32, i32* %16, align 4
  store i32 %160, i32* %21, align 4
  br label %161

161:                                              ; preds = %228, %159
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %231

165:                                              ; preds = %161
  store i32 0, i32* %22, align 4
  br label %166

166:                                              ; preds = %194, %165
  %167 = load i32, i32* %22, align 4
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %167, %174
  br i1 %175, label %176, label %197

176:                                              ; preds = %166
  %177 = load float*, float** %18, align 8
  %178 = load i32, i32* %22, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  %181 = load float, float* %180, align 4
  %182 = load float*, float** %19, align 8
  %183 = load i32, i32* %22, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %182, i64 %184
  %186 = load float, float* %185, align 4
  %187 = load float, float* %10, align 4
  %188 = fmul float %186, %187
  %189 = call float @FFMAX(float %181, float %188)
  %190 = load float*, float** %20, align 8
  %191 = load i32, i32* %22, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %190, i64 %192
  store float %189, float* %193, align 4
  br label %194

194:                                              ; preds = %176
  %195 = load i32, i32* %22, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %22, align 4
  br label %166

197:                                              ; preds = %166
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load float*, float** %18, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds float, float* %205, i64 %206
  store float* %207, float** %18, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %15, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load float*, float** %19, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds float, float* %215, i64 %216
  store float* %217, float** %19, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load float*, float** %20, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds float, float* %225, i64 %226
  store float* %227, float** %20, align 8
  br label %228

228:                                              ; preds = %197
  %229 = load i32, i32* %21, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %21, align 4
  br label %161

231:                                              ; preds = %161
  br label %232

232:                                              ; preds = %231, %131
  %233 = load i32, i32* %15, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %15, align 4
  br label %40

235:                                              ; preds = %40
  ret i32 0
}

declare dso_local i32 @av_image_copy_plane(float*, i32, float*, i32, i32, i32) #1

declare dso_local float @FFMAX(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
