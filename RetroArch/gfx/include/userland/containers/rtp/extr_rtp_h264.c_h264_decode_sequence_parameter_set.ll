; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_decode_sequence_parameter_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_decode_sequence_parameter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"profile_idc\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Rest of profile_level_id\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"seq_parameter_set_id\00", align 1
@CHROMA_FORMAT_RGB = common dso_local global i32 0, align 4
@CHROMA_FORMAT_YUV_444_PLANAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"log2_max_frame_num_minus4\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"pic_order_cnt_type\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"log2_max_pic_order_cnt_lsb_minus4\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"delta_pic_order_always_zero_flag\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"offset_for_non_ref_pic\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"offset_for_top_to_bottom_field\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"num_ref_frames_in_pic_order_cnt_cycle\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"offset_for_ref_frame\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"max_num_ref_frames\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"gaps_in_frame_num_value_allowed_flag\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"pic_width_in_mbs_minus1\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"pic_height_in_map_units_minus1\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"frame_mbs_only_flag\00", align 1
@MACROBLOCK_WIDTH = common dso_local global i32 0, align 4
@MACROBLOCK_HEIGHT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"mb_adaptive_frame_field_flag\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"direct_8x8_inference_flag\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"frame_cropping_flag\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"frame_crop_left_offset\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"frame_crop_right_offset\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"frame_crop_top_offset\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"frame_crop_bottom_offset\00", align 1
@chroma_sub_width = common dso_local global i32* null, align 8
@chroma_sub_height = common dso_local global i32* null, align 8
@.str.23 = private unnamed_addr constant [70 x i8] c"H.264: frame crop offsets (%u, %u, %u, %u) larger than frame (%u, %u)\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [47 x i8] c"H.264: sequence_parameter_set failed to decode\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32*)* @h264_decode_sequence_parameter_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_decode_sequence_parameter_set(i32* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %8, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @BITS_READ_U8(i32* %27, i32* %28, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %18, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @BITS_SKIP(i32* %30, i32* %31, i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @BITS_READ_U32_EXP(i32* %33, i32* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @CHROMA_FORMAT_RGB, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp eq i32 %37, 100
  br i1 %38, label %63, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* %18, align 4
  %41 = icmp eq i32 %40, 110
  br i1 %41, label %63, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %18, align 4
  %44 = icmp eq i32 %43, 122
  br i1 %44, label %63, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %18, align 4
  %47 = icmp eq i32 %46, 244
  br i1 %47, label %63, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %18, align 4
  %50 = icmp eq i32 %49, 44
  br i1 %50, label %63, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %18, align 4
  %53 = icmp eq i32 %52, 83
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %18, align 4
  %56 = icmp eq i32 %55, 86
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %18, align 4
  %59 = icmp eq i32 %58, 118
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %18, align 4
  %62 = icmp eq i32 %61, 128
  br i1 %62, label %63, label %72

63:                                               ; preds = %60, %57, %54, %51, %48, %45, %42, %39, %3
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @h264_get_chroma_format(i32* %64, i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @CHROMA_FORMAT_YUV_444_PLANAR, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %278

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @BITS_SKIP_EXP(i32* %73, i32* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @BITS_READ_U32_EXP(i32* %76, i32* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @BITS_SKIP_EXP(i32* %82, i32* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %114

85:                                               ; preds = %72
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %113

88:                                               ; preds = %85
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @BITS_SKIP(i32* %89, i32* %90, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @BITS_SKIP_EXP(i32* %92, i32* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %95 = load i32*, i32** %5, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @BITS_SKIP_EXP(i32* %95, i32* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %98 = load i32*, i32** %5, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @BITS_READ_U32_EXP(i32* %98, i32* %99, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  store i32 %100, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %101

101:                                              ; preds = %109, %88
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i32*, i32** %5, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @BITS_SKIP_EXP(i32* %106, i32* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %20, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %20, align 4
  br label %101

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %85
  br label %114

114:                                              ; preds = %113, %81
  %115 = load i32*, i32** %5, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = call i32 @BITS_SKIP_EXP(i32* %115, i32* %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %118 = load i32*, i32** %5, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @BITS_SKIP(i32* %118, i32* %119, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %121 = load i32*, i32** %5, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 @BITS_READ_U32_EXP(i32* %121, i32* %122, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  store i32 %123, i32* %11, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @BITS_READ_U32_EXP(i32* %124, i32* %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  store i32 %126, i32* %12, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @BITS_READ_U32(i32* %127, i32* %128, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  %132 = load i32, i32* @MACROBLOCK_WIDTH, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %13, align 4
  %137 = sub nsw i32 2, %136
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  %140 = mul nsw i32 %137, %139
  %141 = load i32, i32* @MACROBLOCK_HEIGHT, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %114
  %148 = load i32*, i32** %5, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = call i32 @BITS_SKIP(i32* %148, i32* %149, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  br label %151

151:                                              ; preds = %147, %114
  %152 = load i32*, i32** %5, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 @BITS_SKIP(i32* %152, i32* %153, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0))
  %155 = load i32*, i32** %5, align 8
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @BITS_READ_U32(i32* %155, i32* %156, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %259

159:                                              ; preds = %151
  %160 = load i32*, i32** %5, align 8
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @BITS_READ_U32_EXP(i32* %160, i32* %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  store i32 %162, i32* %14, align 4
  %163 = load i32*, i32** %5, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @BITS_READ_U32_EXP(i32* %163, i32* %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  store i32 %165, i32* %15, align 4
  %166 = load i32*, i32** %5, align 8
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @BITS_READ_U32_EXP(i32* %166, i32* %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  store i32 %168, i32* %16, align 4
  %169 = load i32*, i32** %5, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = call i32 @BITS_READ_U32_EXP(i32* %169, i32* %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0))
  store i32 %171, i32* %17, align 4
  %172 = load i32*, i32** @chroma_sub_width, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %14, align 4
  %178 = mul nsw i32 %177, %176
  store i32 %178, i32* %14, align 4
  %179 = load i32*, i32** @chroma_sub_width, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %15, align 4
  %185 = mul nsw i32 %184, %183
  store i32 %185, i32* %15, align 4
  %186 = load i32*, i32** @chroma_sub_height, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %13, align 4
  %192 = sub nsw i32 2, %191
  %193 = mul nsw i32 %190, %192
  %194 = load i32, i32* %16, align 4
  %195 = mul nsw i32 %194, %193
  store i32 %195, i32* %16, align 4
  %196 = load i32*, i32** @chroma_sub_height, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %13, align 4
  %202 = sub nsw i32 2, %201
  %203 = mul nsw i32 %200, %202
  %204 = load i32, i32* %17, align 4
  %205 = mul nsw i32 %204, %203
  store i32 %205, i32* %17, align 4
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %206, %207
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp sge i32 %208, %211
  br i1 %212, label %221, label %213

213:                                              ; preds = %159
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %17, align 4
  %216 = add nsw i32 %214, %215
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp sge i32 %216, %219
  br i1 %220, label %221, label %234

221:                                              ; preds = %213, %159
  %222 = load i32*, i32** %5, align 8
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* %15, align 4
  %225 = load i32, i32* %16, align 4
  %226 = load i32, i32* %17, align 4
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* %222, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.23, i64 0, i64 0), i32 %223, i32 %224, i32 %225, i32 %226, i32 %229, i32 %232)
  br label %278

234:                                              ; preds = %213
  %235 = load i32, i32* %14, align 4
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 2
  store i32 %235, i32* %237, align 4
  %238 = load i32, i32* %16, align 4
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 4
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %14, align 4
  %245 = sub nsw i32 %243, %244
  %246 = load i32, i32* %15, align 4
  %247 = sub nsw i32 %245, %246
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 4
  store i32 %247, i32* %249, align 4
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %16, align 4
  %254 = sub nsw i32 %252, %253
  %255 = load i32, i32* %17, align 4
  %256 = sub nsw i32 %254, %255
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 5
  store i32 %256, i32* %258, align 4
  br label %270

259:                                              ; preds = %151
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 4
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 5
  store i32 %267, i32* %269, align 4
  br label %270

270:                                              ; preds = %259, %234
  %271 = load i32*, i32** %5, align 8
  %272 = load i32*, i32** %7, align 8
  %273 = call i32 @BITS_VALID(i32* %271, i32* %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %270
  br label %278

276:                                              ; preds = %270
  %277 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %277, i32* %4, align 4
  br label %282

278:                                              ; preds = %275, %221, %70
  %279 = load i32*, i32** %5, align 8
  %280 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* %279, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0))
  %281 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %281, i32* %4, align 4
  br label %282

282:                                              ; preds = %278, %276
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

declare dso_local i32 @BITS_READ_U8(i32*, i32*, i32, i8*) #1

declare dso_local i32 @BITS_SKIP(i32*, i32*, i32, i8*) #1

declare dso_local i32 @BITS_READ_U32_EXP(i32*, i32*, i8*) #1

declare dso_local i32 @h264_get_chroma_format(i32*, i32*) #1

declare dso_local i32 @BITS_SKIP_EXP(i32*, i32*, i8*) #1

declare dso_local i32 @BITS_READ_U32(i32*, i32*, i32, i8*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, ...) #1

declare dso_local i32 @BITS_VALID(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
