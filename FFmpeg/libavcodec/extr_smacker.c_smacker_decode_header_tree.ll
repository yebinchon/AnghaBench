; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smacker.c_smacker_decode_header_tree.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smacker.c_smacker_decode_header_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32*, i32*, i32*, i64 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32*, i32*, i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_11__* }

@UINT_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"size too large\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMKTREE_BITS = common dso_local global i32 0, align 4
@INIT_VLC_LE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot build VLC table\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Skipping low bytes tree\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Skipping high bytes tree\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Huffman codes out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32**, i32*, i32)* @smacker_decode_header_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smacker_decode_header_tree(%struct.TYPE_12__* %0, i32* %1, i32** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca %struct.TYPE_13__, align 8
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca [2 x %struct.TYPE_11__], align 16
  %17 = alloca [3 x i32], align 4
  %18 = alloca %struct.TYPE_14__, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = bitcast [2 x %struct.TYPE_11__]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 32, i1 false)
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @UINT_MAX, align 4
  %23 = ashr i32 %22, 4
  %24 = icmp sge i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = call i32 @av_log(i32 %28, i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %6, align 4
  br label %362

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32 256, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = call i8* @av_mallocz(i32 1024)
  %37 = bitcast i8* %36 to i32*
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  store i32* %37, i32** %38, align 8
  %39 = call i8* @av_mallocz(i32 1024)
  %40 = bitcast i8* %39 to i32*
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  store i32* %40, i32** %41, align 8
  %42 = call i8* @av_mallocz(i32 1024)
  %43 = bitcast i8* %42 to i32*
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  store i32* %43, i32** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32 256, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = call i8* @av_mallocz(i32 1024)
  %49 = bitcast i8* %48 to i32*
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  store i32* %49, i32** %50, align 8
  %51 = call i8* @av_mallocz(i32 1024)
  %52 = bitcast i8* %51 to i32*
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  store i32* %52, i32** %53, align 8
  %54 = call i8* @av_mallocz(i32 1024)
  %55 = bitcast i8* %54 to i32*
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 4
  store i32* %55, i32** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %32
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76, %72, %68, %64, %60, %32
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = call i32 @AVERROR(i32 %81)
  store i32 %82, i32* %19, align 4
  br label %326

83:                                               ; preds = %76
  %84 = load i32*, i32** %8, align 8
  %85 = call i64 @get_bits1(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %122

87:                                               ; preds = %83
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @smacker_decode_tree(i32* %88, %struct.TYPE_13__* %14, i32 0, i32 0)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %19, align 4
  br label %326

94:                                               ; preds = %87
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @skip_bits1(i32* %95)
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %121

100:                                              ; preds = %94
  %101 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %102 = load i32, i32* @SMKTREE_BITS, align 4
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* @INIT_VLC_LE, align 4
  %110 = call i32 @init_vlc(%struct.TYPE_11__* %101, i32 %102, i32 %104, i32* %106, i32 4, i32 4, i32* %108, i32 4, i32 4, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %100
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @AV_LOG_ERROR, align 4
  %118 = call i32 @av_log(i32 %116, i32 %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %19, align 4
  br label %326

120:                                              ; preds = %100
  br label %121

121:                                              ; preds = %120, %94
  br label %122

122:                                              ; preds = %121, %83
  %123 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 16
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AV_LOG_ERROR, align 4
  %132 = call i32 @av_log(i32 %130, i32 %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %127, %122
  %134 = load i32*, i32** %8, align 8
  %135 = call i64 @get_bits1(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %172

137:                                              ; preds = %133
  %138 = load i32*, i32** %8, align 8
  %139 = call i32 @smacker_decode_tree(i32* %138, %struct.TYPE_13__* %15, i32 0, i32 0)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %19, align 4
  br label %326

144:                                              ; preds = %137
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @skip_bits1(i32* %145)
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp sgt i32 %148, 1
  br i1 %149, label %150, label %171

150:                                              ; preds = %144
  %151 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %16, i64 0, i64 1
  %152 = load i32, i32* @SMKTREE_BITS, align 4
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* @INIT_VLC_LE, align 4
  %160 = call i32 @init_vlc(%struct.TYPE_11__* %151, i32 %152, i32 %154, i32* %156, i32 4, i32 4, i32* %158, i32 4, i32 4, i32 %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %150
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @AV_LOG_ERROR, align 4
  %168 = call i32 @av_log(i32 %166, i32 %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %169 = load i32, i32* %12, align 4
  store i32 %169, i32* %19, align 4
  br label %326

170:                                              ; preds = %150
  br label %171

171:                                              ; preds = %170, %144
  br label %172

172:                                              ; preds = %171, %133
  %173 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %16, i64 0, i64 1
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 16
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %172
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @AV_LOG_ERROR, align 4
  %182 = call i32 @av_log(i32 %180, i32 %181, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %183

183:                                              ; preds = %177, %172
  %184 = load i32*, i32** %8, align 8
  %185 = call i32 @get_bits(i32* %184, i32 16)
  %186 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  store i32 %185, i32* %186, align 4
  %187 = load i32*, i32** %8, align 8
  %188 = call i32 @get_bits(i32* %187, i32 16)
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  store i32 %188, i32* %189, align 4
  %190 = load i32*, i32** %8, align 8
  %191 = call i32 @get_bits(i32* %190, i32 16)
  %192 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  store i32 %191, i32* %192, align 4
  %193 = load i32*, i32** %10, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  store i32 -1, i32* %194, align 4
  %195 = load i32*, i32** %10, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  store i32 -1, i32* %196, align 4
  %197 = load i32*, i32** %10, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  store i32 -1, i32* %198, align 4
  %199 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  store i32 %200, i32* %203, align 4
  %204 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  store i32 %205, i32* %208, align 4
  %209 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  store i32 %210, i32* %213, align 4
  %214 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 5
  store %struct.TYPE_11__* %214, %struct.TYPE_11__** %215, align 8
  %216 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %16, i64 0, i64 1
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 4
  store %struct.TYPE_11__* %216, %struct.TYPE_11__** %217, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i32* %219, i32** %220, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 4
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  store i32* %222, i32** %223, align 8
  %224 = load i32*, i32** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  store i32* %224, i32** %225, align 8
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 3
  %228 = ashr i32 %227, 2
  %229 = add nsw i32 %228, 4
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %229, i32* %230, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 5
  store i64 0, i64* %231, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i32 0, i32* %232, align 4
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32* @av_mallocz_array(i32 %234, i32 4)
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  store i32* %235, i32** %236, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %243, label %240

240:                                              ; preds = %183
  %241 = load i32, i32* @ENOMEM, align 4
  %242 = call i32 @AVERROR(i32 %241)
  store i32 %242, i32* %19, align 4
  br label %326

243:                                              ; preds = %183
  %244 = load i32*, i32** %8, align 8
  %245 = call i32 @smacker_decode_bigtree(i32* %244, %struct.TYPE_13__* %13, %struct.TYPE_14__* %18, i32 0)
  store i32 %245, i32* %12, align 4
  %246 = load i32, i32* %12, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = load i32, i32* %12, align 4
  store i32 %249, i32* %19, align 4
  br label %250

250:                                              ; preds = %248, %243
  %251 = load i32*, i32** %8, align 8
  %252 = call i32 @skip_bits1(i32* %251)
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, -1
  br i1 %257, label %258, label %265

258:                                              ; preds = %250
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 4
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  store i32 %260, i32* %264, align 4
  br label %265

265:                                              ; preds = %258, %250
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, -1
  br i1 %270, label %271, label %278

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %272, align 4
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  store i32 %273, i32* %277, align 4
  br label %278

278:                                              ; preds = %271, %265
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 2
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %284, label %291

284:                                              ; preds = %278
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 2
  store i32 %286, i32* %290, align 4
  br label %291

291:                                              ; preds = %284, %278
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp sge i32 %295, %297
  br i1 %298, label %315, label %299

299:                                              ; preds = %291
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 1
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp sge i32 %303, %305
  br i1 %306, label %315, label %307

307:                                              ; preds = %299
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 2
  %311 = load i32, i32* %310, align 4
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = icmp sge i32 %311, %313
  br i1 %314, label %315, label %322

315:                                              ; preds = %307, %299, %291
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @AV_LOG_ERROR, align 4
  %320 = call i32 @av_log(i32 %318, i32 %319, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %321 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %321, i32* %19, align 4
  br label %322

322:                                              ; preds = %315, %307
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 4
  %324 = load i32*, i32** %323, align 8
  %325 = load i32**, i32*** %9, align 8
  store i32* %324, i32** %325, align 8
  br label %326

326:                                              ; preds = %322, %240, %163, %142, %113, %92, %80
  %327 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 16
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %326
  %332 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %16, i64 0, i64 0
  %333 = call i32 @ff_free_vlc(%struct.TYPE_11__* %332)
  br label %334

334:                                              ; preds = %331, %326
  %335 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %16, i64 0, i64 1
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 16
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %334
  %340 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %16, i64 0, i64 1
  %341 = call i32 @ff_free_vlc(%struct.TYPE_11__* %340)
  br label %342

342:                                              ; preds = %339, %334
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %344 = load i32*, i32** %343, align 8
  %345 = call i32 @av_free(i32* %344)
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %347 = load i32*, i32** %346, align 8
  %348 = call i32 @av_free(i32* %347)
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  %350 = load i32*, i32** %349, align 8
  %351 = call i32 @av_free(i32* %350)
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %353 = load i32*, i32** %352, align 8
  %354 = call i32 @av_free(i32* %353)
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @av_free(i32* %356)
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 4
  %359 = load i32*, i32** %358, align 8
  %360 = call i32 @av_free(i32* %359)
  %361 = load i32, i32* %19, align 4
  store i32 %361, i32* %6, align 4
  br label %362

362:                                              ; preds = %342, %25
  %363 = load i32, i32* %6, align 4
  ret i32 %363
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_log(i32, i32, i8*) #2

declare dso_local i8* @av_mallocz(i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i64 @get_bits1(i32*) #2

declare dso_local i32 @smacker_decode_tree(i32*, %struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @skip_bits1(i32*) #2

declare dso_local i32 @init_vlc(%struct.TYPE_11__*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32* @av_mallocz_array(i32, i32) #2

declare dso_local i32 @smacker_decode_bigtree(i32*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @ff_free_vlc(%struct.TYPE_11__*) #2

declare dso_local i32 @av_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
