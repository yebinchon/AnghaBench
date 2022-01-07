; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__create_png_image.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__create_png_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@__const.stbi__create_png_image.xorig = private unnamed_addr constant [7 x i32] [i32 0, i32 4, i32 0, i32 2, i32 0, i32 1, i32 0], align 16
@__const.stbi__create_png_image.yorig = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 4, i32 0, i32 2, i32 0, i32 1], align 16
@__const.stbi__create_png_image.xspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 4, i32 4, i32 2, i32 2, i32 1], align 16
@__const.stbi__create_png_image.yspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 8, i32 4, i32 4, i32 2, i32 2], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32)* @stbi__create_png_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__create_png_image(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [7 x i32], align 16
  %21 = alloca [7 x i32], align 16
  %22 = alloca [7 x i32], align 16
  %23 = alloca [7 x i32], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp eq i32 %31, 16
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 1
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %16, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %7
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @stbi__create_png_image_raw(%struct.TYPE_6__* %41, i32* %42, i32 %43, i32 %44, i32 %49, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %246

58:                                               ; preds = %7
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i64 @stbi__malloc_mad3(i32 %63, i32 %68, i32 %69, i32 0)
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %18, align 8
  store i32 0, i32* %19, align 4
  br label %72

72:                                               ; preds = %239, %58
  %73 = load i32, i32* %19, align 4
  %74 = icmp slt i32 %73, 7
  br i1 %74, label %75, label %242

75:                                               ; preds = %72
  %76 = bitcast [7 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %76, i8* align 16 bitcast ([7 x i32]* @__const.stbi__create_png_image.xorig to i8*), i64 28, i1 false)
  %77 = bitcast [7 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %77, i8* align 16 bitcast ([7 x i32]* @__const.stbi__create_png_image.yorig to i8*), i64 28, i1 false)
  %78 = bitcast [7 x i32]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %78, i8* align 16 bitcast ([7 x i32]* @__const.stbi__create_png_image.xspc to i8*), i64 28, i1 false)
  %79 = bitcast [7 x i32]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %79, i8* align 16 bitcast ([7 x i32]* @__const.stbi__create_png_image.yspc to i8*), i64 28, i1 false)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %84, %88
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [7 x i32], [7 x i32]* %22, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %89, %93
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %19, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [7 x i32], [7 x i32]* %22, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %95, %99
  store i32 %100, i32* %26, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %19, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [7 x i32], [7 x i32]* %21, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %105, %109
  %111 = load i32, i32* %19, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [7 x i32], [7 x i32]* %23, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %110, %114
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [7 x i32], [7 x i32]* %23, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %116, %120
  store i32 %121, i32* %27, align 4
  %122 = load i32, i32* %26, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %238

124:                                              ; preds = %75
  %125 = load i32, i32* %27, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %238

127:                                              ; preds = %124
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %26, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* %13, align 4
  %136 = mul nsw i32 %134, %135
  %137 = add nsw i32 %136, 7
  %138 = ashr i32 %137, 3
  %139 = add nsw i32 %138, 1
  %140 = load i32, i32* %27, align 4
  %141 = mul nsw i32 %139, %140
  store i32 %141, i32* %28, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %27, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @stbi__create_png_image_raw(%struct.TYPE_6__* %142, i32* %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %127
  %153 = load i32*, i32** %18, align 8
  %154 = call i32 @STBI_FREE(i32* %153)
  store i32 0, i32* %8, align 4
  br label %246

155:                                              ; preds = %127
  store i32 0, i32* %25, align 4
  br label %156

156:                                              ; preds = %223, %155
  %157 = load i32, i32* %25, align 4
  %158 = load i32, i32* %27, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %226

160:                                              ; preds = %156
  store i32 0, i32* %24, align 4
  br label %161

161:                                              ; preds = %219, %160
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* %26, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %222

165:                                              ; preds = %161
  %166 = load i32, i32* %25, align 4
  %167 = load i32, i32* %19, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [7 x i32], [7 x i32]* %23, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %166, %170
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [7 x i32], [7 x i32]* %21, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %171, %175
  store i32 %176, i32* %29, align 4
  %177 = load i32, i32* %24, align 4
  %178 = load i32, i32* %19, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [7 x i32], [7 x i32]* %22, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = mul nsw i32 %177, %181
  %183 = load i32, i32* %19, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %182, %186
  store i32 %187, i32* %30, align 4
  %188 = load i32*, i32** %18, align 8
  %189 = load i32, i32* %29, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %189, %194
  %196 = load i32, i32* %17, align 4
  %197 = mul nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %188, i64 %198
  %200 = load i32, i32* %30, align 4
  %201 = load i32, i32* %17, align 4
  %202 = mul nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %199, i64 %203
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %25, align 4
  %209 = load i32, i32* %26, align 4
  %210 = mul nsw i32 %208, %209
  %211 = load i32, i32* %24, align 4
  %212 = add nsw i32 %210, %211
  %213 = load i32, i32* %17, align 4
  %214 = mul nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %207, i64 %215
  %217 = load i32, i32* %17, align 4
  %218 = call i32 @memcpy(i32* %204, i32* %216, i32 %217)
  br label %219

219:                                              ; preds = %165
  %220 = load i32, i32* %24, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %24, align 4
  br label %161

222:                                              ; preds = %161
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %25, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %25, align 4
  br label %156

226:                                              ; preds = %156
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @STBI_FREE(i32* %229)
  %231 = load i32, i32* %28, align 4
  %232 = load i32*, i32** %10, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %10, align 8
  %235 = load i32, i32* %28, align 4
  %236 = load i32, i32* %11, align 4
  %237 = sub nsw i32 %236, %235
  store i32 %237, i32* %11, align 4
  br label %238

238:                                              ; preds = %226, %124, %75
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %19, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %19, align 4
  br label %72

242:                                              ; preds = %72
  %243 = load i32*, i32** %18, align 8
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  store i32* %243, i32** %245, align 8
  store i32 1, i32* %8, align 4
  br label %246

246:                                              ; preds = %242, %152, %40
  %247 = load i32, i32* %8, align 4
  ret i32 %247
}

declare dso_local i32 @stbi__create_png_image_raw(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @stbi__malloc_mad3(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @STBI_FREE(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
