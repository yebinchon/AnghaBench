; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg_decode_picture_coding_extension.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg_decode_picture_coding_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32**, i64, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_7__, i32, i32, i8*, i8*, %struct.TYPE_9__, i64* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Missing picture start code, guessing missing values\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_P = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@ff_alternate_vertical_scan = common dso_local global i32 0, align 4
@ff_zigzag_direct = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"intra_dc_precision=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"picture_structure=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"top field first=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"repeat first field=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"conceal=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"intra_vlc_format=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"alternate_scan=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"frame_pred_frame_dct=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"progressive_frame=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @mpeg_decode_picture_coding_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpeg_decode_picture_coding_extension(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 19
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 19
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 15
  %16 = call i8* @get_bits(i32* %15, i32 4)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %17, i32* %23, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 15
  %26 = call i8* @get_bits(i32* %25, i32 4)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %27, i32* %33, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 15
  %36 = call i8* @get_bits(i32* %35, i32 4)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %37, i32* %43, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 15
  %46 = call i8* @get_bits(i32* %45, i32 4)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %47, i32* %53, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %137, label %58

58:                                               ; preds = %1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %137

63:                                               ; preds = %58
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AV_LOG_ERROR, align 4
  %68 = call i32 @av_log(i32 %66, i32 %67, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 15
  br i1 %76, label %77, label %113

77:                                               ; preds = %63
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 15
  br i1 %85, label %86, label %113

86:                                               ; preds = %77
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 15
  br i1 %94, label %95, label %108

95:                                               ; preds = %86
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32**, i32*** %97, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 15
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  br label %112

108:                                              ; preds = %95, %86
  %109 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %104
  br label %117

113:                                              ; preds = %77, %63
  %114 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %113, %112
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 18
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store i64 %120, i64* %125, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 18
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i32 %131, i32* %136, align 8
  br label %137

137:                                              ; preds = %117, %58, %1
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32**, i32*** %139, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32**, i32*** %149, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %147
  store i32 %155, i32* %153, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32**, i32*** %157, align 8
  %159 = getelementptr inbounds i32*, i32** %158, i64 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32**, i32*** %167, align 8
  %169 = getelementptr inbounds i32*, i32** %168, i64 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %165
  store i32 %173, i32* %171, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32**, i32*** %175, align 8
  %177 = getelementptr inbounds i32*, i32** %176, i64 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32**, i32*** %185, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %183
  store i32 %191, i32* %189, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load i32**, i32*** %193, align 8
  %195 = getelementptr inbounds i32*, i32** %194, i64 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i32**, i32*** %203, align 8
  %205 = getelementptr inbounds i32*, i32** %204, i64 1
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, %201
  store i32 %209, i32* %207, align 4
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 15
  %212 = call i8* @get_bits(i32* %211, i32 2)
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 11
  store i8* %212, i8** %214, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 15
  %217 = call i8* @get_bits(i32* %216, i32 2)
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 10
  store i8* %217, i8** %219, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 15
  %222 = call i8* @get_bits1(i32* %221)
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 9
  store i8* %222, i8** %224, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 15
  %227 = call i8* @get_bits1(i32* %226)
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 4
  store i8* %227, i8** %229, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 15
  %232 = call i8* @get_bits1(i32* %231)
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 7
  store i8* %232, i8** %234, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 15
  %237 = call i8* @get_bits1(i32* %236)
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 17
  store i8* %237, i8** %239, align 8
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 15
  %242 = call i8* @get_bits1(i32* %241)
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 6
  store i8* %242, i8** %244, align 8
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 15
  %247 = call i8* @get_bits1(i32* %246)
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 5
  store i8* %247, i8** %249, align 8
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 15
  %252 = call i8* @get_bits1(i32* %251)
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 8
  store i8* %252, i8** %254, align 8
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 15
  %257 = call i8* @get_bits1(i32* %256)
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 16
  store i8* %257, i8** %259, align 8
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 15
  %262 = call i8* @get_bits1(i32* %261)
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 2
  store i8* %262, i8** %264, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 5
  %267 = load i8*, i8** %266, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %269, label %286

269:                                              ; preds = %137
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 13
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 14
  %276 = load i32, i32* @ff_alternate_vertical_scan, align 4
  %277 = call i32 @ff_init_scantable(i32 %273, i32* %275, i32 %276)
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 13
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 12
  %284 = load i32, i32* @ff_alternate_vertical_scan, align 4
  %285 = call i32 @ff_init_scantable(i32 %281, i32* %283, i32 %284)
  br label %303

286:                                              ; preds = %137
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 13
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 14
  %293 = load i32, i32* @ff_zigzag_direct, align 4
  %294 = call i32 @ff_init_scantable(i32 %290, i32* %292, i32 %293)
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 13
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 12
  %301 = load i32, i32* @ff_zigzag_direct, align 4
  %302 = call i32 @ff_init_scantable(i32 %298, i32* %300, i32 %301)
  br label %303

303:                                              ; preds = %286, %269
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 11
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @ff_dlog(i32 %306, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %309)
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 10
  %316 = load i8*, i8** %315, align 8
  %317 = call i32 @ff_dlog(i32 %313, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %316)
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 9
  %323 = load i8*, i8** %322, align 8
  %324 = call i32 @ff_dlog(i32 %320, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %323)
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 8
  %330 = load i8*, i8** %329, align 8
  %331 = call i32 @ff_dlog(i32 %327, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %330)
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 7
  %337 = load i8*, i8** %336, align 8
  %338 = call i32 @ff_dlog(i32 %334, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %337)
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 6
  %344 = load i8*, i8** %343, align 8
  %345 = call i32 @ff_dlog(i32 %341, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %344)
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 5
  %351 = load i8*, i8** %350, align 8
  %352 = call i32 @ff_dlog(i32 %348, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %351)
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 4
  %358 = load i8*, i8** %357, align 8
  %359 = call i32 @ff_dlog(i32 %355, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %358)
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %363, i32 0, i32 2
  %365 = load i8*, i8** %364, align 8
  %366 = call i32 @ff_dlog(i32 %362, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %365)
  ret void
}

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @ff_init_scantable(i32, i32*, i32) #1

declare dso_local i32 @ff_dlog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
