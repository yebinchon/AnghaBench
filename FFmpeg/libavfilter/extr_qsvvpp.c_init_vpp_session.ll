; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_qsvvpp.c_init_vpp_session.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_qsvvpp.c_init_vpp_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_25__*, %struct.TYPE_23__**, %struct.TYPE_23__** }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_25__*, i32, i32 }
%struct.TYPE_31__ = type { i32, i32, i32, i8*, i8*, %struct.TYPE_29__, i64*, i64*, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i8*, i64* }
%struct.TYPE_26__ = type { i32, i8*, i64* }
%struct.TYPE_32__ = type { i32, i64, i8* }
%struct.TYPE_22__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_34__ = type { i32, i32, i8*, i8*, i64, %struct.TYPE_32__*, %struct.TYPE_25__* }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, %struct.TYPE_31__* }

@ENOMEM = common dso_local global i32 0, align 4
@MFX_MEMTYPE_SYSTEM_MEMORY = common dso_local global i8* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No hw context provided.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_QSV = common dso_local global i64 0, align 8
@MFX_MEMTYPE_OPAQUE_FRAME = common dso_local global i8* null, align 8
@MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Error creating frames_ctx for output pad.\0A\00", align 1
@MFX_ERR_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Error querying the session attributes\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@handle_types = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Error getting the session handle\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Error initializing a session for scaling\0A\00", align 1
@MFX_EXTBUFF_OPAQUE_SURFACE_ALLOCATION = common dso_local global i32 0, align 4
@frame_free = common dso_local global i32 0, align 4
@frame_get_hdl = common dso_local global i32 0, align 4
@frame_unlock = common dso_local global i32 0, align 4
@frame_lock = common dso_local global i32 0, align 4
@frame_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_31__*)* @init_vpp_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_vpp_session(%struct.TYPE_24__* %0, %struct.TYPE_31__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_34__*, align 8
  %20 = alloca %struct.TYPE_34__*, align 8
  %21 = alloca %struct.TYPE_25__*, align 8
  %22 = alloca %struct.TYPE_30__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %25, i64 0
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %6, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %30, i64 0
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %8, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %9, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %36 = icmp ne %struct.TYPE_25__* %35, null
  br i1 %36, label %37, label %98

37:                                               ; preds = %2
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %43, %struct.TYPE_34__** %19, align 8
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %45, align 8
  store %struct.TYPE_25__* %46, %struct.TYPE_25__** %10, align 8
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %48 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %48, align 8
  store %struct.TYPE_32__* %49, %struct.TYPE_32__** %8, align 8
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @av_mallocz_array(i32 %57, i32 8)
  %59 = bitcast i8* %58 to i64*
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 7
  store i64* %59, i64** %61, align 8
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 7
  %64 = load i64*, i64** %63, align 8
  %65 = icmp ne i64* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %37
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %3, align 4
  br label %474

69:                                               ; preds = %37
  store i32 0, i32* %18, align 4
  br label %70

70:                                               ; preds = %89, %69
  %71 = load i32, i32* %18, align 4
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %83, i32 0, i32 7
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %82, i64* %88, align 8
  br label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %18, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %18, align 4
  br label %70

92:                                               ; preds = %70
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %117

98:                                               ; preds = %2
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %100, align 8
  %102 = icmp ne %struct.TYPE_25__* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %105, align 8
  store %struct.TYPE_25__* %106, %struct.TYPE_25__** %10, align 8
  %107 = load i8*, i8** @MFX_MEMTYPE_SYSTEM_MEMORY, align 8
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  br label %116

110:                                              ; preds = %98
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %112 = load i32, i32* @AV_LOG_ERROR, align 4
  %113 = call i32 @av_log(%struct.TYPE_24__* %111, i32 %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = call i32 @AVERROR(i32 %114)
  store i32 %115, i32* %3, align 4
  br label %474

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %92
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %121, %struct.TYPE_22__** %11, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %123, align 8
  store %struct.TYPE_33__* %124, %struct.TYPE_33__** %12, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @AV_PIX_FMT_QSV, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %262

130:                                              ; preds = %117
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %132 = call %struct.TYPE_25__* @av_hwframe_ctx_alloc(%struct.TYPE_25__* %131)
  store %struct.TYPE_25__* %132, %struct.TYPE_25__** %21, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %134 = icmp ne %struct.TYPE_25__* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = call i32 @AVERROR(i32 %136)
  store i32 %137, i32* %3, align 4
  br label %474

138:                                              ; preds = %130
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @IS_OPAQUE_MEMORY(i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i8*, i8** @MFX_MEMTYPE_OPAQUE_FRAME, align 8
  br label %148

146:                                              ; preds = %138
  %147 = load i8*, i8** @MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i8* [ %145, %144 ], [ %147, %146 ]
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %155, %struct.TYPE_34__** %20, align 8
  %156 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %157 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %156, i32 0, i32 5
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %157, align 8
  store %struct.TYPE_32__* %158, %struct.TYPE_32__** %9, align 8
  %159 = load i64, i64* @AV_PIX_FMT_QSV, align 8
  %160 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i32 0, i32 4
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @FFALIGN(i32 %164, i32 32)
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 3
  store i8* %165, i8** %167, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i8* @FFALIGN(i32 %170, i32 32)
  %172 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  %174 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %180 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %179, i32 0, i32 0
  store i32 64, i32* %180, align 8
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp sgt i64 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %148
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %188
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 8
  br label %195

195:                                              ; preds = %185, %148
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %196, i32 0, i32 3
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %199, i32 0, i32 2
  store i8* %198, i8** %200, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %202 = call i32 @av_hwframe_ctx_init(%struct.TYPE_25__* %201)
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %17, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %195
  %206 = call i32 @av_buffer_unref(%struct.TYPE_25__** %21)
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %208 = load i32, i32* @AV_LOG_ERROR, align 4
  %209 = call i32 @av_log(%struct.TYPE_24__* %207, i32 %208, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %210 = load i32, i32* %17, align 4
  store i32 %210, i32* %3, align 4
  br label %474

211:                                              ; preds = %195
  %212 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i8* @av_mallocz_array(i32 %214, i32 8)
  %216 = bitcast i8* %215 to i64*
  %217 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 6
  store i64* %216, i64** %218, align 8
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %219, i32 0, i32 6
  %221 = load i64*, i64** %220, align 8
  %222 = icmp ne i64* %221, null
  br i1 %222, label %227, label %223

223:                                              ; preds = %211
  %224 = call i32 @av_buffer_unref(%struct.TYPE_25__** %21)
  %225 = load i32, i32* @ENOMEM, align 4
  %226 = call i32 @AVERROR(i32 %225)
  store i32 %226, i32* %3, align 4
  br label %474

227:                                              ; preds = %211
  store i32 0, i32* %18, align 4
  br label %228

228:                                              ; preds = %247, %227
  %229 = load i32, i32* %18, align 4
  %230 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %250

234:                                              ; preds = %228
  %235 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* %18, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %237, %239
  %241 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %241, i32 0, i32 6
  %243 = load i64*, i64** %242, align 8
  %244 = load i32, i32* %18, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  store i64 %240, i64* %246, align 8
  br label %247

247:                                              ; preds = %234
  %248 = load i32, i32* %18, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %18, align 4
  br label %228

250:                                              ; preds = %228
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 1
  %258 = call i32 @av_buffer_unref(%struct.TYPE_25__** %257)
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 1
  store %struct.TYPE_25__* %259, %struct.TYPE_25__** %261, align 8
  br label %266

262:                                              ; preds = %117
  %263 = load i8*, i8** @MFX_MEMTYPE_SYSTEM_MEMORY, align 8
  %264 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %264, i32 0, i32 3
  store i8* %263, i8** %265, align 8
  br label %266

266:                                              ; preds = %262, %250
  %267 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %268 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @MFXQueryIMPL(i32 %269, i32* %16)
  store i32 %270, i32* %17, align 4
  %271 = load i32, i32* %17, align 4
  %272 = load i32, i32* @MFX_ERR_NONE, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %266
  %275 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @MFXQueryVersion(i32 %277, i32* %15)
  store i32 %278, i32* %17, align 4
  br label %279

279:                                              ; preds = %274, %266
  %280 = load i32, i32* %17, align 4
  %281 = load i32, i32* @MFX_ERR_NONE, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %288

283:                                              ; preds = %279
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %285 = load i32, i32* @AV_LOG_ERROR, align 4
  %286 = call i32 @av_log(%struct.TYPE_24__* %284, i32 %285, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %287 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %287, i32* %3, align 4
  br label %474

288:                                              ; preds = %279
  store i32 0, i32* %18, align 4
  br label %289

289:                                              ; preds = %314, %288
  %290 = load i32, i32* %18, align 4
  %291 = load i32*, i32** @handle_types, align 8
  %292 = call i32 @FF_ARRAY_ELEMS(i32* %291)
  %293 = icmp slt i32 %290, %292
  br i1 %293, label %294, label %317

294:                                              ; preds = %289
  %295 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32*, i32** @handle_types, align 8
  %299 = load i32, i32* %18, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @MFXVideoCORE_GetHandle(i32 %297, i32 %302, i64* %13)
  store i32 %303, i32* %17, align 4
  %304 = load i32, i32* %17, align 4
  %305 = load i32, i32* @MFX_ERR_NONE, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %313

307:                                              ; preds = %294
  %308 = load i32*, i32** @handle_types, align 8
  %309 = load i32, i32* %18, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  store i32 %312, i32* %14, align 4
  br label %317

313:                                              ; preds = %294
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %18, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %18, align 4
  br label %289

317:                                              ; preds = %307, %289
  %318 = load i32, i32* %17, align 4
  %319 = load i32, i32* @MFX_ERR_NONE, align 4
  %320 = icmp ne i32 %318, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %323 = load i32, i32* @AV_LOG_ERROR, align 4
  %324 = call i32 @av_log(%struct.TYPE_24__* %322, i32 %323, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %325 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %325, i32* %3, align 4
  br label %474

326:                                              ; preds = %317
  %327 = load i32, i32* %16, align 4
  %328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %328, i32 0, i32 2
  %330 = call i32 @MFXInit(i32 %327, i32* %15, i32* %329)
  store i32 %330, i32* %17, align 4
  %331 = load i32, i32* %17, align 4
  %332 = load i32, i32* @MFX_ERR_NONE, align 4
  %333 = icmp ne i32 %331, %332
  br i1 %333, label %334, label %339

334:                                              ; preds = %326
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %336 = load i32, i32* @AV_LOG_ERROR, align 4
  %337 = call i32 @av_log(%struct.TYPE_24__* %335, i32 %336, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %338 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %338, i32* %3, align 4
  br label %474

339:                                              ; preds = %326
  %340 = load i64, i64* %13, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %355

342:                                              ; preds = %339
  %343 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* %14, align 4
  %347 = load i64, i64* %13, align 8
  %348 = call i32 @MFXVideoCORE_SetHandle(i32 %345, i32 %346, i64 %347)
  store i32 %348, i32* %17, align 4
  %349 = load i32, i32* %17, align 4
  %350 = load i32, i32* @MFX_ERR_NONE, align 4
  %351 = icmp ne i32 %349, %350
  br i1 %351, label %352, label %354

352:                                              ; preds = %342
  %353 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %353, i32* %3, align 4
  br label %474

354:                                              ; preds = %342
  br label %355

355:                                              ; preds = %354, %339
  %356 = load i32, i32* %15, align 4
  %357 = call i64 @QSV_RUNTIME_VERSION_ATLEAST(i32 %356, i32 1, i32 25)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %373

359:                                              ; preds = %355
  %360 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %361 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = call i32 @MFXJoinSession(i32 %362, i32 %365)
  store i32 %366, i32* %17, align 4
  %367 = load i32, i32* %17, align 4
  %368 = load i32, i32* @MFX_ERR_NONE, align 4
  %369 = icmp ne i32 %367, %368
  br i1 %369, label %370, label %372

370:                                              ; preds = %359
  %371 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %371, i32* %3, align 4
  br label %474

372:                                              ; preds = %359
  br label %373

373:                                              ; preds = %372, %355
  %374 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %374, i32 0, i32 4
  %376 = load i8*, i8** %375, align 8
  %377 = call i64 @IS_OPAQUE_MEMORY(i8* %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %385, label %379

379:                                              ; preds = %373
  %380 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %380, i32 0, i32 3
  %382 = load i8*, i8** %381, align 8
  %383 = call i64 @IS_OPAQUE_MEMORY(i8* %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %437

385:                                              ; preds = %379, %373
  %386 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %386, i32 0, i32 7
  %388 = load i64*, i64** %387, align 8
  %389 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %389, i32 0, i32 5
  %391 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %391, i32 0, i32 2
  store i64* %388, i64** %392, align 8
  %393 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %396, i32 0, i32 5
  %398 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %398, i32 0, i32 0
  store i32 %395, i32* %399, align 8
  %400 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %400, i32 0, i32 4
  %402 = load i8*, i8** %401, align 8
  %403 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %403, i32 0, i32 5
  %405 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %404, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %405, i32 0, i32 1
  store i8* %402, i8** %406, align 8
  %407 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %407, i32 0, i32 6
  %409 = load i64*, i64** %408, align 8
  %410 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %410, i32 0, i32 5
  %412 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %412, i32 0, i32 2
  store i64* %409, i64** %413, align 8
  %414 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %417, i32 0, i32 5
  %419 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %419, i32 0, i32 0
  store i32 %416, i32* %420, align 8
  %421 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %421, i32 0, i32 3
  %423 = load i8*, i8** %422, align 8
  %424 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %424, i32 0, i32 5
  %426 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %426, i32 0, i32 1
  store i8* %423, i8** %427, align 8
  %428 = load i32, i32* @MFX_EXTBUFF_OPAQUE_SURFACE_ALLOCATION, align 4
  %429 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %429, i32 0, i32 5
  %431 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %431, i32 0, i32 1
  store i32 %428, i32* %432, align 4
  %433 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %434 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %433, i32 0, i32 5
  %435 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %435, i32 0, i32 0
  store i32 56, i32* %436, align 8
  br label %473

437:                                              ; preds = %379
  %438 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %438, i32 0, i32 4
  %440 = load i8*, i8** %439, align 8
  %441 = call i64 @IS_VIDEO_MEMORY(i8* %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %449, label %443

443:                                              ; preds = %437
  %444 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %444, i32 0, i32 3
  %446 = load i8*, i8** %445, align 8
  %447 = call i64 @IS_VIDEO_MEMORY(i8* %446)
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %472

449:                                              ; preds = %443, %437
  %450 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 0
  %451 = load i32, i32* @frame_free, align 4
  store i32 %451, i32* %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 1
  %453 = load i32, i32* @frame_get_hdl, align 4
  store i32 %453, i32* %452, align 4
  %454 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 2
  %455 = load i32, i32* @frame_unlock, align 4
  store i32 %455, i32* %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 3
  %457 = load i32, i32* @frame_lock, align 4
  store i32 %457, i32* %456, align 4
  %458 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 4
  %459 = load i32, i32* @frame_alloc, align 4
  store i32 %459, i32* %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 5
  %461 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_31__* %461, %struct.TYPE_31__** %460, align 8
  %462 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 8
  %465 = call i32 @MFXVideoCORE_SetFrameAllocator(i32 %464, %struct.TYPE_30__* %22)
  store i32 %465, i32* %17, align 4
  %466 = load i32, i32* %17, align 4
  %467 = load i32, i32* @MFX_ERR_NONE, align 4
  %468 = icmp ne i32 %466, %467
  br i1 %468, label %469, label %471

469:                                              ; preds = %449
  %470 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %470, i32* %3, align 4
  br label %474

471:                                              ; preds = %449
  br label %472

472:                                              ; preds = %471, %443
  br label %473

473:                                              ; preds = %472, %385
  store i32 0, i32* %3, align 4
  br label %474

474:                                              ; preds = %473, %469, %370, %352, %334, %321, %283, %223, %205, %135, %110, %66
  %475 = load i32, i32* %3, align 4
  ret i32 %475
}

declare dso_local i8* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_24__*, i32, i8*) #1

declare dso_local %struct.TYPE_25__* @av_hwframe_ctx_alloc(%struct.TYPE_25__*) #1

declare dso_local i64 @IS_OPAQUE_MEMORY(i8*) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

declare dso_local i32 @av_hwframe_ctx_init(%struct.TYPE_25__*) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_25__**) #1

declare dso_local i32 @MFXQueryIMPL(i32, i32*) #1

declare dso_local i32 @MFXQueryVersion(i32, i32*) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @MFXVideoCORE_GetHandle(i32, i32, i64*) #1

declare dso_local i32 @MFXInit(i32, i32*, i32*) #1

declare dso_local i32 @MFXVideoCORE_SetHandle(i32, i32, i64) #1

declare dso_local i64 @QSV_RUNTIME_VERSION_ATLEAST(i32, i32, i32) #1

declare dso_local i32 @MFXJoinSession(i32, i32) #1

declare dso_local i64 @IS_VIDEO_MEMORY(i8*) #1

declare dso_local i32 @MFXVideoCORE_SetFrameAllocator(i32, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
