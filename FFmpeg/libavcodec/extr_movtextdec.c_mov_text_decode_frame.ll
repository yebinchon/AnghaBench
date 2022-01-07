; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_movtextdec.c_mov_text_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_movtextdec.c_mov_text_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32 (i8*, %struct.TYPE_19__*, %struct.TYPE_21__*)* }
%struct.TYPE_19__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_21__ = type { i8*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tsmb_size is 0\0A\00", align 1
@box_count = common dso_local global i64 0, align 8
@box_types = common dso_local global %struct.TYPE_18__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*, i32*, %struct.TYPE_21__*)* @mov_text_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_text_decode_frame(%struct.TYPE_22__* %0, i8* %1, i32* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %10, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %11, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %4
  %38 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %38, i32* %5, align 4
  br label %248

39:                                               ; preds = %32
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 @AV_RB16(i8* %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 0, %48 ], [ %50, %49 ]
  store i32 %52, i32* %5, align 4
  br label %248

53:                                               ; preds = %39
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 @AV_RB16(i8* %54)
  store i32 %55, i32* %16, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 2, %57
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @FFMIN(i32 %58, i32 %61)
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %56, i64 %63
  store i8* %64, i8** %15, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  store i8* %66, i8** %14, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %68 = call i32 @mov_text_cleanup(%struct.TYPE_19__* %67)
  store i32 0, i32* %19, align 4
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 2, %69
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 5
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %80 = call i32 @av_bprint_init(%struct.TYPE_23__* %13, i32 0, i32 %79)
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 2
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %82, %85
  br i1 %86, label %87, label %219

87:                                               ; preds = %53
  br label %88

88:                                               ; preds = %204, %87
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp sle i32 %92, %95
  br i1 %96, label %97, label %212

97:                                               ; preds = %88
  %98 = load i8*, i8** %14, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  %104 = getelementptr inbounds i8, i8* %103, i64 -2
  store i8* %104, i8** %20, align 8
  %105 = load i8*, i8** %20, align 8
  %106 = call i32 @AV_RB32(i8* %105)
  store i32 %106, i32* %19, align 4
  %107 = load i8*, i8** %20, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 4
  store i8* %108, i8** %20, align 8
  %109 = load i8*, i8** %20, align 8
  %110 = call i32 @AV_RB32(i8* %109)
  store i32 %110, i32* %17, align 4
  %111 = load i8*, i8** %20, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  store i8* %112, i8** %20, align 8
  %113 = load i32, i32* %19, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %132

115:                                              ; preds = %97
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 16
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %212

125:                                              ; preds = %115
  %126 = load i8*, i8** %20, align 8
  %127 = call i32 @AV_RB64(i8* %126)
  store i32 %127, i32* %19, align 4
  %128 = load i8*, i8** %20, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 8
  store i8* %129, i8** %20, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 1
  store i32 16, i32* %131, align 4
  br label %135

132:                                              ; preds = %97
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  store i32 8, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %125
  %136 = load i32, i32* %19, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %140 = load i32, i32* @AV_LOG_ERROR, align 4
  %141 = call i32 @av_log(%struct.TYPE_22__* %139, i32 %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %142 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %142, i32* %5, align 4
  br label %248

143:                                              ; preds = %135
  %144 = load i32, i32* %19, align 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %147, %150
  %152 = icmp sgt i32 %144, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %212

154:                                              ; preds = %143
  store i64 0, i64* %21, align 8
  br label %155

155:                                              ; preds = %201, %154
  %156 = load i64, i64* %21, align 8
  %157 = load i64, i64* @box_count, align 8
  %158 = icmp ult i64 %156, %157
  br i1 %158, label %159, label %204

159:                                              ; preds = %155
  %160 = load i32, i32* %17, align 4
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** @box_types, align 8
  %162 = load i64, i64* %21, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %160, %165
  br i1 %166, label %167, label %200

167:                                              ; preds = %159
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %170, %173
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** @box_types, align 8
  %176 = load i64, i64* %21, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %174, %179
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp sgt i32 %180, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %167
  br label %204

186:                                              ; preds = %167
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** @box_types, align 8
  %188 = load i64, i64* %21, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 2
  %191 = load i32 (i8*, %struct.TYPE_19__*, %struct.TYPE_21__*)*, i32 (i8*, %struct.TYPE_19__*, %struct.TYPE_21__*)** %190, align 8
  %192 = load i8*, i8** %20, align 8
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %195 = call i32 %191(i8* %192, %struct.TYPE_19__* %193, %struct.TYPE_21__* %194)
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %18, align 4
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  br label %204

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199, %159
  br label %201

201:                                              ; preds = %200
  %202 = load i64, i64* %21, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %21, align 8
  br label %155

204:                                              ; preds = %198, %185, %155
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %19, align 4
  %209 = add nsw i32 %207, %208
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  br label %88

212:                                              ; preds = %153, %124, %88
  %213 = load i8*, i8** %14, align 8
  %214 = load i8*, i8** %15, align 8
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %216 = call i32 @text_to_ass(%struct.TYPE_23__* %13, i8* %213, i8* %214, %struct.TYPE_22__* %215)
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %218 = call i32 @mov_text_cleanup(%struct.TYPE_19__* %217)
  br label %224

219:                                              ; preds = %53
  %220 = load i8*, i8** %14, align 8
  %221 = load i8*, i8** %15, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %223 = call i32 @text_to_ass(%struct.TYPE_23__* %13, i8* %220, i8* %221, %struct.TYPE_22__* %222)
  br label %224

224:                                              ; preds = %219, %212
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 8
  %232 = call i32 @ff_ass_add_rect(%struct.TYPE_20__* %225, i32 %227, i32 %230, i32 0, i32* null, i32* null)
  store i32 %232, i32* %12, align 4
  %233 = call i32 @av_bprint_finalize(%struct.TYPE_23__* %13, i32* null)
  %234 = load i32, i32* %12, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %224
  %237 = load i32, i32* %12, align 4
  store i32 %237, i32* %5, align 4
  br label %248

238:                                              ; preds = %224
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp sgt i64 %241, 0
  %243 = zext i1 %242 to i32
  %244 = load i32*, i32** %8, align 8
  store i32 %243, i32* %244, align 4
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  store i32 %247, i32* %5, align 4
  br label %248

248:                                              ; preds = %238, %236, %138, %51, %37
  %249 = load i32, i32* %5, align 4
  ret i32 %249
}

declare dso_local i32 @AV_RB16(i8*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @mov_text_cleanup(%struct.TYPE_19__*) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @AV_RB32(i8*) #1

declare dso_local i32 @AV_RB64(i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @text_to_ass(%struct.TYPE_23__*, i8*, i8*, %struct.TYPE_22__*) #1

declare dso_local i32 @ff_ass_add_rect(%struct.TYPE_20__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_23__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
