; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp6.c_vp6_parse_coeff_huffman.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp6.c_vp6_parse_coeff_huffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64*, i32, i32**, i32*, %struct.TYPE_10__***, i32, i8***, %struct.TYPE_7__*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@FF_HUFFMAN_BITS = common dso_local global i32 0, align 4
@ff_vp56_coeff_bias = common dso_local global i32* null, align 8
@vp6_coeff_groups = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @vp6_parse_coeff_huffman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp6_parse_coeff_huffman(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 9
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %4, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %5, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %263, %1
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 6
  br i1 %26, label %27, label %266

27:                                               ; preds = %24
  store i32 0, i32* %14, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 3
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %13, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 %36
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %6, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %227, %31
  store i32 1, i32* %15, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %71

41:                                               ; preds = %38
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 6
  %44 = load i8***, i8**** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8**, i8*** %44, i64 %46
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %41
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 6
  %57 = load i8***, i8**** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8**, i8*** %57, i64 %59
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 -1
  store i8* %66, i8** %64, align 8
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %249

70:                                               ; preds = %54
  br label %220

71:                                               ; preds = %41, %38
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 5
  %74 = call i64 @get_bits_left(i32* %73)
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %77, i32* %2, align 4
  br label %267

78:                                               ; preds = %71
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FF_HUFFMAN_BITS, align 4
  %85 = call i32 @get_vlc2(i32* %80, i32 %83, i32 %84, i32 3)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %132

88:                                               ; preds = %78
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = icmp sge i32 %92, 6
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %16, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 7
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @FF_HUFFMAN_BITS, align 4
  %106 = call i32 @get_vlc2(i32* %96, i32 %104, i32 %105, i32 3)
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp sge i32 %109, 9
  br i1 %110, label %111, label %119

111:                                              ; preds = %91
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 5
  %114 = call i64 @get_bits(i32* %113, i32 6)
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %111, %91
  br label %131

120:                                              ; preds = %88
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = call i8* @vp6_get_nb_null(%struct.TYPE_9__* %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 6
  %125 = load i8***, i8**** %124, align 8
  %126 = getelementptr inbounds i8**, i8*** %125, i64 0
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  store i8* %122, i8** %130, align 8
  br label %131

131:                                              ; preds = %120, %119
  store i32 0, i32* %14, align 4
  br label %219

132:                                              ; preds = %78
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 %133, 11
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = load i32, i32* %9, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %140 = call i8* @vp6_get_nb_null(%struct.TYPE_9__* %139)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 6
  %143 = load i8***, i8**** %142, align 8
  %144 = getelementptr inbounds i8**, i8*** %143, i64 1
  %145 = load i8**, i8*** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  store i8* %140, i8** %148, align 8
  br label %149

149:                                              ; preds = %138, %135
  br label %249

150:                                              ; preds = %132
  %151 = load i32*, i32** @ff_vp56_coeff_bias, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp sgt i32 %156, 4
  br i1 %157, label %158, label %174

158:                                              ; preds = %150
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 5
  %161 = load i32, i32* %7, align 4
  %162 = icmp sle i32 %161, 9
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 %164, 4
  br label %167

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166, %163
  %168 = phi i32 [ %165, %163 ], [ 11, %166 ]
  %169 = call i64 @get_bits(i32* %160, i32 %168)
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %17, align 4
  br label %174

174:                                              ; preds = %167, %150
  %175 = load i32, i32* %17, align 4
  %176 = icmp sgt i32 %175, 1
  %177 = zext i1 %176 to i32
  %178 = add nsw i32 1, %177
  store i32 %178, i32* %14, align 4
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 5
  %181 = call i32 @get_bits1(i32* %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* %8, align 4
  %184 = sub nsw i32 0, %183
  %185 = xor i32 %182, %184
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %185, %186
  store i32 %187, i32* %17, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %174
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %17, align 4
  %195 = mul nsw i32 %194, %193
  store i32 %195, i32* %17, align 4
  br label %196

196:                                              ; preds = %190, %174
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %17, align 4
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 2
  %207 = load i32**, i32*** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32*, i32** %207, i64 %209
  %211 = load i32*, i32** %210, align 8
  %212 = load i64*, i64** %5, align 8
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %212, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i32, i32* %211, i64 %216
  store i32 %204, i32* %217, align 4
  br label %218

218:                                              ; preds = %196
  br label %219

219:                                              ; preds = %218, %131
  br label %220

220:                                              ; preds = %219, %70
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %9, align 4
  %224 = load i32, i32* %9, align 4
  %225 = icmp sge i32 %224, 64
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  br label %249

227:                                              ; preds = %220
  %228 = load i32*, i32** @vp6_coeff_groups, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @FFMIN(i32 %232, i32 3)
  %234 = trunc i64 %233 to i32
  store i32 %234, i32* %11, align 4
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 4
  %237 = load %struct.TYPE_10__***, %struct.TYPE_10__**** %236, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_10__**, %struct.TYPE_10__*** %237, i64 %239
  %241 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %240, align 8
  %242 = load i32, i32* %14, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %241, i64 %243
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i64 %247
  store %struct.TYPE_10__* %248, %struct.TYPE_10__** %6, align 8
  br label %38

249:                                              ; preds = %226, %149, %69
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %9, align 4
  %254 = call i64 @FFMIN(i32 %253, i32 63)
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 3
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %10, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %256, i32* %262, align 4
  br label %263

263:                                              ; preds = %249
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %10, align 4
  br label %24

266:                                              ; preds = %24
  store i32 0, i32* %2, align 4
  br label %267

267:                                              ; preds = %266, %76
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i8* @vp6_get_nb_null(%struct.TYPE_9__*) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i64 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
