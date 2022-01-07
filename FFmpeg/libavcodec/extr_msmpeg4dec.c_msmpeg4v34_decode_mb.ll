; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4dec.c_msmpeg4v34_decode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4dec.c_msmpeg4v34_decode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i32, i32*, i32***, i32, i64, i64, i32, i32*, %struct.TYPE_14__, i8*, i8*, i32, i64, i64, i8*, i8*, i64, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i32 (i32)* }
%struct.TYPE_15__ = type { i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i64 0, align 8
@MV_DIR_FORWARD = common dso_local global i8* null, align 8
@MV_TYPE_16X16 = common dso_local global i8* null, align 8
@MB_TYPE_SKIP = common dso_local global i32 0, align 4
@MB_TYPE_L0 = common dso_local global i32 0, align 4
@MB_TYPE_16x16 = common dso_local global i32 0, align 4
@ff_mb_non_intra_vlc = common dso_local global %struct.TYPE_18__* null, align 8
@DEFAULT_INTER_INDEX = common dso_local global i64 0, align 8
@MB_NON_INTRA_VLC_BITS = common dso_local global i32 0, align 4
@ff_msmp4_mb_i_vlc = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@MB_INTRA_VLC_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"I at %d %d %d %06X\0A\00", align 1
@MB_TYPE_INTRA = common dso_local global i32 0, align 4
@ff_inter_intra_vlc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@INTER_INTRA_VLC_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%d%d %d %d/\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"\0Aerror while decoding block: %d x %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, [64 x i32]*)* @msmpeg4v34_decode_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msmpeg4v34_decode_mb(%struct.TYPE_16__* %0, [64 x i32]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca [64 x i32]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store [64 x i32]* %1, [64 x i32]** %5, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 21
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = mul i64 %24, %27
  %29 = add i64 %21, %28
  %30 = getelementptr inbounds i32, i32* %18, i64 %29
  store i32* %30, i32** %10, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 15
  %33 = call i64 @get_bits_left(i32* %32)
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %3, align 4
  br label %354

37:                                               ; preds = %2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %124

43:                                               ; preds = %37
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 20
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %101

48:                                               ; preds = %43
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 15
  %51 = call i64 @get_bits1(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %100

53:                                               ; preds = %48
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 4
  store i32 0, i32* %55, align 8
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %66, %53
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 6
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 -1, i32* %65, align 4
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %56

69:                                               ; preds = %56
  %70 = load i8*, i8** @MV_DIR_FORWARD, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 19
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @MV_TYPE_16X16, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 18
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 6
  %78 = load i32***, i32**** %77, align 8
  %79 = getelementptr inbounds i32**, i32*** %78, i64 0
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 0, i32* %83, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 6
  %86 = load i32***, i32**** %85, align 8
  %87 = getelementptr inbounds i32**, i32*** %86, i64 0
  %88 = load i32**, i32*** %87, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 7
  store i32 1, i32* %93, align 8
  %94 = load i32, i32* @MB_TYPE_SKIP, align 4
  %95 = load i32, i32* @MB_TYPE_L0, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @MB_TYPE_16x16, align 4
  %98 = or i32 %96, %97
  %99 = load i32*, i32** %10, align 8
  store i32 %98, i32* %99, align 4
  store i32 0, i32* %3, align 4
  br label %354

100:                                              ; preds = %48
  br label %101

101:                                              ; preds = %100, %43
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 15
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ff_mb_non_intra_vlc, align 8
  %105 = load i64, i64* @DEFAULT_INTER_INDEX, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MB_NON_INTRA_VLC_BITS, align 4
  %110 = call i8* @get_vlc2(i32* %103, i32 %108, i32 %109, i32 3)
  %111 = ptrtoint i8* %110 to i32
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  store i32 -1, i32* %3, align 4
  br label %354

115:                                              ; preds = %101
  %116 = load i32, i32* %7, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %117, 64
  %119 = ashr i32 %118, 6
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %7, align 4
  %123 = and i32 %122, 63
  store i32 %123, i32* %6, align 4
  br label %168

124:                                              ; preds = %37
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 4
  store i32 1, i32* %126, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 15
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ff_msmp4_mb_i_vlc, i32 0, i32 0), align 4
  %130 = load i32, i32* @MB_INTRA_VLC_BITS, align 4
  %131 = call i8* @get_vlc2(i32* %128, i32 %129, i32 %130, i32 2)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  store i32 -1, i32* %3, align 4
  br label %354

136:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %164, %136
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, 6
  br i1 %139, label %140, label %167

140:                                              ; preds = %137
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %8, align 4
  %143 = sub nsw i32 5, %142
  %144 = ashr i32 %141, %143
  %145 = and i32 %144, 1
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %146, 4
  br i1 %147, label %148, label %157

148:                                              ; preds = %140
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @ff_msmpeg4_coded_block_pred(%struct.TYPE_16__* %149, i32 %150, i32** %9)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %12, align 4
  %154 = xor i32 %152, %153
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32*, i32** %9, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %148, %140
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %8, align 4
  %160 = sub nsw i32 5, %159
  %161 = shl i32 %158, %160
  %162 = load i32, i32* %6, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %157
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %137

167:                                              ; preds = %137
  br label %168

168:                                              ; preds = %167, %115
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %228, label %173

173:                                              ; preds = %168
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 16
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %173
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %178
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 15
  %184 = call i8* @decode012(i32* %183)
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 13
  store i8* %184, i8** %186, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 13
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 14
  store i8* %189, i8** %191, align 8
  br label %192

192:                                              ; preds = %181, %178, %173
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %194 = call i32 @ff_h263_pred_motion(%struct.TYPE_16__* %193, i32 0, i32 0, i32* %13, i32* %14)
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %196 = call i64 @ff_msmpeg4_decode_motion(%struct.TYPE_16__* %195, i32* %13, i32* %14)
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  store i32 -1, i32* %3, align 4
  br label %354

199:                                              ; preds = %192
  %200 = load i8*, i8** @MV_DIR_FORWARD, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 19
  store i8* %200, i8** %202, align 8
  %203 = load i8*, i8** @MV_TYPE_16X16, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 18
  store i8* %203, i8** %205, align 8
  %206 = load i32, i32* %13, align 4
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 6
  %209 = load i32***, i32**** %208, align 8
  %210 = getelementptr inbounds i32**, i32*** %209, i64 0
  %211 = load i32**, i32*** %210, align 8
  %212 = getelementptr inbounds i32*, i32** %211, i64 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  store i32 %206, i32* %214, align 4
  %215 = load i32, i32* %14, align 4
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 6
  %218 = load i32***, i32**** %217, align 8
  %219 = getelementptr inbounds i32**, i32*** %218, i64 0
  %220 = load i32**, i32*** %219, align 8
  %221 = getelementptr inbounds i32*, i32** %220, i64 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  store i32 %215, i32* %223, align 4
  %224 = load i32, i32* @MB_TYPE_L0, align 4
  %225 = load i32, i32* @MB_TYPE_16x16, align 4
  %226 = or i32 %224, %225
  %227 = load i32*, i32** %10, align 8
  store i32 %226, i32* %227, align 4
  br label %306

228:                                              ; preds = %168
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = and i32 %236, 3
  %238 = icmp ne i32 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i32 1, i32 0
  %241 = load i32, i32* %6, align 4
  %242 = and i32 %241, 60
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i32 2, i32 0
  %246 = add nsw i32 %240, %245
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 15
  %249 = call i64 @show_bits(i32* %248, i32 24)
  %250 = call i32 @ff_dlog(%struct.TYPE_16__* %229, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %232, i64 %235, i32 %246, i64 %249)
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 15
  %253 = call i64 @get_bits1(i32* %252)
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 8
  store i64 %253, i64* %255, align 8
  %256 = load i32, i32* @MB_TYPE_INTRA, align 4
  %257 = load i32*, i32** %10, align 8
  store i32 %256, i32* %257, align 4
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 17
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %286

262:                                              ; preds = %228
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 15
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ff_inter_intra_vlc, i32 0, i32 0), align 4
  %266 = load i32, i32* @INTER_INTRA_VLC_BITS, align 4
  %267 = call i8* @get_vlc2(i32* %264, i32 %265, i32 %266, i32 1)
  %268 = ptrtoint i8* %267 to i64
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 9
  store i64 %268, i64* %270, align 8
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 8
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 9
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = trunc i64 %280 to i32
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @ff_dlog(%struct.TYPE_16__* %271, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %274, i64 %277, i32 %281, i64 %284)
  br label %286

286:                                              ; preds = %262, %228
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 16
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %305

291:                                              ; preds = %286
  %292 = load i32, i32* %6, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %291
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 15
  %297 = call i8* @decode012(i32* %296)
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 13
  store i8* %297, i8** %299, align 8
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 13
  %302 = load i8*, i8** %301, align 8
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 14
  store i8* %302, i8** %304, align 8
  br label %305

305:                                              ; preds = %294, %291, %286
  br label %306

306:                                              ; preds = %305, %199
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 12
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 0
  %310 = load i32 (i32)*, i32 (i32)** %309, align 8
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 11
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 %310(i32 %315)
  store i32 0, i32* %8, align 4
  br label %317

317:                                              ; preds = %350, %306
  %318 = load i32, i32* %8, align 4
  %319 = icmp slt i32 %318, 6
  br i1 %319, label %320, label %353

320:                                              ; preds = %317
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %322 = load [64 x i32]*, [64 x i32]** %5, align 8
  %323 = load i32, i32* %8, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [64 x i32], [64 x i32]* %322, i64 %324
  %326 = getelementptr inbounds [64 x i32], [64 x i32]* %325, i64 0, i64 0
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* %6, align 4
  %329 = load i32, i32* %8, align 4
  %330 = sub nsw i32 5, %329
  %331 = ashr i32 %328, %330
  %332 = and i32 %331, 1
  %333 = call i64 @ff_msmpeg4_decode_block(%struct.TYPE_16__* %321, i32* %326, i32 %327, i32 %332, i32* null)
  %334 = icmp slt i64 %333, 0
  br i1 %334, label %335, label %349

335:                                              ; preds = %320
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 10
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @AV_LOG_ERROR, align 4
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = trunc i64 %342 to i32
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = load i32, i32* %8, align 4
  %348 = call i32 @av_log(i32 %338, i32 %339, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %343, i64 %346, i32 %347)
  store i32 -1, i32* %3, align 4
  br label %354

349:                                              ; preds = %320
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %8, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %8, align 4
  br label %317

353:                                              ; preds = %317
  store i32 0, i32* %3, align 4
  br label %354

354:                                              ; preds = %353, %335, %198, %135, %114, %69, %35
  %355 = load i32, i32* %3, align 4
  ret i32 %355
}

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i8* @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @ff_msmpeg4_coded_block_pred(%struct.TYPE_16__*, i32, i32**) #1

declare dso_local i8* @decode012(i32*) #1

declare dso_local i32 @ff_h263_pred_motion(%struct.TYPE_16__*, i32, i32, i32*, i32*) #1

declare dso_local i64 @ff_msmpeg4_decode_motion(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_16__*, i8*, i64, i64, i32, i64) #1

declare dso_local i64 @show_bits(i32*, i32) #1

declare dso_local i64 @ff_msmpeg4_decode_block(%struct.TYPE_16__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
