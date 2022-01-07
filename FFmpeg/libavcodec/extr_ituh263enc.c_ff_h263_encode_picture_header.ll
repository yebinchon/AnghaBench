; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263enc.c_ff_h263_encode_picture_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ituh263enc.c_ff_h263_encode_picture_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_8__*, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@ff_h263_format = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i64 0, align 8
@FF_ASPECT_EXTENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h263_encode_picture_header(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  store i32 60, i32* %11, align 4
  %16 = load i32, i32* @INT_MAX, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 19
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %89

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %85, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %88

25:                                               ; preds = %22
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 18
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = mul nsw i64 %31, 1800000
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 18
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = mul nsw i64 500, %38
  %40 = add nsw i64 %32, %39
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 1000, %42
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 18
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = mul nsw i64 %43, %49
  %51 = sdiv i64 %40, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @av_clip(i32 %53, i32 1, i32 127)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 18
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = mul nsw i64 %60, 1800000
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 1000, %63
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 18
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = mul nsw i64 %64, %70
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %71, %73
  %75 = sub nsw i64 %61, %74
  %76 = call i32 @FFABS(i64 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %25
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %80, %25
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %22

88:                                               ; preds = %22
  br label %89

89:                                               ; preds = %88, %2
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 60
  br label %95

95:                                               ; preds = %92, %89
  %96 = phi i1 [ true, %89 ], [ %94, %92 ]
  %97 = zext i1 %96 to i32
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  store i32 1800000, i32* %6, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 1000, %100
  %102 = load i32, i32* %11, align 4
  %103 = mul nsw i32 %101, %102
  store i32 %103, i32* %7, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 17
  %106 = call i32 @avpriv_align_put_bits(i32* %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 17
  %109 = call i32 @put_bits_ptr(i32* %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 20
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 17
  %114 = call i32 @put_bits(i32* %113, i32 22, i32 32)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %6, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 18
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = mul nsw i64 %120, %126
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 18
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = mul nsw i32 %128, %135
  %137 = sext i32 %136 to i64
  %138 = sdiv i64 %127, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %9, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 17
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @put_sbits(i32* %141, i32 8, i32 %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 17
  %146 = call i32 @put_bits(i32* %145, i32 1, i32 1)
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 17
  %149 = call i32 @put_bits(i32* %148, i32 1, i32 0)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 17
  %152 = call i32 @put_bits(i32* %151, i32 1, i32 0)
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 17
  %155 = call i32 @put_bits(i32* %154, i32 1, i32 0)
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 17
  %158 = call i32 @put_bits(i32* %157, i32 1, i32 0)
  %159 = load i32, i32* @ff_h263_format, align 4
  %160 = load i32, i32* @ff_h263_format, align 4
  %161 = call i32 @FF_ARRAY_ELEMS(i32 %160)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ff_match_2uint16(i32 %159, i32 %161, i32 %164, i32 %167)
  store i32 %168, i32* %5, align 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 19
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %211, label %173

173:                                              ; preds = %95
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 17
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @put_bits(i32* %175, i32 3, i32 %176)
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 17
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %184 = icmp eq i64 %182, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @put_bits(i32* %179, i32 1, i32 %185)
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 17
  %189 = call i32 @put_bits(i32* %188, i32 1, i32 0)
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 17
  %192 = call i32 @put_bits(i32* %191, i32 1, i32 0)
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 17
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @put_bits(i32* %194, i32 1, i32 %197)
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 17
  %201 = call i32 @put_bits(i32* %200, i32 1, i32 0)
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 17
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @put_bits(i32* %203, i32 5, i32 %206)
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 17
  %210 = call i32 @put_bits(i32* %209, i32 1, i32 0)
  br label %433

211:                                              ; preds = %95
  store i32 1, i32* %15, align 4
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 17
  %214 = call i32 @put_bits(i32* %213, i32 3, i32 7)
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 17
  %217 = load i32, i32* %15, align 4
  %218 = call i32 @put_bits(i32* %216, i32 3, i32 %217)
  %219 = load i32, i32* %5, align 4
  %220 = icmp eq i32 %219, 8
  br i1 %220, label %221, label %225

221:                                              ; preds = %211
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 17
  %224 = call i32 @put_bits(i32* %223, i32 3, i32 6)
  br label %230

225:                                              ; preds = %211
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 17
  %228 = load i32, i32* %5, align 4
  %229 = call i32 @put_bits(i32* %227, i32 3, i32 %228)
  br label %230

230:                                              ; preds = %225, %221
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 17
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @put_bits(i32* %232, i32 1, i32 %235)
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 17
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @put_bits(i32* %238, i32 1, i32 %241)
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 17
  %245 = call i32 @put_bits(i32* %244, i32 1, i32 0)
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 17
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @put_bits(i32* %247, i32 1, i32 %250)
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 17
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 8
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @put_bits(i32* %253, i32 1, i32 %256)
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 17
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 9
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @put_bits(i32* %259, i32 1, i32 %262)
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 17
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 10
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @put_bits(i32* %265, i32 1, i32 %268)
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 17
  %272 = call i32 @put_bits(i32* %271, i32 1, i32 0)
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 17
  %275 = call i32 @put_bits(i32* %274, i32 1, i32 0)
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 17
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 11
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @put_bits(i32* %277, i32 1, i32 %280)
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 17
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 12
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @put_bits(i32* %283, i32 1, i32 %286)
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 17
  %290 = call i32 @put_bits(i32* %289, i32 1, i32 1)
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 17
  %293 = call i32 @put_bits(i32* %292, i32 3, i32 0)
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 17
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 4
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %300 = icmp eq i64 %298, %299
  %301 = zext i1 %300 to i32
  %302 = call i32 @put_bits(i32* %295, i32 3, i32 %301)
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 17
  %305 = call i32 @put_bits(i32* %304, i32 1, i32 0)
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 17
  %308 = call i32 @put_bits(i32* %307, i32 1, i32 0)
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 17
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 13
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @put_bits(i32* %310, i32 1, i32 %313)
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 17
  %317 = call i32 @put_bits(i32* %316, i32 2, i32 0)
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 17
  %320 = call i32 @put_bits(i32* %319, i32 1, i32 1)
  %321 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %321, i32 0, i32 17
  %323 = call i32 @put_bits(i32* %322, i32 1, i32 0)
  %324 = load i32, i32* %5, align 4
  %325 = icmp eq i32 %324, 8
  br i1 %325, label %326, label %385

326:                                              ; preds = %230
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 18
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 0
  %331 = bitcast %struct.TYPE_10__* %330 to i64*
  %332 = load i64, i64* %331, align 8
  %333 = call i32 @ff_h263_aspect_to_info(i64 %332)
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 14
  store i32 %333, i32* %335, align 4
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 17
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 14
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @put_bits(i32* %337, i32 4, i32 %340)
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 17
  %344 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = ashr i32 %346, 2
  %348 = sub nsw i32 %347, 1
  %349 = call i32 @put_bits(i32* %343, i32 9, i32 %348)
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 17
  %352 = call i32 @put_bits(i32* %351, i32 1, i32 1)
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 17
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = ashr i32 %357, 2
  %359 = call i32 @put_bits(i32* %354, i32 9, i32 %358)
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i32 0, i32 14
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @FF_ASPECT_EXTENDED, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %384

365:                                              ; preds = %326
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 17
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 18
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @put_bits(i32* %367, i32 8, i32 %373)
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 17
  %377 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 18
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = call i32 @put_bits(i32* %376, i32 8, i32 %382)
  br label %384

384:                                              ; preds = %365, %326
  br label %385

385:                                              ; preds = %384, %230
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %408

390:                                              ; preds = %385
  %391 = load i32, i32* %15, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %402

393:                                              ; preds = %390
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 17
  %396 = load i32, i32* %10, align 4
  %397 = call i32 @put_bits(i32* %395, i32 1, i32 %396)
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 17
  %400 = load i32, i32* %11, align 4
  %401 = call i32 @put_bits(i32* %399, i32 7, i32 %400)
  br label %402

402:                                              ; preds = %393, %390
  %403 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 17
  %405 = load i32, i32* %9, align 4
  %406 = ashr i32 %405, 8
  %407 = call i32 @put_sbits(i32* %404, i32 2, i32 %406)
  br label %408

408:                                              ; preds = %402, %385
  %409 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %409, i32 0, i32 7
  %411 = load i32, i32* %410, align 8
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %408
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 17
  %416 = call i32 @put_bits(i32* %415, i32 2, i32 1)
  br label %417

417:                                              ; preds = %413, %408
  %418 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %418, i32 0, i32 10
  %420 = load i32, i32* %419, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %417
  %423 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %424 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %423, i32 0, i32 17
  %425 = call i32 @put_bits(i32* %424, i32 2, i32 0)
  br label %426

426:                                              ; preds = %422, %417
  %427 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 17
  %429 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 6
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @put_bits(i32* %428, i32 5, i32 %431)
  br label %433

433:                                              ; preds = %426, %173
  %434 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 17
  %436 = call i32 @put_bits(i32* %435, i32 1, i32 0)
  %437 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %437, i32 0, i32 10
  %439 = load i32, i32* %438, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %463

441:                                              ; preds = %433
  %442 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %443 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %442, i32 0, i32 17
  %444 = call i32 @put_bits(i32* %443, i32 1, i32 1)
  %445 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %446 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %445, i32 0, i32 15
  %447 = load i64, i64* %446, align 8
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %454

449:                                              ; preds = %441
  %450 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %450, i32 0, i32 16
  %452 = load i64, i64* %451, align 8
  %453 = icmp eq i64 %452, 0
  br label %454

454:                                              ; preds = %449, %441
  %455 = phi i1 [ false, %441 ], [ %453, %449 ]
  %456 = zext i1 %455 to i32
  %457 = call i32 @av_assert1(i32 %456)
  %458 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %459 = call i32 @ff_h263_encode_mba(%struct.TYPE_9__* %458)
  %460 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %460, i32 0, i32 17
  %462 = call i32 @put_bits(i32* %461, i32 1, i32 1)
  br label %463

463:                                              ; preds = %454, %433
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @FFABS(i64) #1

declare dso_local i32 @avpriv_align_put_bits(i32*) #1

declare dso_local i32 @put_bits_ptr(i32*) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_sbits(i32*, i32, i32) #1

declare dso_local i32 @ff_match_2uint16(i32, i32, i32, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32) #1

declare dso_local i32 @ff_h263_aspect_to_info(i64) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @ff_h263_encode_mba(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
