; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deinterlace_qsv.c_init_out_session.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deinterlace_qsv.c_init_out_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_45__ = type { %struct.TYPE_32__**, %struct.TYPE_51__**, %struct.TYPE_41__* }
%struct.TYPE_32__ = type { %struct.TYPE_31__, %struct.TYPE_52__ }
%struct.TYPE_31__ = type { i32, i64 }
%struct.TYPE_52__ = type { i32, i64 }
%struct.TYPE_51__ = type { %struct.TYPE_50__, %struct.TYPE_49__, i32, i32 }
%struct.TYPE_50__ = type { i32, i64 }
%struct.TYPE_49__ = type { i32, i64 }
%struct.TYPE_41__ = type { i32, i32, i32, i64, i32**, i32*, %struct.TYPE_47__, %struct.TYPE_37__**, %struct.TYPE_36__, i32, %struct.TYPE_33__* }
%struct.TYPE_47__ = type { %struct.TYPE_46__, %struct.TYPE_40__, %struct.TYPE_40__ }
%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_40__ = type { i32, i32, %struct.TYPE_37__** }
%struct.TYPE_37__ = type { %struct.TYPE_53__, %struct.TYPE_48__ }
%struct.TYPE_53__ = type { i32, i64, i32, i32 }
%struct.TYPE_48__ = type { i32 }
%struct.TYPE_36__ = type { i32, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_44__ = type { %struct.TYPE_34__*, %struct.TYPE_42__* }
%struct.TYPE_34__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_42__ = type { i32, i32, %struct.TYPE_37__* }
%struct.TYPE_38__ = type { i32, i32, %struct.TYPE_30__, i64, i32** }
%struct.TYPE_30__ = type { %struct.TYPE_53__, %struct.TYPE_53__ }
%struct.TYPE_39__ = type { i32, i32, i32, i32, i32, %struct.TYPE_45__* }

@MFX_MEMTYPE_OPAQUE_FRAME = common dso_local global i32 0, align 4
@MFX_ERR_NONE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error querying the session attributes\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@handle_types = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Error getting the session handle\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Error initializing a session for deinterlacing\0A\00", align 1
@MFX_EXTBUFF_VPP_DEINTERLACING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MFX_EXTBUFF_OPAQUE_SURFACE_ALLOCATION = common dso_local global i32 0, align 4
@MFX_IOPATTERN_IN_OPAQUE_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_OUT_OPAQUE_MEMORY = common dso_local global i32 0, align 4
@frame_free = common dso_local global i32 0, align 4
@frame_get_hdl = common dso_local global i32 0, align 4
@frame_unlock = common dso_local global i32 0, align 4
@frame_lock = common dso_local global i32 0, align 4
@frame_alloc = common dso_local global i32 0, align 4
@MFX_IOPATTERN_IN_VIDEO_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_OUT_VIDEO_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Error opening the VPP for deinterlacing: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_45__*)* @init_out_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_out_session(%struct.TYPE_45__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_45__*, align 8
  %4 = alloca %struct.TYPE_41__*, align 8
  %5 = alloca %struct.TYPE_44__*, align 8
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca %struct.TYPE_43__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_38__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_39__, align 8
  store %struct.TYPE_45__* %0, %struct.TYPE_45__** %3, align 8
  %17 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_41__*, %struct.TYPE_41__** %18, align 8
  store %struct.TYPE_41__* %19, %struct.TYPE_41__** %4, align 8
  %20 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %20, i32 0, i32 10
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.TYPE_44__*
  store %struct.TYPE_44__* %25, %struct.TYPE_44__** %5, align 8
  %26 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_42__*, %struct.TYPE_42__** %27, align 8
  store %struct.TYPE_42__* %28, %struct.TYPE_42__** %6, align 8
  %29 = load %struct.TYPE_44__*, %struct.TYPE_44__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_43__*, %struct.TYPE_43__** %32, align 8
  store %struct.TYPE_43__* %33, %struct.TYPE_43__** %7, align 8
  %34 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MFX_MEMTYPE_OPAQUE_FRAME, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %43 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @MFXQueryIMPL(i32 %45, i32* %12)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* @MFX_ERR_NONE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %1
  %51 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @MFXQueryVersion(i32 %53, i32* %11)
  store i64 %54, i64* %14, align 8
  br label %55

55:                                               ; preds = %50, %1
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* @MFX_ERR_NONE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = call i32 (%struct.TYPE_45__*, i32, i8*, ...) @av_log(%struct.TYPE_45__* %60, i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %63, i32* %2, align 4
  br label %520

64:                                               ; preds = %55
  store i32 0, i32* %15, align 4
  br label %65

65:                                               ; preds = %90, %64
  %66 = load i32, i32* %15, align 4
  %67 = load i32*, i32** @handle_types, align 8
  %68 = call i32 @FF_ARRAY_ELEMS(i32* %67)
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %65
  %71 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** @handle_types, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @MFXVideoCORE_GetHandle(i32 %73, i32 %78, i32** %9)
  store i64 %79, i64* %14, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* @MFX_ERR_NONE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %70
  %84 = load i32*, i32** @handle_types, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %10, align 4
  br label %93

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %65

93:                                               ; preds = %83, %65
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* @MFX_ERR_NONE, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = call i32 (%struct.TYPE_45__*, i32, i8*, ...) @av_log(%struct.TYPE_45__* %98, i32 %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %101, i32* %2, align 4
  br label %520

102:                                              ; preds = %93
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %104, i32 0, i32 2
  %106 = call i64 @MFXInit(i32 %103, i32* %11, i32* %105)
  store i64 %106, i64* %14, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* @MFX_ERR_NONE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %102
  %111 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %112 = load i32, i32* @AV_LOG_ERROR, align 4
  %113 = call i32 (%struct.TYPE_45__*, i32, i8*, ...) @av_log(%struct.TYPE_45__* %111, i32 %112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %114, i32* %2, align 4
  br label %520

115:                                              ; preds = %102
  %116 = load i32*, i32** %9, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = call i64 @MFXVideoCORE_SetHandle(i32 %121, i32 %122, i32* %123)
  store i64 %124, i64* %14, align 8
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* @MFX_ERR_NONE, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %129, i32* %2, align 4
  br label %520

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %130, %115
  %132 = load i32, i32* %11, align 4
  %133 = call i64 @QSV_RUNTIME_VERSION_ATLEAST(i32 %132, i32 1, i32 25)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @MFXJoinSession(i32 %138, i32 %141)
  store i64 %142, i64* %14, align 8
  %143 = load i64, i64* %14, align 8
  %144 = load i64, i64* @MFX_ERR_NONE, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %135
  %147 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %147, i32* %2, align 4
  br label %520

148:                                              ; preds = %135
  br label %149

149:                                              ; preds = %148, %131
  %150 = call i32 @memset(%struct.TYPE_38__* %13, i32 0, i32 72)
  %151 = load i32, i32* @MFX_EXTBUFF_VPP_DEINTERLACING, align 4
  %152 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %152, i32 0, i32 8
  %154 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %154, i32 0, i32 1
  store i32 %151, i32* %155, align 4
  %156 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %156, i32 0, i32 8
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %158, i32 0, i32 0
  store i32 12, i32* %159, align 4
  %160 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %163, i32 0, i32 8
  %165 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  %166 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %166, i32 0, i32 8
  %168 = bitcast %struct.TYPE_36__* %167 to i32*
  %169 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %169, i32 0, i32 4
  %171 = load i32**, i32*** %170, align 8
  %172 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %173, align 8
  %176 = getelementptr inbounds i32*, i32** %171, i64 %174
  store i32* %168, i32** %176, align 8
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %276

179:                                              ; preds = %149
  %180 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @av_mallocz_array(i32 %182, i32 8)
  %184 = bitcast i8* %183 to %struct.TYPE_37__**
  %185 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %185, i32 0, i32 7
  store %struct.TYPE_37__** %184, %struct.TYPE_37__*** %186, align 8
  %187 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %187, i32 0, i32 7
  %189 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %188, align 8
  %190 = icmp ne %struct.TYPE_37__** %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %179
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = call i32 @AVERROR(i32 %192)
  store i32 %193, i32* %2, align 4
  br label %520

194:                                              ; preds = %179
  store i32 0, i32* %15, align 4
  br label %195

195:                                              ; preds = %214, %194
  %196 = load i32, i32* %15, align 4
  %197 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %217

201:                                              ; preds = %195
  %202 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %203, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i64 %206
  %208 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %208, i32 0, i32 7
  %210 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %209, align 8
  %211 = load i32, i32* %15, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %210, i64 %212
  store %struct.TYPE_37__* %207, %struct.TYPE_37__** %213, align 8
  br label %214

214:                                              ; preds = %201
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %15, align 4
  br label %195

217:                                              ; preds = %195
  %218 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %223, i32 0, i32 7
  %225 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %224, align 8
  %226 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %226, i32 0, i32 6
  %228 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %228, i32 0, i32 2
  store %struct.TYPE_37__** %225, %struct.TYPE_37__*** %229, align 8
  %230 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %233, i32 0, i32 6
  %235 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %235, i32 0, i32 0
  store i32 %232, i32* %236, align 8
  %237 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %240, i32 0, i32 6
  %242 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %242, i32 0, i32 1
  store i32 %239, i32* %243, align 4
  %244 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %244, i32 0, i32 6
  %246 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %247, i32 0, i32 6
  %249 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %248, i32 0, i32 1
  %250 = bitcast %struct.TYPE_40__* %246 to i8*
  %251 = bitcast %struct.TYPE_40__* %249 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %250, i8* align 8 %251, i64 16, i1 false)
  %252 = load i32, i32* @MFX_EXTBUFF_OPAQUE_SURFACE_ALLOCATION, align 4
  %253 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %253, i32 0, i32 6
  %255 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %255, i32 0, i32 1
  store i32 %252, i32* %256, align 4
  %257 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %257, i32 0, i32 6
  %259 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %259, i32 0, i32 0
  store i32 40, i32* %260, align 8
  %261 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %261, i32 0, i32 6
  %263 = bitcast %struct.TYPE_47__* %262 to i32*
  %264 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %264, i32 0, i32 4
  %266 = load i32**, i32*** %265, align 8
  %267 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %269, 1
  store i64 %270, i64* %268, align 8
  %271 = getelementptr inbounds i32*, i32** %266, i64 %269
  store i32* %263, i32** %271, align 8
  %272 = load i32, i32* @MFX_IOPATTERN_IN_OPAQUE_MEMORY, align 4
  %273 = load i32, i32* @MFX_IOPATTERN_OUT_OPAQUE_MEMORY, align 4
  %274 = or i32 %272, %273
  %275 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 0
  store i32 %274, i32* %275, align 8
  br label %349

276:                                              ; preds = %149
  %277 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %16, i32 0, i32 0
  %278 = load i32, i32* @frame_free, align 4
  store i32 %278, i32* %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %16, i32 0, i32 1
  %280 = load i32, i32* @frame_get_hdl, align 4
  store i32 %280, i32* %279, align 4
  %281 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %16, i32 0, i32 2
  %282 = load i32, i32* @frame_unlock, align 4
  store i32 %282, i32* %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %16, i32 0, i32 3
  %284 = load i32, i32* @frame_lock, align 4
  store i32 %284, i32* %283, align 4
  %285 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %16, i32 0, i32 4
  %286 = load i32, i32* @frame_alloc, align 4
  store i32 %286, i32* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %16, i32 0, i32 5
  %288 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  store %struct.TYPE_45__* %288, %struct.TYPE_45__** %287, align 8
  %289 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = call i8* @av_mallocz_array(i32 %291, i32 4)
  %293 = bitcast i8* %292 to i32*
  %294 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %294, i32 0, i32 5
  store i32* %293, i32** %295, align 8
  %296 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %296, i32 0, i32 5
  %298 = load i32*, i32** %297, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %303, label %300

300:                                              ; preds = %276
  %301 = load i32, i32* @ENOMEM, align 4
  %302 = call i32 @AVERROR(i32 %301)
  store i32 %302, i32* %2, align 4
  br label %520

303:                                              ; preds = %276
  store i32 0, i32* %15, align 4
  br label %304

304:                                              ; preds = %326, %303
  %305 = load i32, i32* %15, align 4
  %306 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = icmp slt i32 %305, %308
  br i1 %309, label %310, label %329

310:                                              ; preds = %304
  %311 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %311, i32 0, i32 2
  %313 = load %struct.TYPE_37__*, %struct.TYPE_37__** %312, align 8
  %314 = load i32, i32* %15, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %320, i32 0, i32 5
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %15, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  store i32 %319, i32* %325, align 4
  br label %326

326:                                              ; preds = %310
  %327 = load i32, i32* %15, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %15, align 4
  br label %304

329:                                              ; preds = %304
  %330 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %333, i32 0, i32 1
  store i32 %332, i32* %334, align 4
  %335 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = call i64 @MFXVideoCORE_SetFrameAllocator(i32 %337, %struct.TYPE_39__* %16)
  store i64 %338, i64* %14, align 8
  %339 = load i64, i64* %14, align 8
  %340 = load i64, i64* @MFX_ERR_NONE, align 8
  %341 = icmp ne i64 %339, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %329
  %343 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %343, i32* %2, align 4
  br label %520

344:                                              ; preds = %329
  %345 = load i32, i32* @MFX_IOPATTERN_IN_VIDEO_MEMORY, align 4
  %346 = load i32, i32* @MFX_IOPATTERN_OUT_VIDEO_MEMORY, align 4
  %347 = or i32 %345, %346
  %348 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 0
  store i32 %347, i32* %348, align 8
  br label %349

349:                                              ; preds = %344, %217
  %350 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %350, i32 0, i32 4
  %352 = load i32**, i32*** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 4
  store i32** %352, i32*** %353, align 8
  %354 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %354, i32 0, i32 3
  %356 = load i64, i64* %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 3
  store i64 %356, i64* %357, align 8
  %358 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 1
  store i32 1, i32* %358, align 4
  %359 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %361, i32 0, i32 2
  %363 = load %struct.TYPE_37__*, %struct.TYPE_37__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %363, i64 0
  %365 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %364, i32 0, i32 0
  %366 = bitcast %struct.TYPE_53__* %360 to i8*
  %367 = bitcast %struct.TYPE_53__* %365 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %366, i8* align 8 %367, i64 24, i1 false)
  %368 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %368, i32 0, i32 1
  %370 = load %struct.TYPE_51__**, %struct.TYPE_51__*** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_51__*, %struct.TYPE_51__** %370, i64 0
  %372 = load %struct.TYPE_51__*, %struct.TYPE_51__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %376, i32 0, i32 3
  store i32 %374, i32* %377, align 4
  %378 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %378, i32 0, i32 1
  %380 = load %struct.TYPE_51__**, %struct.TYPE_51__*** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_51__*, %struct.TYPE_51__** %380, i64 0
  %382 = load %struct.TYPE_51__*, %struct.TYPE_51__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %386, i32 0, i32 2
  store i32 %384, i32* %387, align 8
  %388 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %388, i32 0, i32 1
  %390 = load %struct.TYPE_51__**, %struct.TYPE_51__*** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_51__*, %struct.TYPE_51__** %390, i64 0
  %392 = load %struct.TYPE_51__*, %struct.TYPE_51__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %420

397:                                              ; preds = %349
  %398 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %398, i32 0, i32 1
  %400 = load %struct.TYPE_51__**, %struct.TYPE_51__*** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_51__*, %struct.TYPE_51__** %400, i64 0
  %402 = load %struct.TYPE_51__*, %struct.TYPE_51__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %407, i32 0, i32 1
  store i64 %405, i64* %408, align 8
  %409 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_51__**, %struct.TYPE_51__*** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_51__*, %struct.TYPE_51__** %411, i64 0
  %413 = load %struct.TYPE_51__*, %struct.TYPE_51__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 2
  %418 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %418, i32 0, i32 0
  store i32 %416, i32* %419, align 8
  br label %443

420:                                              ; preds = %349
  %421 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %421, i32 0, i32 1
  %423 = load %struct.TYPE_51__**, %struct.TYPE_51__*** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_51__*, %struct.TYPE_51__** %423, i64 0
  %425 = load %struct.TYPE_51__*, %struct.TYPE_51__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 2
  %430 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %430, i32 0, i32 1
  store i64 %428, i64* %431, align 8
  %432 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %432, i32 0, i32 1
  %434 = load %struct.TYPE_51__**, %struct.TYPE_51__*** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_51__*, %struct.TYPE_51__** %434, i64 0
  %436 = load %struct.TYPE_51__*, %struct.TYPE_51__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 2
  %441 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %441, i32 0, i32 0
  store i32 %439, i32* %442, align 8
  br label %443

443:                                              ; preds = %420, %397
  %444 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 2
  %445 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 2
  %447 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %446, i32 0, i32 1
  %448 = bitcast %struct.TYPE_53__* %445 to i8*
  %449 = bitcast %struct.TYPE_53__* %447 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %448, i8* align 8 %449, i64 24, i1 false)
  %450 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %452, i64 0
  %454 = load %struct.TYPE_32__*, %struct.TYPE_32__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %454, i32 0, i32 1
  %456 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %455, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %482

459:                                              ; preds = %443
  %460 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %460, i32 0, i32 0
  %462 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %462, i64 0
  %464 = load %struct.TYPE_32__*, %struct.TYPE_32__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %465, i32 0, i32 1
  %467 = load i64, i64* %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 2
  %469 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %469, i32 0, i32 1
  store i64 %467, i64* %470, align 8
  %471 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %472 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %471, i32 0, i32 0
  %473 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %473, i64 0
  %475 = load %struct.TYPE_32__*, %struct.TYPE_32__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 2
  %480 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %480, i32 0, i32 0
  store i32 %478, i32* %481, align 8
  br label %505

482:                                              ; preds = %443
  %483 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %483, i32 0, i32 0
  %485 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %485, i64 0
  %487 = load %struct.TYPE_32__*, %struct.TYPE_32__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %488, i32 0, i32 1
  %490 = load i64, i64* %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %492, i32 0, i32 1
  store i64 %490, i64* %493, align 8
  %494 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %495 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %494, i32 0, i32 0
  %496 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %496, i64 0
  %498 = load %struct.TYPE_32__*, %struct.TYPE_32__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %13, i32 0, i32 2
  %503 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %502, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %503, i32 0, i32 0
  store i32 %501, i32* %504, align 8
  br label %505

505:                                              ; preds = %482, %459
  %506 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %507 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %506, i32 0, i32 2
  %508 = load i32, i32* %507, align 8
  %509 = call i64 @MFXVideoVPP_Init(i32 %508, %struct.TYPE_38__* %13)
  store i64 %509, i64* %14, align 8
  %510 = load i64, i64* %14, align 8
  %511 = load i64, i64* @MFX_ERR_NONE, align 8
  %512 = icmp ne i64 %510, %511
  br i1 %512, label %513, label %519

513:                                              ; preds = %505
  %514 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %515 = load i32, i32* @AV_LOG_ERROR, align 4
  %516 = load i64, i64* %14, align 8
  %517 = call i32 (%struct.TYPE_45__*, i32, i8*, ...) @av_log(%struct.TYPE_45__* %514, i32 %515, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %516)
  %518 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %518, i32* %2, align 4
  br label %520

519:                                              ; preds = %505
  store i32 0, i32* %2, align 4
  br label %520

520:                                              ; preds = %519, %513, %342, %300, %191, %146, %128, %110, %97, %59
  %521 = load i32, i32* %2, align 4
  ret i32 %521
}

declare dso_local i64 @MFXQueryIMPL(i32, i32*) #1

declare dso_local i64 @MFXQueryVersion(i32, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_45__*, i32, i8*, ...) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i64 @MFXVideoCORE_GetHandle(i32, i32, i32**) #1

declare dso_local i64 @MFXInit(i32, i32*, i32*) #1

declare dso_local i64 @MFXVideoCORE_SetHandle(i32, i32, i32*) #1

declare dso_local i64 @QSV_RUNTIME_VERSION_ATLEAST(i32, i32, i32) #1

declare dso_local i64 @MFXJoinSession(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_38__*, i32, i32) #1

declare dso_local i8* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @MFXVideoCORE_SetFrameAllocator(i32, %struct.TYPE_39__*) #1

declare dso_local i64 @MFXVideoVPP_Init(i32, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
