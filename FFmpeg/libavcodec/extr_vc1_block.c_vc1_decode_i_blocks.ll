; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_i_blocks.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_block.c_vc1_decode_i_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i64, i32, i32***, i64, i32**, i32, i32, i32, %struct.TYPE_23__, i32, i64, i64, %struct.TYPE_20__, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, i64*, i32, i32, i64, i32, %struct.TYPE_18__*, i32, %struct.TYPE_19__, %struct.TYPE_21__, i32*, i32, i32*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i64*, i64***, i32* }
%struct.TYPE_21__ = type { i32 (i32*)* }
%struct.TYPE_20__ = type { i32 (i32*)* }

@CS_HIGH_RATE_INTRA = common dso_local global i32 0, align 4
@CS_LOW_MOT_INTRA = common dso_local global i32 0, align 4
@CS_HIGH_MOT_INTRA = common dso_local global i32 0, align 4
@CS_MID_RATE_INTRA = common dso_local global i32 0, align 4
@CS_HIGH_RATE_INTER = common dso_local global i32 0, align 4
@CS_LOW_MOT_INTER = common dso_local global i32 0, align 4
@CS_HIGH_MOT_INTER = common dso_local global i32 0, align 4
@CS_MID_RATE_INTER = common dso_local global i32 0, align 4
@MB_TYPE_INTRA = common dso_local global i32 0, align 4
@ff_msmp4_mb_i_vlc = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@MB_INTRA_VLC_BITS = common dso_local global i32 0, align 4
@block_map = common dso_local global i64* null, align 8
@CONFIG_GRAY = common dso_local global i64 0, align 8
@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4
@ER_MB_ERROR = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Bits overconsumption: %i > %i\0A\00", align 1
@ER_MB_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @vc1_decode_i_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc1_decode_i_blocks(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 11
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %5, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %38 [
    i32 0, label %17
    i32 1, label %30
    i32 2, label %34
  ]

17:                                               ; preds = %1
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @CS_HIGH_RATE_INTRA, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @CS_LOW_MOT_INTRA, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 17
  store i32 %27, i32* %29, align 4
  br label %38

30:                                               ; preds = %1
  %31 = load i32, i32* @CS_HIGH_MOT_INTRA, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 17
  store i32 %31, i32* %33, align 4
  br label %38

34:                                               ; preds = %1
  %35 = load i32, i32* @CS_MID_RATE_INTRA, align 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 17
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %1, %34, %30, %26
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %63 [
    i32 0, label %42
    i32 1, label %55
    i32 2, label %59
  ]

42:                                               ; preds = %38
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sle i32 %45, 8
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @CS_HIGH_RATE_INTER, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @CS_LOW_MOT_INTER, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 16
  store i32 %52, i32* %54, align 8
  br label %63

55:                                               ; preds = %38
  %56 = load i32, i32* @CS_HIGH_MOT_INTER, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 16
  store i32 %56, i32* %58, align 8
  br label %63

59:                                               ; preds = %38
  %60 = load i32, i32* @CS_MID_RATE_INTER, align 4
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 16
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %38, %59, %55, %51
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 18
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 19
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 16
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 17
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  store i32 0, i32* %85, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 2
  store i32 1, i32* %89, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 3
  store i32 1, i32* %91, align 4
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %570, %63
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %575

105:                                              ; preds = %97
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %109 = call i32 @init_block_index(%struct.TYPE_22__* %108)
  br label %110

110:                                              ; preds = %535, %105
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %540

118:                                              ; preds = %110
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %120 = call i32 @ff_update_block_index(%struct.TYPE_23__* %119)
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i32 (i32*)*, i32 (i32*)** %123, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 5
  %127 = load i32***, i32**** %126, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32**, i32*** %127, i64 %130
  %132 = load i32**, i32*** %131, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 %124(i32* %134)
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %141, %144
  %146 = add nsw i32 %138, %145
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* @MB_TYPE_INTRA, align 4
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 14
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %147, i32* %154, align 4
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 14
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  store i64 %157, i64* %164, align 8
  store i32 0, i32* %10, align 4
  br label %165

165:                                              ; preds = %201, %118
  %166 = load i32, i32* %10, align 4
  %167 = icmp slt i32 %166, 4
  br i1 %167, label %168, label %204

168:                                              ; preds = %165
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 14
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 1
  %172 = load i64***, i64**** %171, align 8
  %173 = getelementptr inbounds i64**, i64*** %172, i64 1
  %174 = load i64**, i64*** %173, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 7
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i64*, i64** %174, i64 %181
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 0
  store i64 0, i64* %184, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 14
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 1
  %188 = load i64***, i64**** %187, align 8
  %189 = getelementptr inbounds i64**, i64*** %188, i64 1
  %190 = load i64**, i64*** %189, align 8
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 7
  %193 = load i64*, i64** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i64*, i64** %190, i64 %197
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 1
  store i64 0, i64* %200, align 8
  br label %201

201:                                              ; preds = %168
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %165

204:                                              ; preds = %165
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 11
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 11
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ff_msmp4_mb_i_vlc, i32 0, i32 0), align 4
  %209 = load i32, i32* @MB_INTRA_VLC_BITS, align 4
  %210 = call i32 @get_vlc2(i32* %207, i32 %208, i32 %209, i32 2)
  store i32 %210, i32* %6, align 4
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 11
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 11
  %214 = call i32 @get_bits1(i32* %213)
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 11
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 13
  store i32 %214, i32* %217, align 8
  store i32 0, i32* %3, align 4
  br label %218

218:                                              ; preds = %326, %204
  %219 = load i32, i32* %3, align 4
  %220 = icmp slt i32 %219, 6
  br i1 %220, label %221, label %329

221:                                              ; preds = %218
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 7
  %224 = load i32**, i32*** %223, align 8
  %225 = getelementptr inbounds i32*, i32** %224, i64 0
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 7
  %229 = load i64*, i64** %228, align 8
  %230 = load i32, i32* %3, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds i32, i32* %226, i64 %233
  store i32 1, i32* %234, align 4
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* %3, align 4
  %237 = sub nsw i32 5, %236
  %238 = ashr i32 %235, %237
  %239 = and i32 %238, 1
  store i32 %239, i32* %7, align 4
  %240 = load i32, i32* %3, align 4
  %241 = icmp slt i32 %240, 4
  br i1 %241, label %242, label %252

242:                                              ; preds = %221
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 11
  %245 = load i32, i32* %3, align 4
  %246 = call i32 @vc1_coded_block_pred(%struct.TYPE_23__* %244, i32 %245, i32** %8)
  store i32 %246, i32* %11, align 4
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* %11, align 4
  %249 = xor i32 %247, %248
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = load i32*, i32** %8, align 8
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %242, %221
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* %3, align 4
  %255 = sub nsw i32 5, %254
  %256 = shl i32 %253, %255
  %257 = load i32, i32* %6, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %6, align 4
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 5
  %262 = load i32***, i32**** %261, align 8
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 6
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds i32**, i32*** %262, i64 %265
  %267 = load i32**, i32*** %266, align 8
  %268 = load i64*, i64** @block_map, align 8
  %269 = load i32, i32* %3, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds i32*, i32** %267, i64 %272
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %3, align 4
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* %3, align 4
  %278 = icmp slt i32 %277, 4
  br i1 %278, label %279, label %283

279:                                              ; preds = %252
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 17
  %282 = load i32, i32* %281, align 4
  br label %287

283:                                              ; preds = %252
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 16
  %286 = load i32, i32* %285, align 8
  br label %287

287:                                              ; preds = %283, %279
  %288 = phi i32 [ %282, %279 ], [ %286, %283 ]
  %289 = call i32 @vc1_decode_i_block(%struct.TYPE_22__* %259, i32* %274, i32 %275, i32 %276, i32 %288)
  %290 = load i64, i64* @CONFIG_GRAY, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %305

292:                                              ; preds = %287
  %293 = load i32, i32* %3, align 4
  %294 = icmp sgt i32 %293, 3
  br i1 %294, label %295, label %305

295:                                              ; preds = %292
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %296, i32 0, i32 12
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %295
  br label %326

305:                                              ; preds = %295, %292, %287
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 15
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 0
  %309 = load i32 (i32*)*, i32 (i32*)** %308, align 8
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 5
  %312 = load i32***, i32**** %311, align 8
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i32 0, i32 6
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds i32**, i32*** %312, i64 %315
  %317 = load i32**, i32*** %316, align 8
  %318 = load i64*, i64** @block_map, align 8
  %319 = load i32, i32* %3, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %318, i64 %320
  %322 = load i64, i64* %321, align 8
  %323 = getelementptr inbounds i32*, i32** %317, i64 %322
  %324 = load i32*, i32** %323, align 8
  %325 = call i32 %309(i32* %324)
  br label %326

326:                                              ; preds = %305, %304
  %327 = load i32, i32* %3, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %3, align 4
  br label %218

329:                                              ; preds = %218
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 14
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %386

334:                                              ; preds = %329
  %335 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i32 0, i32 3
  %337 = load i64, i64* %336, align 8
  %338 = icmp uge i64 %337, 9
  br i1 %338, label %339, label %386

339:                                              ; preds = %334
  %340 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %341 = call i32 @ff_vc1_i_overlap_filter(%struct.TYPE_22__* %340)
  %342 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %343 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %342, i32 0, i32 13
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %383

346:                                              ; preds = %339
  store i32 0, i32* %3, align 4
  br label %347

347:                                              ; preds = %379, %346
  %348 = load i32, i32* %3, align 4
  %349 = icmp slt i32 %348, 6
  br i1 %349, label %350, label %382

350:                                              ; preds = %347
  store i32 0, i32* %4, align 4
  br label %351

351:                                              ; preds = %375, %350
  %352 = load i32, i32* %4, align 4
  %353 = icmp slt i32 %352, 64
  br i1 %353, label %354, label %378

354:                                              ; preds = %351
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i32 0, i32 5
  %357 = load i32***, i32**** %356, align 8
  %358 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %359 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %358, i32 0, i32 6
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds i32**, i32*** %357, i64 %360
  %362 = load i32**, i32*** %361, align 8
  %363 = load i64*, i64** @block_map, align 8
  %364 = load i32, i32* %3, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i64, i64* %363, i64 %365
  %367 = load i64, i64* %366, align 8
  %368 = getelementptr inbounds i32*, i32** %362, i64 %367
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %4, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = mul nsw i32 %373, 2
  store i32 %374, i32* %372, align 4
  br label %375

375:                                              ; preds = %354
  %376 = load i32, i32* %4, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %4, align 4
  br label %351

378:                                              ; preds = %351
  br label %379

379:                                              ; preds = %378
  %380 = load i32, i32* %3, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %3, align 4
  br label %347

382:                                              ; preds = %347
  br label %383

383:                                              ; preds = %382, %339
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %385 = call i32 @vc1_put_blocks_clamped(%struct.TYPE_22__* %384, i32 1)
  br label %450

386:                                              ; preds = %334, %329
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 13
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %447

391:                                              ; preds = %386
  store i32 0, i32* %3, align 4
  br label %392

392:                                              ; preds = %443, %391
  %393 = load i32, i32* %3, align 4
  %394 = icmp slt i32 %393, 6
  br i1 %394, label %395, label %446

395:                                              ; preds = %392
  store i32 0, i32* %4, align 4
  br label %396

396:                                              ; preds = %439, %395
  %397 = load i32, i32* %4, align 4
  %398 = icmp slt i32 %397, 64
  br i1 %398, label %399, label %442

399:                                              ; preds = %396
  %400 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %401 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %400, i32 0, i32 5
  %402 = load i32***, i32**** %401, align 8
  %403 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %404 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %403, i32 0, i32 6
  %405 = load i64, i64* %404, align 8
  %406 = getelementptr inbounds i32**, i32*** %402, i64 %405
  %407 = load i32**, i32*** %406, align 8
  %408 = load i64*, i64** @block_map, align 8
  %409 = load i32, i32* %3, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i64, i64* %408, i64 %410
  %412 = load i64, i64* %411, align 8
  %413 = getelementptr inbounds i32*, i32** %407, i64 %412
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %4, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = sub nsw i32 %418, 64
  %420 = mul nsw i32 %419, 2
  %421 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %422 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %421, i32 0, i32 5
  %423 = load i32***, i32**** %422, align 8
  %424 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %425 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %424, i32 0, i32 6
  %426 = load i64, i64* %425, align 8
  %427 = getelementptr inbounds i32**, i32*** %423, i64 %426
  %428 = load i32**, i32*** %427, align 8
  %429 = load i64*, i64** @block_map, align 8
  %430 = load i32, i32* %3, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i64, i64* %429, i64 %431
  %433 = load i64, i64* %432, align 8
  %434 = getelementptr inbounds i32*, i32** %428, i64 %433
  %435 = load i32*, i32** %434, align 8
  %436 = load i32, i32* %4, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  store i32 %420, i32* %438, align 4
  br label %439

439:                                              ; preds = %399
  %440 = load i32, i32* %4, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %4, align 4
  br label %396

442:                                              ; preds = %396
  br label %443

443:                                              ; preds = %442
  %444 = load i32, i32* %3, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %3, align 4
  br label %392

446:                                              ; preds = %392
  br label %447

447:                                              ; preds = %446, %386
  %448 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %449 = call i32 @vc1_put_blocks_clamped(%struct.TYPE_22__* %448, i32 0)
  br label %450

450:                                              ; preds = %447, %383
  %451 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %452 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %451, i32 0, i32 11
  %453 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %452, i32 0, i32 10
  %454 = load i64, i64* %453, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %459

456:                                              ; preds = %450
  %457 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %458 = call i32 @ff_vc1_i_loop_filter(%struct.TYPE_22__* %457)
  br label %459

459:                                              ; preds = %456, %450
  %460 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %460, i32 0, i32 11
  %462 = call i32 @get_bits_count(i32* %461)
  %463 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %464 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %463, i32 0, i32 12
  %465 = load i32, i32* %464, align 8
  %466 = icmp sgt i32 %462, %465
  br i1 %466, label %467, label %489

467:                                              ; preds = %459
  %468 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %468, i32 0, i32 9
  %470 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %474 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* @ER_MB_ERROR, align 4
  %477 = call i32 @ff_er_add_slice(i32* %469, i32 0, i32 0, i32 %472, i32 %475, i32 %476)
  %478 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %478, i32 0, i32 12
  %480 = load %struct.TYPE_18__*, %struct.TYPE_18__** %479, align 8
  %481 = load i32, i32* @AV_LOG_ERROR, align 4
  %482 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %482, i32 0, i32 11
  %484 = call i32 @get_bits_count(i32* %483)
  %485 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %486 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %485, i32 0, i32 12
  %487 = load i32, i32* %486, align 8
  %488 = call i32 @av_log(%struct.TYPE_18__* %480, i32 %481, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %484, i32 %487)
  br label %602

489:                                              ; preds = %459
  %490 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %491 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %490, i32 0, i32 8
  %492 = load i32, i32* %491, align 8
  %493 = add nsw i32 %492, 1
  %494 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %495 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %494, i32 0, i32 4
  %496 = load i32, i32* %495, align 8
  %497 = add nsw i32 %496, 2
  %498 = srem i32 %493, %497
  %499 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %500 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %499, i32 0, i32 8
  store i32 %498, i32* %500, align 8
  %501 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %502 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %501, i32 0, i32 9
  %503 = load i32, i32* %502, align 4
  %504 = add nsw i32 %503, 1
  %505 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %506 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %505, i32 0, i32 4
  %507 = load i32, i32* %506, align 8
  %508 = add nsw i32 %507, 2
  %509 = srem i32 %504, %508
  %510 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %511 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %510, i32 0, i32 9
  store i32 %509, i32* %511, align 4
  %512 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %513 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %512, i32 0, i32 10
  %514 = load i32, i32* %513, align 8
  %515 = add nsw i32 %514, 1
  %516 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %517 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %516, i32 0, i32 4
  %518 = load i32, i32* %517, align 8
  %519 = add nsw i32 %518, 2
  %520 = srem i32 %515, %519
  %521 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %522 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %521, i32 0, i32 10
  store i32 %520, i32* %522, align 8
  %523 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %524 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %523, i32 0, i32 6
  %525 = load i64, i64* %524, align 8
  %526 = add i64 %525, 1
  %527 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %528 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %527, i32 0, i32 4
  %529 = load i32, i32* %528, align 8
  %530 = add nsw i32 %529, 2
  %531 = sext i32 %530 to i64
  %532 = urem i64 %526, %531
  %533 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %534 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %533, i32 0, i32 6
  store i64 %532, i64* %534, align 8
  br label %535

535:                                              ; preds = %489
  %536 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %537 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %537, align 8
  br label %110

540:                                              ; preds = %110
  %541 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %542 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %541, i32 0, i32 11
  %543 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %542, i32 0, i32 10
  %544 = load i64, i64* %543, align 8
  %545 = icmp ne i64 %544, 0
  br i1 %545, label %553, label %546

546:                                              ; preds = %540
  %547 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %548 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %549 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %548, i32 0, i32 1
  %550 = load i32, i32* %549, align 4
  %551 = mul nsw i32 %550, 16
  %552 = call i32 @ff_mpeg_draw_horiz_band(%struct.TYPE_23__* %547, i32 %551, i32 16)
  br label %567

553:                                              ; preds = %540
  %554 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %555 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %566

558:                                              ; preds = %553
  %559 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %560 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %561 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = sub nsw i32 %562, 1
  %564 = mul nsw i32 %563, 16
  %565 = call i32 @ff_mpeg_draw_horiz_band(%struct.TYPE_23__* %559, i32 %564, i32 16)
  br label %566

566:                                              ; preds = %558, %553
  br label %567

567:                                              ; preds = %566, %546
  %568 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %569 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %568, i32 0, i32 3
  store i32 0, i32* %569, align 4
  br label %570

570:                                              ; preds = %567
  %571 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %572 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 4
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %572, align 4
  br label %97

575:                                              ; preds = %97
  %576 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %577 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %576, i32 0, i32 11
  %578 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %577, i32 0, i32 10
  %579 = load i64, i64* %578, align 8
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %581, label %589

581:                                              ; preds = %575
  %582 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %583 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %584 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %583, i32 0, i32 5
  %585 = load i32, i32* %584, align 4
  %586 = sub nsw i32 %585, 1
  %587 = mul nsw i32 %586, 16
  %588 = call i32 @ff_mpeg_draw_horiz_band(%struct.TYPE_23__* %582, i32 %587, i32 16)
  br label %589

589:                                              ; preds = %581, %575
  %590 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %590, i32 0, i32 9
  %592 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %593 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %592, i32 0, i32 6
  %594 = load i32, i32* %593, align 8
  %595 = sub nsw i32 %594, 1
  %596 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %597 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %596, i32 0, i32 8
  %598 = load i32, i32* %597, align 8
  %599 = sub nsw i32 %598, 1
  %600 = load i32, i32* @ER_MB_END, align 4
  %601 = call i32 @ff_er_add_slice(i32* %591, i32 0, i32 0, i32 %595, i32 %599, i32 %600)
  br label %602

602:                                              ; preds = %589, %467
  ret void
}

declare dso_local i32 @init_block_index(%struct.TYPE_22__*) #1

declare dso_local i32 @ff_update_block_index(%struct.TYPE_23__*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @vc1_coded_block_pred(%struct.TYPE_23__*, i32, i32**) #1

declare dso_local i32 @vc1_decode_i_block(%struct.TYPE_22__*, i32*, i32, i32, i32) #1

declare dso_local i32 @ff_vc1_i_overlap_filter(%struct.TYPE_22__*) #1

declare dso_local i32 @vc1_put_blocks_clamped(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ff_vc1_i_loop_filter(%struct.TYPE_22__*) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @ff_er_add_slice(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, i32, i32) #1

declare dso_local i32 @ff_mpeg_draw_horiz_band(%struct.TYPE_23__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
