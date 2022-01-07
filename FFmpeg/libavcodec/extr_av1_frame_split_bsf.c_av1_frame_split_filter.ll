; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_av1_frame_split_bsf.c_av1_frame_split_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_av1_frame_split_bsf.c_av1_frame_split_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i32, i32, i32, i32, %struct.TYPE_32__*, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, i64, %struct.TYPE_35__*, i64 }
%struct.TYPE_35__ = type { %struct.TYPE_29__, %struct.TYPE_28__ }
%struct.TYPE_29__ = type { %struct.TYPE_34__, %struct.TYPE_25__, %struct.TYPE_27__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_25__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32, i32* }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to parse temporal unit.\0A\00", align 1
@AV1_OBU_FRAME = common dso_local global i64 0, align 8
@AV1_OBU_FRAME_HEADER = common dso_local global i32 0, align 4
@AV1_OBU_TILE_LIST = common dso_local global i64 0, align 8
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Large scale tiles are unsupported.\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Frame OBU found when Tile data for a previous frame was expected.\0A\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"Frame Header OBU found when Tile data for a previous frame was expected.\0A\00", align 1
@AV1_OBU_TILE_GROUP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"Unexpected Tile Group OBU found before a Frame Header.\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, %struct.TYPE_32__*)* @av1_frame_split_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av1_frame_split_filter(%struct.TYPE_33__* %0, %struct.TYPE_32__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.TYPE_35__*, align 8
  %18 = alloca %struct.TYPE_35__*, align 8
  %19 = alloca %struct.TYPE_35__*, align 8
  %20 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  %21 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %6, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 6
  store %struct.TYPE_31__* %25, %struct.TYPE_31__** %7, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %124, label %41

41:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %44, align 8
  %46 = call i32 @ff_bsf_get_packet_ref(%struct.TYPE_33__* %42, %struct.TYPE_32__* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %421

51:                                               ; preds = %41
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %57, align 8
  %59 = call i32 @ff_cbs_read_packet(i32 %54, %struct.TYPE_31__* %55, %struct.TYPE_32__* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %64 = load i32, i32* @AV_LOG_WARNING, align 4
  %65 = call i32 @av_log(%struct.TYPE_33__* %63, i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %398

66:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %107, %66
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %110

73:                                               ; preds = %67
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %76, i64 %78
  store %struct.TYPE_30__* %79, %struct.TYPE_30__** %12, align 8
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AV1_OBU_FRAME, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %92, label %85

85:                                               ; preds = %73
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @AV1_OBU_FRAME_HEADER, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85, %73
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %106

95:                                               ; preds = %85
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AV1_OBU_TILE_LIST, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %103 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %104 = call i32 @av_log(%struct.TYPE_33__* %102, i32 %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %398

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105, %92
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %67

110:                                              ; preds = %67
  %111 = load i32, i32* %11, align 4
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 2
  store i32 0, i32* %117, align 4
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 1
  store i32 0, i32* %119, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  store i32 1, i32* %10, align 4
  br label %123

123:                                              ; preds = %113, %110
  br label %124

124:                                              ; preds = %123, %2
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %397

127:                                              ; preds = %124
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %13, align 8
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %305, %127
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %308

137:                                              ; preds = %131
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i64 %142
  store %struct.TYPE_30__* %143, %struct.TYPE_30__** %16, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %148, %146
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %15, align 4
  %151 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @AV1_OBU_FRAME, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %198

156:                                              ; preds = %137
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_35__*, %struct.TYPE_35__** %158, align 8
  store %struct.TYPE_35__* %159, %struct.TYPE_35__** %17, align 8
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %161 = icmp ne %struct.TYPE_25__* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %164 = load i32, i32* @AV_LOG_WARNING, align 4
  %165 = call i32 @av_log(%struct.TYPE_33__* %163, i32 %164, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  br label %398

166:                                              ; preds = %156
  %167 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  store %struct.TYPE_25__* %170, %struct.TYPE_25__** %13, align 8
  %171 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %14, align 4
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %185, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = icmp slt i64 %190, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %166
  br label %308

197:                                              ; preds = %166
  br label %304

198:                                              ; preds = %137
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* @AV1_OBU_FRAME_HEADER, align 4
  %203 = sext i32 %202 to i64
  %204 = icmp eq i64 %201, %203
  br i1 %204, label %205, label %251

205:                                              ; preds = %198
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_35__*, %struct.TYPE_35__** %207, align 8
  store %struct.TYPE_35__* %208, %struct.TYPE_35__** %18, align 8
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %210 = icmp ne %struct.TYPE_25__* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %205
  %212 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %213 = load i32, i32* @AV_LOG_WARNING, align 4
  %214 = call i32 @av_log(%struct.TYPE_33__* %212, i32 %213, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  br label %398

215:                                              ; preds = %205
  %216 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %217 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i32 0, i32 1
  store %struct.TYPE_25__* %218, %struct.TYPE_25__** %13, align 8
  %219 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %220 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %14, align 4
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 4
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %229, align 8
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %250

236:                                              ; preds = %215
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = icmp slt i64 %239, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %236
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, 1
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 8
  br label %308

250:                                              ; preds = %236, %215
  br label %303

251:                                              ; preds = %198
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @AV1_OBU_TILE_GROUP, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %302

257:                                              ; preds = %251
  %258 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_35__*, %struct.TYPE_35__** %259, align 8
  store %struct.TYPE_35__* %260, %struct.TYPE_35__** %19, align 8
  %261 = load %struct.TYPE_35__*, %struct.TYPE_35__** %19, align 8
  %262 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %262, i32 0, i32 0
  store %struct.TYPE_34__* %263, %struct.TYPE_34__** %20, align 8
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %265 = icmp ne %struct.TYPE_25__* %264, null
  br i1 %265, label %266, label %270

266:                                              ; preds = %257
  %267 = load i32, i32* %14, align 4
  %268 = load i32, i32* @AV1_OBU_FRAME_HEADER, align 4
  %269 = icmp ne i32 %267, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %266, %257
  %271 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %272 = load i32, i32* @AV_LOG_WARNING, align 4
  %273 = call i32 @av_log(%struct.TYPE_33__* %271, i32 %272, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %398

274:                                              ; preds = %266
  %275 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %276 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %282 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = mul nsw i32 %280, %283
  %285 = sub nsw i32 %284, 1
  %286 = icmp eq i32 %277, %285
  br i1 %286, label %287, label %301

287:                                              ; preds = %274
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = icmp slt i64 %290, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %287
  %297 = load i32, i32* %8, align 4
  %298 = add nsw i32 %297, 1
  %299 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 8
  br label %308

301:                                              ; preds = %287, %274
  br label %302

302:                                              ; preds = %301, %251
  br label %303

303:                                              ; preds = %302, %250
  br label %304

304:                                              ; preds = %303, %197
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %8, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %8, align 4
  br label %131

308:                                              ; preds = %296, %245, %196, %131
  %309 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %310 = icmp ne %struct.TYPE_25__* %309, null
  br i1 %310, label %311, label %320

311:                                              ; preds = %308
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = icmp sle i64 %314, %318
  br label %320

320:                                              ; preds = %311, %308
  %321 = phi i1 [ false, %308 ], [ %319, %311 ]
  %322 = zext i1 %321 to i32
  %323 = call i32 @av_assert0(i32 %322)
  %324 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %325 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %325, i32 0, i32 5
  %327 = load %struct.TYPE_32__*, %struct.TYPE_32__** %326, align 8
  %328 = call i32 @av_packet_ref(%struct.TYPE_32__* %324, %struct.TYPE_32__* %327)
  store i32 %328, i32* %9, align 4
  %329 = load i32, i32* %9, align 4
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %320
  br label %404

332:                                              ; preds = %320
  %333 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %333, i32 0, i32 1
  %335 = load %struct.TYPE_30__*, %struct.TYPE_30__** %334, align 8
  %336 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %335, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = inttoptr i64 %342 to i32*
  %344 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %344, i32 0, i32 2
  store i32* %343, i32** %345, align 8
  %346 = load i32, i32* %15, align 4
  %347 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %347, i32 0, i32 0
  store i32 %346, i32* %348, align 8
  %349 = load i32, i32* %15, align 4
  %350 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %350, i32 0, i32 5
  %352 = load %struct.TYPE_32__*, %struct.TYPE_32__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %352, i32 0, i32 2
  %354 = load i32*, i32** %353, align 8
  %355 = sext i32 %349 to i64
  %356 = getelementptr inbounds i32, i32* %354, i64 %355
  store i32* %356, i32** %353, align 8
  %357 = load i32, i32* %15, align 4
  %358 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %358, i32 0, i32 5
  %360 = load %struct.TYPE_32__*, %struct.TYPE_32__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = sub nsw i32 %362, %357
  store i32 %363, i32* %361, align 8
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 3
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %377, label %368

368:                                              ; preds = %332
  %369 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %370 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %377, label %373

373:                                              ; preds = %368
  %374 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %375 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %375, i32 0, i32 1
  store i32 %374, i32* %376, align 4
  br label %377

377:                                              ; preds = %373, %368, %332
  %378 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = sext i32 %383 to i64
  %385 = icmp eq i64 %380, %384
  br i1 %385, label %386, label %396

386:                                              ; preds = %377
  %387 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %387, i32 0, i32 5
  %389 = load %struct.TYPE_32__*, %struct.TYPE_32__** %388, align 8
  %390 = call i32 @av_packet_unref(%struct.TYPE_32__* %389)
  %391 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %395 = call i32 @ff_cbs_fragment_reset(i32 %393, %struct.TYPE_31__* %394)
  br label %396

396:                                              ; preds = %386, %377
  store i32 0, i32* %3, align 4
  br label %421

397:                                              ; preds = %124
  br label %398

398:                                              ; preds = %397, %270, %211, %162, %101, %62
  %399 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %400 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %400, i32 0, i32 5
  %402 = load %struct.TYPE_32__*, %struct.TYPE_32__** %401, align 8
  %403 = call i32 @av_packet_move_ref(%struct.TYPE_32__* %399, %struct.TYPE_32__* %402)
  store i32 0, i32* %9, align 4
  br label %404

404:                                              ; preds = %398, %331
  %405 = load i32, i32* %9, align 4
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %407, label %414

407:                                              ; preds = %404
  %408 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %409 = call i32 @av_packet_unref(%struct.TYPE_32__* %408)
  %410 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %410, i32 0, i32 5
  %412 = load %struct.TYPE_32__*, %struct.TYPE_32__** %411, align 8
  %413 = call i32 @av_packet_unref(%struct.TYPE_32__* %412)
  br label %414

414:                                              ; preds = %407, %404
  %415 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %415, i32 0, i32 4
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %419 = call i32 @ff_cbs_fragment_reset(i32 %417, %struct.TYPE_31__* %418)
  %420 = load i32, i32* %9, align 4
  store i32 %420, i32* %3, align 4
  br label %421

421:                                              ; preds = %414, %396, %49
  %422 = load i32, i32* %3, align 4
  ret i32 %422
}

declare dso_local i32 @ff_bsf_get_packet_ref(%struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local i32 @ff_cbs_read_packet(i32, %struct.TYPE_31__*, %struct.TYPE_32__*) #1

declare dso_local i32 @av_log(%struct.TYPE_33__*, i32, i8*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_packet_ref(%struct.TYPE_32__*, %struct.TYPE_32__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_32__*) #1

declare dso_local i32 @ff_cbs_fragment_reset(i32, %struct.TYPE_31__*) #1

declare dso_local i32 @av_packet_move_ref(%struct.TYPE_32__*, %struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
