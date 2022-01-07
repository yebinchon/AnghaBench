; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_ps.c_decode_scaling_matrices.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_ps.c_decode_scaling_matrices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32**, i32**, i64 }
%struct.TYPE_6__ = type { i64 }

@default_scaling4 = common dso_local global i32** null, align 8
@default_scaling8 = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, %struct.TYPE_6__*, i32, [16 x i32]*, [64 x i32]*)* @decode_scaling_matrices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_scaling_matrices(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2, i32 %3, [16 x i32]* %4, [64 x i32]* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16 x i32]*, align 8
  %12 = alloca [64 x i32]*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32*], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store [16 x i32]* %4, [16 x i32]** %11, align 8
  store [64 x i32]* %5, [64 x i32]** %12, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %6
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %6
  %24 = phi i1 [ false, %6 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = getelementptr inbounds [4 x i32*], [4 x i32*]* %14, i64 0, i64 0
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32**, i32*** %31, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  br label %39

35:                                               ; preds = %23
  %36 = load i32**, i32*** @default_scaling4, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = phi i32* [ %34, %29 ], [ %38, %35 ]
  store i32* %40, i32** %26, align 8
  %41 = getelementptr inbounds i32*, i32** %26, i64 1
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 3
  %49 = load i32*, i32** %48, align 8
  br label %54

50:                                               ; preds = %39
  %51 = load i32**, i32*** @default_scaling4, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  %53 = load i32*, i32** %52, align 8
  br label %54

54:                                               ; preds = %50, %44
  %55 = phi i32* [ %49, %44 ], [ %53, %50 ]
  store i32* %55, i32** %41, align 8
  %56 = getelementptr inbounds i32*, i32** %41, i64 1
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  br label %69

65:                                               ; preds = %54
  %66 = load i32**, i32*** @default_scaling8, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 0
  %68 = load i32*, i32** %67, align 8
  br label %69

69:                                               ; preds = %65, %59
  %70 = phi i32* [ %64, %59 ], [ %68, %65 ]
  store i32* %70, i32** %56, align 8
  %71 = getelementptr inbounds i32*, i32** %56, i64 1
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 3
  %79 = load i32*, i32** %78, align 8
  br label %84

80:                                               ; preds = %69
  %81 = load i32**, i32*** @default_scaling8, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  %83 = load i32*, i32** %82, align 8
  br label %84

84:                                               ; preds = %80, %74
  %85 = phi i32* [ %79, %74 ], [ %83, %80 ]
  store i32* %85, i32** %71, align 8
  store i32 0, i32* %15, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = call i64 @get_bits1(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %262

89:                                               ; preds = %84
  %90 = load i32*, i32** %7, align 8
  %91 = load [16 x i32]*, [16 x i32]** %11, align 8
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %91, i64 0
  %93 = getelementptr inbounds [16 x i32], [16 x i32]* %92, i64 0, i64 0
  %94 = load i32**, i32*** @default_scaling4, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds [4 x i32*], [4 x i32*]* %14, i64 0, i64 0
  %98 = load i32*, i32** %97, align 16
  %99 = call i32 @decode_scaling_list(i32* %90, i32* %93, i32 16, i32* %96, i32* %98)
  %100 = load i32, i32* %15, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %15, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load [16 x i32]*, [16 x i32]** %11, align 8
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %103, i64 1
  %105 = getelementptr inbounds [16 x i32], [16 x i32]* %104, i64 0, i64 0
  %106 = load i32**, i32*** @default_scaling4, align 8
  %107 = getelementptr inbounds i32*, i32** %106, i64 0
  %108 = load i32*, i32** %107, align 8
  %109 = load [16 x i32]*, [16 x i32]** %11, align 8
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %109, i64 0
  %111 = getelementptr inbounds [16 x i32], [16 x i32]* %110, i64 0, i64 0
  %112 = call i32 @decode_scaling_list(i32* %102, i32* %105, i32 16, i32* %108, i32* %111)
  %113 = load i32, i32* %15, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %15, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = load [16 x i32]*, [16 x i32]** %11, align 8
  %117 = getelementptr inbounds [16 x i32], [16 x i32]* %116, i64 2
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* %117, i64 0, i64 0
  %119 = load i32**, i32*** @default_scaling4, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 0
  %121 = load i32*, i32** %120, align 8
  %122 = load [16 x i32]*, [16 x i32]** %11, align 8
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %122, i64 1
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %123, i64 0, i64 0
  %125 = call i32 @decode_scaling_list(i32* %115, i32* %118, i32 16, i32* %121, i32* %124)
  %126 = load i32, i32* %15, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %15, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = load [16 x i32]*, [16 x i32]** %11, align 8
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* %129, i64 3
  %131 = getelementptr inbounds [16 x i32], [16 x i32]* %130, i64 0, i64 0
  %132 = load i32**, i32*** @default_scaling4, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds [4 x i32*], [4 x i32*]* %14, i64 0, i64 1
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @decode_scaling_list(i32* %128, i32* %131, i32 16, i32* %134, i32* %136)
  %138 = load i32, i32* %15, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %15, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = load [16 x i32]*, [16 x i32]** %11, align 8
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %141, i64 4
  %143 = getelementptr inbounds [16 x i32], [16 x i32]* %142, i64 0, i64 0
  %144 = load i32**, i32*** @default_scaling4, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 1
  %146 = load i32*, i32** %145, align 8
  %147 = load [16 x i32]*, [16 x i32]** %11, align 8
  %148 = getelementptr inbounds [16 x i32], [16 x i32]* %147, i64 3
  %149 = getelementptr inbounds [16 x i32], [16 x i32]* %148, i64 0, i64 0
  %150 = call i32 @decode_scaling_list(i32* %140, i32* %143, i32 16, i32* %146, i32* %149)
  %151 = load i32, i32* %15, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %15, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = load [16 x i32]*, [16 x i32]** %11, align 8
  %155 = getelementptr inbounds [16 x i32], [16 x i32]* %154, i64 5
  %156 = getelementptr inbounds [16 x i32], [16 x i32]* %155, i64 0, i64 0
  %157 = load i32**, i32*** @default_scaling4, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 1
  %159 = load i32*, i32** %158, align 8
  %160 = load [16 x i32]*, [16 x i32]** %11, align 8
  %161 = getelementptr inbounds [16 x i32], [16 x i32]* %160, i64 4
  %162 = getelementptr inbounds [16 x i32], [16 x i32]* %161, i64 0, i64 0
  %163 = call i32 @decode_scaling_list(i32* %153, i32* %156, i32 16, i32* %159, i32* %162)
  %164 = load i32, i32* %15, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %89
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %256

173:                                              ; preds = %168, %89
  %174 = load i32*, i32** %7, align 8
  %175 = load [64 x i32]*, [64 x i32]** %12, align 8
  %176 = getelementptr inbounds [64 x i32], [64 x i32]* %175, i64 0
  %177 = getelementptr inbounds [64 x i32], [64 x i32]* %176, i64 0, i64 0
  %178 = load i32**, i32*** @default_scaling8, align 8
  %179 = getelementptr inbounds i32*, i32** %178, i64 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds [4 x i32*], [4 x i32*]* %14, i64 0, i64 2
  %182 = load i32*, i32** %181, align 16
  %183 = call i32 @decode_scaling_list(i32* %174, i32* %177, i32 64, i32* %180, i32* %182)
  %184 = load i32, i32* %15, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %15, align 4
  %186 = load i32*, i32** %7, align 8
  %187 = load [64 x i32]*, [64 x i32]** %12, align 8
  %188 = getelementptr inbounds [64 x i32], [64 x i32]* %187, i64 3
  %189 = getelementptr inbounds [64 x i32], [64 x i32]* %188, i64 0, i64 0
  %190 = load i32**, i32*** @default_scaling8, align 8
  %191 = getelementptr inbounds i32*, i32** %190, i64 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds [4 x i32*], [4 x i32*]* %14, i64 0, i64 3
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @decode_scaling_list(i32* %186, i32* %189, i32 64, i32* %192, i32* %194)
  %196 = load i32, i32* %15, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %15, align 4
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 3
  br i1 %201, label %202, label %255

202:                                              ; preds = %173
  %203 = load i32*, i32** %7, align 8
  %204 = load [64 x i32]*, [64 x i32]** %12, align 8
  %205 = getelementptr inbounds [64 x i32], [64 x i32]* %204, i64 1
  %206 = getelementptr inbounds [64 x i32], [64 x i32]* %205, i64 0, i64 0
  %207 = load i32**, i32*** @default_scaling8, align 8
  %208 = getelementptr inbounds i32*, i32** %207, i64 0
  %209 = load i32*, i32** %208, align 8
  %210 = load [64 x i32]*, [64 x i32]** %12, align 8
  %211 = getelementptr inbounds [64 x i32], [64 x i32]* %210, i64 0
  %212 = getelementptr inbounds [64 x i32], [64 x i32]* %211, i64 0, i64 0
  %213 = call i32 @decode_scaling_list(i32* %203, i32* %206, i32 64, i32* %209, i32* %212)
  %214 = load i32, i32* %15, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %15, align 4
  %216 = load i32*, i32** %7, align 8
  %217 = load [64 x i32]*, [64 x i32]** %12, align 8
  %218 = getelementptr inbounds [64 x i32], [64 x i32]* %217, i64 4
  %219 = getelementptr inbounds [64 x i32], [64 x i32]* %218, i64 0, i64 0
  %220 = load i32**, i32*** @default_scaling8, align 8
  %221 = getelementptr inbounds i32*, i32** %220, i64 1
  %222 = load i32*, i32** %221, align 8
  %223 = load [64 x i32]*, [64 x i32]** %12, align 8
  %224 = getelementptr inbounds [64 x i32], [64 x i32]* %223, i64 3
  %225 = getelementptr inbounds [64 x i32], [64 x i32]* %224, i64 0, i64 0
  %226 = call i32 @decode_scaling_list(i32* %216, i32* %219, i32 64, i32* %222, i32* %225)
  %227 = load i32, i32* %15, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %15, align 4
  %229 = load i32*, i32** %7, align 8
  %230 = load [64 x i32]*, [64 x i32]** %12, align 8
  %231 = getelementptr inbounds [64 x i32], [64 x i32]* %230, i64 2
  %232 = getelementptr inbounds [64 x i32], [64 x i32]* %231, i64 0, i64 0
  %233 = load i32**, i32*** @default_scaling8, align 8
  %234 = getelementptr inbounds i32*, i32** %233, i64 0
  %235 = load i32*, i32** %234, align 8
  %236 = load [64 x i32]*, [64 x i32]** %12, align 8
  %237 = getelementptr inbounds [64 x i32], [64 x i32]* %236, i64 1
  %238 = getelementptr inbounds [64 x i32], [64 x i32]* %237, i64 0, i64 0
  %239 = call i32 @decode_scaling_list(i32* %229, i32* %232, i32 64, i32* %235, i32* %238)
  %240 = load i32, i32* %15, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %15, align 4
  %242 = load i32*, i32** %7, align 8
  %243 = load [64 x i32]*, [64 x i32]** %12, align 8
  %244 = getelementptr inbounds [64 x i32], [64 x i32]* %243, i64 5
  %245 = getelementptr inbounds [64 x i32], [64 x i32]* %244, i64 0, i64 0
  %246 = load i32**, i32*** @default_scaling8, align 8
  %247 = getelementptr inbounds i32*, i32** %246, i64 1
  %248 = load i32*, i32** %247, align 8
  %249 = load [64 x i32]*, [64 x i32]** %12, align 8
  %250 = getelementptr inbounds [64 x i32], [64 x i32]* %249, i64 4
  %251 = getelementptr inbounds [64 x i32], [64 x i32]* %250, i64 0, i64 0
  %252 = call i32 @decode_scaling_list(i32* %242, i32* %245, i32 64, i32* %248, i32* %251)
  %253 = load i32, i32* %15, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %15, align 4
  br label %255

255:                                              ; preds = %202, %173
  br label %256

256:                                              ; preds = %255, %168
  %257 = load i32, i32* %15, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %256
  %260 = load i32, i32* %10, align 4
  store i32 %260, i32* %15, align 4
  br label %261

261:                                              ; preds = %259, %256
  br label %262

262:                                              ; preds = %261, %84
  %263 = load i32, i32* %15, align 4
  ret i32 %263
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @decode_scaling_list(i32*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
