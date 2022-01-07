; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_w_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_w_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MpegEncContext = type { i32 }

@w_c.scale = internal constant [2 x [2 x [4 x [4 x i32]]]] [[2 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 268, i32 239, i32 239, i32 213], [4 x i32] [i32 0, i32 224, i32 224, i32 152], [4 x i32] [i32 0, i32 135, i32 135, i32 110], [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 344, i32 310, i32 310, i32 280], [4 x i32] [i32 0, i32 320, i32 320, i32 228], [4 x i32] [i32 0, i32 175, i32 175, i32 136], [4 x i32] [i32 0, i32 129, i32 129, i32 102]]], [2 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 275, i32 245, i32 245, i32 218], [4 x i32] [i32 0, i32 230, i32 230, i32 156], [4 x i32] [i32 0, i32 138, i32 138, i32 113], [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 352, i32 317, i32 317, i32 286], [4 x i32] [i32 0, i32 328, i32 328, i32 233], [4 x i32] [i32 0, i32 180, i32 180, i32 140], [4 x i32] [i32 0, i32 132, i32 132, i32 105]]]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MpegEncContext*, i32*, i32*, i32, i32, i32, i32)* @w_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w_c(%struct.MpegEncContext* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.MpegEncContext*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [1024 x i32], align 16
  %20 = alloca [32 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.MpegEncContext* %0, %struct.MpegEncContext** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 8
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 3, i32 4
  store i32 %31, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %138, %7
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %141

36:                                               ; preds = %32
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %126, %36
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %129

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %43, 0
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 0
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %47, %53
  %55 = shl i32 %54, 4
  %56 = load i32, i32* %16, align 4
  %57 = mul nsw i32 32, %56
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, 0
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [1024 x i32], [1024 x i32]* %19, i64 0, i64 %61
  store i32 %55, i32* %62, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %68, %74
  %76 = shl i32 %75, 4
  %77 = load i32, i32* %16, align 4
  %78 = mul nsw i32 32, %77
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %78, %79
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [1024 x i32], [1024 x i32]* %19, i64 0, i64 %82
  store i32 %76, i32* %83, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %89, %95
  %97 = shl i32 %96, 4
  %98 = load i32, i32* %16, align 4
  %99 = mul nsw i32 32, %98
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %99, %100
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [1024 x i32], [1024 x i32]* %19, i64 0, i64 %103
  store i32 %97, i32* %104, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, 3
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, 3
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %110, %116
  %118 = shl i32 %117, 4
  %119 = load i32, i32* %16, align 4
  %120 = mul nsw i32 32, %119
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %120, %121
  %123 = add nsw i32 %122, 3
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [1024 x i32], [1024 x i32]* %19, i64 0, i64 %124
  store i32 %118, i32* %125, align 4
  br label %126

126:                                              ; preds = %41
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, 4
  store i32 %128, i32* %17, align 4
  br label %37

129:                                              ; preds = %37
  %130 = load i32, i32* %11, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %9, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load i32*, i32** %10, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %10, align 8
  br label %138

138:                                              ; preds = %129
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %16, align 4
  br label %32

141:                                              ; preds = %32
  %142 = getelementptr inbounds [1024 x i32], [1024 x i32]* %19, i64 0, i64 0
  %143 = getelementptr inbounds [32 x i32], [32 x i32]* %20, i64 0, i64 0
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %18, align 4
  %148 = call i32 @ff_spatial_dwt(i32* %142, i32* %143, i32 %144, i32 %145, i32 32, i32 %146, i32 %147)
  store i32 0, i32* %15, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @av_assert1(i32 %152)
  store i32 0, i32* %21, align 4
  br label %154

154:                                              ; preds = %248, %141
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %18, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %251

158:                                              ; preds = %154
  %159 = load i32, i32* %21, align 4
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 1, i32 0
  store i32 %162, i32* %22, align 4
  br label %163

163:                                              ; preds = %244, %158
  %164 = load i32, i32* %22, align 4
  %165 = icmp slt i32 %164, 4
  br i1 %165, label %166, label %247

166:                                              ; preds = %163
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* %21, align 4
  %170 = sub nsw i32 %168, %169
  %171 = ashr i32 %167, %170
  store i32 %171, i32* %23, align 4
  %172 = load i32, i32* %22, align 4
  %173 = and i32 %172, 1
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %166
  %176 = load i32, i32* %23, align 4
  br label %178

177:                                              ; preds = %166
  br label %178

178:                                              ; preds = %177, %175
  %179 = phi i32 [ %176, %175 ], [ 0, %177 ]
  store i32 %179, i32* %24, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load i32, i32* %21, align 4
  %182 = sub nsw i32 %180, %181
  %183 = shl i32 32, %182
  store i32 %183, i32* %25, align 4
  %184 = load i32, i32* %22, align 4
  %185 = and i32 %184, 2
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  %188 = load i32, i32* %25, align 4
  %189 = ashr i32 %188, 1
  br label %191

190:                                              ; preds = %178
  br label %191

191:                                              ; preds = %190, %187
  %192 = phi i32 [ %189, %187 ], [ 0, %190 ]
  store i32 %192, i32* %26, align 4
  store i32 0, i32* %16, align 4
  br label %193

193:                                              ; preds = %240, %191
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %23, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %243

197:                                              ; preds = %193
  store i32 0, i32* %17, align 4
  br label %198

198:                                              ; preds = %236, %197
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* %23, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %239

202:                                              ; preds = %198
  %203 = load i32, i32* %24, align 4
  %204 = load i32, i32* %26, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %25, align 4
  %208 = mul nsw i32 %206, %207
  %209 = add nsw i32 %205, %208
  %210 = load i32, i32* %17, align 4
  %211 = add nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [1024 x i32], [1024 x i32]* %19, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [2 x [2 x [4 x [4 x i32]]]], [2 x [2 x [4 x [4 x i32]]]]* @w_c.scale, i64 0, i64 %216
  %218 = load i32, i32* %18, align 4
  %219 = sub nsw i32 %218, 3
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [2 x [4 x [4 x i32]]], [2 x [4 x [4 x i32]]]* %217, i64 0, i64 %220
  %222 = load i32, i32* %21, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %221, i64 0, i64 %223
  %225 = load i32, i32* %22, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [4 x i32], [4 x i32]* %224, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %214, %228
  store i32 %229, i32* %27, align 4
  %230 = load i32, i32* %27, align 4
  %231 = call i64 @FFABS(i32 %230)
  %232 = load i32, i32* %15, align 4
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %233, %231
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %15, align 4
  br label %236

236:                                              ; preds = %202
  %237 = load i32, i32* %17, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %17, align 4
  br label %198

239:                                              ; preds = %198
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %16, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %16, align 4
  br label %193

243:                                              ; preds = %193
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %22, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %22, align 4
  br label %163

247:                                              ; preds = %163
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %21, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %21, align 4
  br label %154

251:                                              ; preds = %154
  %252 = load i32, i32* %15, align 4
  %253 = icmp sge i32 %252, 0
  %254 = zext i1 %253 to i32
  %255 = call i32 @av_assert1(i32 %254)
  %256 = load i32, i32* %15, align 4
  %257 = ashr i32 %256, 9
  ret i32 %257
}

declare dso_local i32 @ff_spatial_dwt(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i64 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
