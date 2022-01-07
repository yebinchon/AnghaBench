; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudioenc_template.c_compute_scale_factors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudioenc_template.c_compute_scale_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@SBLIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%2d:%d in=%x %x %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%d: %2d %2d %2d %d %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, [3 x i8]*, i32*, i32)* @compute_scale_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_scale_factors(%struct.TYPE_3__* %0, i8* %1, [3 x i8]* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i8]*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store [3 x i8]* %2, [3 x i8]** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load i32, i32* @SBLIMIT, align 4
  %24 = zext i32 %23 to i64
  %25 = load i32, i32* @SBLIMIT, align 4
  %26 = zext i32 %25 to i64
  %27 = load i32, i32* @SBLIMIT, align 4
  %28 = zext i32 %27 to i64
  %29 = load [3 x i8]*, [3 x i8]** %8, align 8
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %29, i64 0
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %30, i64 0, i64 0
  store i8* %31, i8** %22, align 8
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %269, %5
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %272

36:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %137, %36
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %40, label %140

40:                                               ; preds = %37
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = mul nuw i64 12, %28
  %45 = mul nsw i64 %43, %44
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = mul nsw i64 0, %28
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @abs(i32 %53) #3
  store i32 %54, i32* %12, align 4
  store i32 1, i32* %17, align 4
  br label %55

55:                                               ; preds = %72, %40
  %56 = load i32, i32* %17, align 4
  %57 = icmp slt i32 %56, 12
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i32, i32* @SBLIMIT, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @abs(i32 %64) #3
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %69, %58
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %17, align 4
  br label %55

75:                                               ; preds = %55
  %76 = load i32, i32* %12, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %105

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @av_log2(i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = sub nsw i32 21, %81
  %83 = mul nsw i32 %82, 3
  %84 = sub nsw i32 %83, 3
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %99, %87
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %19, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp sle i32 %89, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load i32, i32* %19, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %19, align 4
  br label %88

102:                                              ; preds = %88
  br label %104

103:                                              ; preds = %78
  store i32 0, i32* %19, align 4
  br label %104

104:                                              ; preds = %103, %102
  br label %106

105:                                              ; preds = %75
  store i32 62, i32* %19, align 4
  br label %106

106:                                              ; preds = %105, %104
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %15, align 4
  %109 = trunc i32 %108 to i8
  %110 = load i32, i32* %12, align 4
  %111 = trunc i32 %110 to i8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = trunc i32 %118 to i8
  %120 = load i32, i32* %19, align 4
  %121 = call i32 (i32*, i8*, i32, i8, i8, i8, i32, ...) @ff_dlog(i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %107, i8 zeroext %109, i8 zeroext %111, i8 zeroext %119, i32 %120)
  %122 = load i32, i32* %19, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %106
  %125 = load i32, i32* %19, align 4
  %126 = icmp sle i32 %125, 63
  br label %127

127:                                              ; preds = %124, %106
  %128 = phi i1 [ false, %106 ], [ %126, %124 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @av_assert2(i32 %129)
  %131 = load i32, i32* %19, align 4
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %22, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 %132, i8* %136, align 1
  br label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  br label %37

140:                                              ; preds = %37
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i8*, i8** %22, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8*, i8** %22, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = sub nsw i32 %147, %151
  %153 = add nsw i32 %152, 64
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %143, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %20, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i8*, i8** %22, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = load i8*, i8** %22, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 2
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = sub nsw i32 %163, %167
  %169 = add nsw i32 %168, 64
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %159, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %21, align 4
  %173 = load i32, i32* %20, align 4
  %174 = mul nsw i32 %173, 5
  %175 = load i32, i32* %21, align 4
  %176 = add nsw i32 %174, %175
  switch i32 %176, label %244 [
    i32 0, label %177
    i32 4, label %177
    i32 19, label %177
    i32 20, label %177
    i32 24, label %177
    i32 1, label %178
    i32 2, label %178
    i32 21, label %178
    i32 22, label %178
    i32 3, label %184
    i32 23, label %184
    i32 5, label %190
    i32 9, label %190
    i32 14, label %190
    i32 6, label %196
    i32 7, label %196
    i32 10, label %196
    i32 11, label %196
    i32 12, label %196
    i32 13, label %204
    i32 18, label %204
    i32 15, label %212
    i32 16, label %212
    i32 17, label %212
    i32 8, label %220
  ]

177:                                              ; preds = %140, %140, %140, %140, %140
  store i32 0, i32* %18, align 4
  br label %246

178:                                              ; preds = %140, %140, %140, %140
  store i32 3, i32* %18, align 4
  %179 = load i8*, i8** %22, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  %181 = load i8, i8* %180, align 1
  %182 = load i8*, i8** %22, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 2
  store i8 %181, i8* %183, align 1
  br label %246

184:                                              ; preds = %140, %140
  store i32 3, i32* %18, align 4
  %185 = load i8*, i8** %22, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 2
  %187 = load i8, i8* %186, align 1
  %188 = load i8*, i8** %22, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  store i8 %187, i8* %189, align 1
  br label %246

190:                                              ; preds = %140, %140, %140
  store i32 1, i32* %18, align 4
  %191 = load i8*, i8** %22, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 0
  %193 = load i8, i8* %192, align 1
  %194 = load i8*, i8** %22, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  store i8 %193, i8* %195, align 1
  br label %246

196:                                              ; preds = %140, %140, %140, %140, %140
  store i32 2, i32* %18, align 4
  %197 = load i8*, i8** %22, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = load i8*, i8** %22, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 2
  store i8 %199, i8* %201, align 1
  %202 = load i8*, i8** %22, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  store i8 %199, i8* %203, align 1
  br label %246

204:                                              ; preds = %140, %140
  store i32 2, i32* %18, align 4
  %205 = load i8*, i8** %22, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 2
  %207 = load i8, i8* %206, align 1
  %208 = load i8*, i8** %22, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  store i8 %207, i8* %209, align 1
  %210 = load i8*, i8** %22, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 0
  store i8 %207, i8* %211, align 1
  br label %246

212:                                              ; preds = %140, %140, %140
  store i32 2, i32* %18, align 4
  %213 = load i8*, i8** %22, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  %215 = load i8, i8* %214, align 1
  %216 = load i8*, i8** %22, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  store i8 %215, i8* %217, align 1
  %218 = load i8*, i8** %22, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 0
  store i8 %215, i8* %219, align 1
  br label %246

220:                                              ; preds = %140
  store i32 2, i32* %18, align 4
  %221 = load i8*, i8** %22, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 0
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = load i8*, i8** %22, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 2
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = icmp sgt i32 %224, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %220
  %231 = load i8*, i8** %22, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 2
  %233 = load i8, i8* %232, align 1
  %234 = load i8*, i8** %22, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 0
  store i8 %233, i8* %235, align 1
  br label %236

236:                                              ; preds = %230, %220
  %237 = load i8*, i8** %22, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 0
  %239 = load i8, i8* %238, align 1
  %240 = load i8*, i8** %22, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 2
  store i8 %239, i8* %241, align 1
  %242 = load i8*, i8** %22, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 1
  store i8 %239, i8* %243, align 1
  br label %246

244:                                              ; preds = %140
  %245 = call i32 @av_assert2(i32 0)
  store i32 0, i32* %18, align 4
  br label %246

246:                                              ; preds = %244, %236, %212, %204, %196, %190, %184, %178, %177
  %247 = load i32, i32* %16, align 4
  %248 = load i8*, i8** %22, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 0
  %250 = load i8, i8* %249, align 1
  %251 = load i8*, i8** %22, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 1
  %253 = load i8, i8* %252, align 1
  %254 = load i8*, i8** %22, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 2
  %256 = load i8, i8* %255, align 1
  %257 = load i32, i32* %20, align 4
  %258 = load i32, i32* %21, align 4
  %259 = load i32, i32* %18, align 4
  %260 = call i32 (i32*, i8*, i32, i8, i8, i8, i32, ...) @ff_dlog(i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %247, i8 zeroext %250, i8 zeroext %253, i8 zeroext %256, i32 %257, i32 %258, i32 %259)
  %261 = load i32, i32* %18, align 4
  %262 = trunc i32 %261 to i8
  %263 = load i8*, i8** %7, align 8
  %264 = load i32, i32* %16, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  store i8 %262, i8* %266, align 1
  %267 = load i8*, i8** %22, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 3
  store i8* %268, i8** %22, align 8
  br label %269

269:                                              ; preds = %246
  %270 = load i32, i32* %16, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %16, align 4
  br label %32

272:                                              ; preds = %32
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @av_log2(i32) #2

declare dso_local i32 @ff_dlog(i32*, i8*, i32, i8 zeroext, i8 zeroext, i8 zeroext, i32, ...) #2

declare dso_local i32 @av_assert2(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
