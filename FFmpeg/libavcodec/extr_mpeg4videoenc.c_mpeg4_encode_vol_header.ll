; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_mpeg4_encode_vol_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videoenc.c_mpeg4_encode_vol_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_9__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@CONFIG_MPEG4_ENCODER = common dso_local global i32 0, align 4
@ADV_SIMPLE_VO_TYPE = common dso_local global i32 0, align 4
@SIMPLE_VO_TYPE = common dso_local global i32 0, align 4
@FF_BUG_MS = common dso_local global i32 0, align 4
@FF_ASPECT_EXTENDED = common dso_local global i32 0, align 4
@RECT_SHAPE = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_BITEXACT = common dso_local global i32 0, align 4
@LIBAVCODEC_IDENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32)* @mpeg4_encode_vol_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpeg4_encode_vol_header(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @CONFIG_MPEG4_ENCODER, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %347

11:                                               ; preds = %3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 14
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %11
  store i32 5, i32* %7, align 4
  %22 = load i32, i32* @ADV_SIMPLE_VO_TYPE, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %29

25:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  %26 = load i32, i32* @SIMPLE_VO_TYPE, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 9
  %32 = call i32 @put_bits(i32* %31, i32 16, i32 0)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 9
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 256, %35
  %37 = call i32 @put_bits(i32* %34, i32 16, i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 9
  %40 = call i32 @put_bits(i32* %39, i32 16, i32 0)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 9
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 288, %43
  %45 = call i32 @put_bits(i32* %42, i32 16, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 9
  %48 = call i32 @put_bits(i32* %47, i32 1, i32 0)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 9
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @put_bits(i32* %50, i32 8, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FF_BUG_MS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %29
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 9
  %64 = call i32 @put_bits(i32* %63, i32 1, i32 0)
  br label %76

65:                                               ; preds = %29
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 9
  %68 = call i32 @put_bits(i32* %67, i32 1, i32 1)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 9
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @put_bits(i32* %70, i32 4, i32 %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 9
  %75 = call i32 @put_bits(i32* %74, i32 3, i32 1)
  br label %76

76:                                               ; preds = %65, %61
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 10
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = bitcast %struct.TYPE_9__* %80 to i64*
  %82 = load i64, i64* %81, align 4
  %83 = call i32 @ff_h263_aspect_to_info(i64 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 9
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @put_bits(i32* %87, i32 4, i32 %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @FF_ASPECT_EXTENDED, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %139

97:                                               ; preds = %76
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 10
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 10
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 10
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 10
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @av_reduce(i32* %102, i32* %107, i32 %113, i32 %119, i32 255)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 9
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 10
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @put_bits(i32* %122, i32 8, i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 9
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 10
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @put_bits(i32* %131, i32 8, i32 %137)
  br label %139

139:                                              ; preds = %97, %76
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @FF_BUG_MS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 9
  %149 = call i32 @put_bits(i32* %148, i32 1, i32 0)
  br label %166

150:                                              ; preds = %139
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 9
  %153 = call i32 @put_bits(i32* %152, i32 1, i32 1)
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 9
  %156 = call i32 @put_bits(i32* %155, i32 2, i32 1)
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 9
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @put_bits(i32* %158, i32 1, i32 %161)
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 9
  %165 = call i32 @put_bits(i32* %164, i32 1, i32 0)
  br label %166

166:                                              ; preds = %150, %146
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 9
  %169 = load i32, i32* @RECT_SHAPE, align 4
  %170 = call i32 @put_bits(i32* %168, i32 2, i32 %169)
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 9
  %173 = call i32 @put_bits(i32* %172, i32 1, i32 1)
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 9
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 10
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @put_bits(i32* %175, i32 16, i32 %181)
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %185, 1
  br i1 %186, label %187, label %190

187:                                              ; preds = %166
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 5
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %166
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 9
  %193 = call i32 @put_bits(i32* %192, i32 1, i32 1)
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 9
  %196 = call i32 @put_bits(i32* %195, i32 1, i32 0)
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 9
  %199 = call i32 @put_bits(i32* %198, i32 1, i32 1)
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 9
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @put_bits(i32* %201, i32 13, i32 %204)
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 9
  %208 = call i32 @put_bits(i32* %207, i32 1, i32 1)
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 9
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @put_bits(i32* %210, i32 13, i32 %213)
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 9
  %217 = call i32 @put_bits(i32* %216, i32 1, i32 1)
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 9
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 13
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 0, i32 1
  %226 = call i32 @put_bits(i32* %219, i32 1, i32 %225)
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 9
  %229 = call i32 @put_bits(i32* %228, i32 1, i32 1)
  %230 = load i32, i32* %7, align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %236

232:                                              ; preds = %190
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 9
  %235 = call i32 @put_bits(i32* %234, i32 1, i32 0)
  br label %240

236:                                              ; preds = %190
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 9
  %239 = call i32 @put_bits(i32* %238, i32 2, i32 0)
  br label %240

240:                                              ; preds = %236, %232
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 9
  %243 = call i32 @put_bits(i32* %242, i32 1, i32 0)
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 9
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @put_bits(i32* %245, i32 1, i32 %248)
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 8
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %271

254:                                              ; preds = %240
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 9
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 10
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @ff_write_quant_matrix(i32* %256, i32 %261)
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 9
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 10
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @ff_write_quant_matrix(i32* %264, i32 %269)
  br label %271

271:                                              ; preds = %254, %240
  %272 = load i32, i32* %7, align 4
  %273 = icmp ne i32 %272, 1
  br i1 %273, label %274, label %281

274:                                              ; preds = %271
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 9
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @put_bits(i32* %276, i32 1, i32 %279)
  br label %281

281:                                              ; preds = %274, %271
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 9
  %284 = call i32 @put_bits(i32* %283, i32 1, i32 1)
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 9
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 12
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i32 0, i32 1
  %293 = call i32 @put_bits(i32* %286, i32 1, i32 %292)
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 9
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 11
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  %300 = zext i1 %299 to i64
  %301 = select i1 %299, i32 1, i32 0
  %302 = call i32 @put_bits(i32* %295, i32 1, i32 %301)
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 11
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %281
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 9
  %310 = call i32 @put_bits(i32* %309, i32 1, i32 0)
  br label %311

311:                                              ; preds = %307, %281
  %312 = load i32, i32* %7, align 4
  %313 = icmp ne i32 %312, 1
  br i1 %313, label %314, label %321

314:                                              ; preds = %311
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 9
  %317 = call i32 @put_bits(i32* %316, i32 1, i32 0)
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 9
  %320 = call i32 @put_bits(i32* %319, i32 1, i32 0)
  br label %321

321:                                              ; preds = %314, %311
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 9
  %324 = call i32 @put_bits(i32* %323, i32 1, i32 0)
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 9
  %327 = call i32 @ff_mpeg4_stuffing(i32* %326)
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 10
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @AV_CODEC_FLAG_BITEXACT, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %347, label %336

336:                                              ; preds = %321
  %337 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 9
  %339 = call i32 @put_bits(i32* %338, i32 16, i32 0)
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 9
  %342 = call i32 @put_bits(i32* %341, i32 16, i32 434)
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 9
  %345 = load i32, i32* @LIBAVCODEC_IDENT, align 4
  %346 = call i32 @avpriv_put_string(i32* %344, i32 %345, i32 0)
  br label %347

347:                                              ; preds = %10, %336, %321
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @ff_h263_aspect_to_info(i64) #1

declare dso_local i32 @av_reduce(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ff_write_quant_matrix(i32*, i32) #1

declare dso_local i32 @ff_mpeg4_stuffing(i32*) #1

declare dso_local i32 @avpriv_put_string(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
