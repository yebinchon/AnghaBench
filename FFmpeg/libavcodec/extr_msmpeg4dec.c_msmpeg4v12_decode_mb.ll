; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4dec.c_msmpeg4v12_decode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4dec.c_msmpeg4v12_decode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i64, i32, i32*, i32***, i32, i32, i32, i32*, %struct.TYPE_16__, i32, i64, i8*, i8*, i64, %struct.TYPE_17__ }
%struct.TYPE_16__ = type { i32 (i32)* }
%struct.TYPE_17__ = type { i32* }

@AV_PICTURE_TYPE_P = common dso_local global i64 0, align 8
@MV_DIR_FORWARD = common dso_local global i8* null, align 8
@MV_TYPE_16X16 = common dso_local global i8* null, align 8
@MB_TYPE_SKIP = common dso_local global i32 0, align 4
@MB_TYPE_L0 = common dso_local global i32 0, align 4
@MB_TYPE_16x16 = common dso_local global i32 0, align 4
@v2_mb_type_vlc = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@V2_MB_TYPE_VLC_BITS = common dso_local global i32 0, align 4
@ff_h263_inter_MCBPC_vlc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@INTER_MCBPC_VLC_BITS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cbpc %d invalid at %d %d\0A\00", align 1
@v2_intra_cbpc_vlc = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@V2_INTRA_CBPC_VLC_BITS = common dso_local global i32 0, align 4
@ff_h263_intra_MCBPC_vlc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@INTRA_MCBPC_VLC_BITS = common dso_local global i32 0, align 4
@ff_h263_cbpy_vlc = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@CBPY_VLC_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cbpy %d invalid at %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"cbpy vlc invalid\0A\00", align 1
@MB_TYPE_INTRA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"\0Aerror while decoding block: %d x %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, [64 x i32]*)* @msmpeg4v12_decode_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msmpeg4v12_decode_mb(%struct.TYPE_18__* %0, [64 x i32]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca [64 x i32]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store [64 x i32]* %1, [64 x i32]** %5, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 17
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = add nsw i32 %20, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %17, i64 %29
  store i32* %30, i32** %9, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %137

36:                                               ; preds = %2
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 16
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %94

41:                                               ; preds = %36
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 12
  %44 = call i64 @get_bits1(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %41
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 4
  store i32 0, i32* %48, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %59, %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 6
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 -1, i32* %58, align 4
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %49

62:                                               ; preds = %49
  %63 = load i8*, i8** @MV_DIR_FORWARD, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 15
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @MV_TYPE_16X16, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 14
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 6
  %71 = load i32***, i32**** %70, align 8
  %72 = getelementptr inbounds i32**, i32*** %71, i64 0
  %73 = load i32**, i32*** %72, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 0, i32* %76, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 6
  %79 = load i32***, i32**** %78, align 8
  %80 = getelementptr inbounds i32**, i32*** %79, i64 0
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 0, i32* %84, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 7
  store i32 1, i32* %86, align 8
  %87 = load i32, i32* @MB_TYPE_SKIP, align 4
  %88 = load i32, i32* @MB_TYPE_L0, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @MB_TYPE_16x16, align 4
  %91 = or i32 %89, %90
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  store i32 0, i32* %3, align 4
  br label %364

93:                                               ; preds = %41
  br label %94

94:                                               ; preds = %93, %36
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 12
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @v2_mb_type_vlc, i32 0, i32 0), align 4
  %103 = load i32, i32* @V2_MB_TYPE_VLC_BITS, align 4
  %104 = call i32 @get_vlc2(i32* %101, i32 %102, i32 %103, i32 1)
  store i32 %104, i32* %7, align 4
  br label %111

105:                                              ; preds = %94
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 12
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ff_h263_inter_MCBPC_vlc, i32 0, i32 0), align 4
  %109 = load i32, i32* @INTER_MCBPC_VLC_BITS, align 4
  %110 = call i32 @get_vlc2(i32* %107, i32 %108, i32 %109, i32 2)
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %105, %99
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = icmp sgt i32 %115, 7
  br i1 %116, label %117, label %130

117:                                              ; preds = %114, %111
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @AV_LOG_ERROR, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i32, i8*, ...) @av_log(i32 %120, i32 %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %122, i32 %125, i32 %128)
  store i32 -1, i32* %3, align 4
  br label %364

130:                                              ; preds = %114
  %131 = load i32, i32* %7, align 4
  %132 = ashr i32 %131, 2
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %7, align 4
  %136 = and i32 %135, 3
  store i32 %136, i32* %6, align 4
  br label %176

137:                                              ; preds = %2
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 4
  store i32 1, i32* %139, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 2
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 12
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @v2_intra_cbpc_vlc, i32 0, i32 0), align 4
  %148 = load i32, i32* @V2_INTRA_CBPC_VLC_BITS, align 4
  %149 = call i32 @get_vlc2(i32* %146, i32 %147, i32 %148, i32 1)
  store i32 %149, i32* %6, align 4
  br label %156

150:                                              ; preds = %137
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 12
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ff_h263_intra_MCBPC_vlc, i32 0, i32 0), align 4
  %154 = load i32, i32* @INTRA_MCBPC_VLC_BITS, align 4
  %155 = call i32 @get_vlc2(i32* %152, i32 %153, i32 %154, i32 2)
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %150, %144
  %157 = load i32, i32* %6, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %6, align 4
  %161 = icmp sgt i32 %160, 3
  br i1 %161, label %162, label %175

162:                                              ; preds = %159, %156
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @AV_LOG_ERROR, align 4
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, i32, i8*, ...) @av_log(i32 %165, i32 %166, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %167, i32 %170, i32 %173)
  store i32 -1, i32* %3, align 4
  br label %364

175:                                              ; preds = %159
  br label %176

176:                                              ; preds = %175, %130
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %255, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 12
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ff_h263_cbpy_vlc, i32 0, i32 0), align 4
  %185 = load i32, i32* @CBPY_VLC_BITS, align 4
  %186 = call i32 @get_vlc2(i32* %183, i32 %184, i32 %185, i32 1)
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %12, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %181
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @AV_LOG_ERROR, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i32, i32, i8*, ...) @av_log(i32 %192, i32 %193, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %194, i32 %197, i32 %200)
  store i32 -1, i32* %3, align 4
  br label %364

202:                                              ; preds = %181
  %203 = load i32, i32* %12, align 4
  %204 = shl i32 %203, 2
  %205 = load i32, i32* %6, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %6, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 8
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %215, label %211

211:                                              ; preds = %202
  %212 = load i32, i32* %6, align 4
  %213 = and i32 %212, 3
  %214 = icmp ne i32 %213, 3
  br i1 %214, label %215, label %218

215:                                              ; preds = %211, %202
  %216 = load i32, i32* %6, align 4
  %217 = xor i32 %216, 60
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %215, %211
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %220 = call i32 @ff_h263_pred_motion(%struct.TYPE_18__* %219, i32 0, i32 0, i32* %10, i32* %11)
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @msmpeg4v2_decode_motion(%struct.TYPE_18__* %221, i32 %222, i32 1)
  store i32 %223, i32* %10, align 4
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %225 = load i32, i32* %11, align 4
  %226 = call i32 @msmpeg4v2_decode_motion(%struct.TYPE_18__* %224, i32 %225, i32 1)
  store i32 %226, i32* %11, align 4
  %227 = load i8*, i8** @MV_DIR_FORWARD, align 8
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 15
  store i8* %227, i8** %229, align 8
  %230 = load i8*, i8** @MV_TYPE_16X16, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 14
  store i8* %230, i8** %232, align 8
  %233 = load i32, i32* %10, align 4
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 6
  %236 = load i32***, i32**** %235, align 8
  %237 = getelementptr inbounds i32**, i32*** %236, i64 0
  %238 = load i32**, i32*** %237, align 8
  %239 = getelementptr inbounds i32*, i32** %238, i64 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  store i32 %233, i32* %241, align 4
  %242 = load i32, i32* %11, align 4
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 6
  %245 = load i32***, i32**** %244, align 8
  %246 = getelementptr inbounds i32**, i32*** %245, i64 0
  %247 = load i32**, i32*** %246, align 8
  %248 = getelementptr inbounds i32*, i32** %247, i64 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  store i32 %242, i32* %250, align 4
  %251 = load i32, i32* @MB_TYPE_L0, align 4
  %252 = load i32, i32* @MB_TYPE_16x16, align 4
  %253 = or i32 %251, %252
  %254 = load i32*, i32** %9, align 8
  store i32 %253, i32* %254, align 4
  br label %317

255:                                              ; preds = %176
  %256 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 8
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 2
  br i1 %259, label %260, label %284

260:                                              ; preds = %255
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 12
  %263 = call i64 @get_bits1(i32* %262)
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 13
  store i64 %263, i64* %265, align 8
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 12
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ff_h263_cbpy_vlc, i32 0, i32 0), align 4
  %269 = load i32, i32* @CBPY_VLC_BITS, align 4
  %270 = call i32 @get_vlc2(i32* %267, i32 %268, i32 %269, i32 1)
  store i32 %270, i32* %13, align 4
  %271 = load i32, i32* %13, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %260
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 9
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @AV_LOG_ERROR, align 4
  %278 = call i32 (i32, i32, i8*, ...) @av_log(i32 %276, i32 %277, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %364

279:                                              ; preds = %260
  %280 = load i32, i32* %13, align 4
  %281 = shl i32 %280, 2
  %282 = load i32, i32* %6, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %6, align 4
  br label %314

284:                                              ; preds = %255
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 13
  store i64 0, i64* %286, align 8
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 12
  %289 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ff_h263_cbpy_vlc, i32 0, i32 0), align 4
  %290 = load i32, i32* @CBPY_VLC_BITS, align 4
  %291 = call i32 @get_vlc2(i32* %288, i32 %289, i32 %290, i32 1)
  store i32 %291, i32* %13, align 4
  %292 = load i32, i32* %13, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %284
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 9
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @AV_LOG_ERROR, align 4
  %299 = call i32 (i32, i32, i8*, ...) @av_log(i32 %297, i32 %298, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %364

300:                                              ; preds = %284
  %301 = load i32, i32* %13, align 4
  %302 = shl i32 %301, 2
  %303 = load i32, i32* %6, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %6, align 4
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %300
  %311 = load i32, i32* %6, align 4
  %312 = xor i32 %311, 60
  store i32 %312, i32* %6, align 4
  br label %313

313:                                              ; preds = %310, %300
  br label %314

314:                                              ; preds = %313, %279
  %315 = load i32, i32* @MB_TYPE_INTRA, align 4
  %316 = load i32*, i32** %9, align 8
  store i32 %315, i32* %316, align 4
  br label %317

317:                                              ; preds = %314, %218
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 11
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 0
  %321 = load i32 (i32)*, i32 (i32)** %320, align 8
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i32 0, i32 10
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  %326 = load i32, i32* %325, align 4
  %327 = call i32 %321(i32 %326)
  store i32 0, i32* %8, align 4
  br label %328

328:                                              ; preds = %360, %317
  %329 = load i32, i32* %8, align 4
  %330 = icmp slt i32 %329, 6
  br i1 %330, label %331, label %363

331:                                              ; preds = %328
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %333 = load [64 x i32]*, [64 x i32]** %5, align 8
  %334 = load i32, i32* %8, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [64 x i32], [64 x i32]* %333, i64 %335
  %337 = getelementptr inbounds [64 x i32], [64 x i32]* %336, i64 0, i64 0
  %338 = load i32, i32* %8, align 4
  %339 = load i32, i32* %6, align 4
  %340 = load i32, i32* %8, align 4
  %341 = sub nsw i32 5, %340
  %342 = ashr i32 %339, %341
  %343 = and i32 %342, 1
  %344 = call i64 @ff_msmpeg4_decode_block(%struct.TYPE_18__* %332, i32* %337, i32 %338, i32 %343, i32* null)
  %345 = icmp slt i64 %344, 0
  br i1 %345, label %346, label %359

346:                                              ; preds = %331
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 9
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @AV_LOG_ERROR, align 4
  %351 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %8, align 4
  %358 = call i32 (i32, i32, i8*, ...) @av_log(i32 %349, i32 %350, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %353, i32 %356, i32 %357)
  store i32 -1, i32* %3, align 4
  br label %364

359:                                              ; preds = %331
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %8, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %8, align 4
  br label %328

363:                                              ; preds = %328
  store i32 0, i32* %3, align 4
  br label %364

364:                                              ; preds = %363, %346, %294, %273, %189, %162, %117, %62
  %365 = load i32, i32* %3, align 4
  ret i32 %365
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @ff_h263_pred_motion(%struct.TYPE_18__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @msmpeg4v2_decode_motion(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @ff_msmpeg4_decode_block(%struct.TYPE_18__*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
