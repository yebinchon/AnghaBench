; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_next_frame_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_next_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_28__*, %struct.TYPE_25__** }
%struct.TYPE_28__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32, i32, %struct.TYPE_26__*, i64 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i64, i32*, i64, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_27__*, i32, i32 }
%struct.TYPE_27__ = type { i64, i64, i64, i64, i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_BLOCK = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_SIMPLE_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Track Number\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Track Number: %u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Timecode\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"Lacing Head\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Frame Size: %i\00", align 1
@MKV_MAX_LACING_NUM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"Frame Size\00", align 1
@VC_CONTAINER_TIME_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_30__*, %struct.TYPE_22__*, i32*, i32*)* @mkv_read_next_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mkv_read_next_frame_header(%struct.TYPE_30__* %0, %struct.TYPE_22__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  store %struct.TYPE_31__* %29, %struct.TYPE_31__** %11, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %12, align 8
  store i32 0, i32* %16, align 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 12
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %31, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MKV_ELEMENT_ID_BLOCK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 12
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %43, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MKV_ELEMENT_ID_SIMPLE_BLOCK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %84

53:                                               ; preds = %41, %4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 12
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %55, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 12
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %64, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %62, %71
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 12
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %74, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %72, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %53
  br label %616

84:                                               ; preds = %53, %41
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %87 = call i64 @mkv_find_next_block(%struct.TYPE_30__* %85, %struct.TYPE_22__* %86)
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i64, i64* %10, align 8
  store i64 %92, i64* %5, align 8
  br label %811

93:                                               ; preds = %84
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 12
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %95, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %17, align 8
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %104 = call i32 @MKV_READ_UINT(%struct.TYPE_30__* %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %104, i32* %14, align 4
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @LOG_FORMAT(%struct.TYPE_30__* %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %109 = call i64 @MKV_READ_U16(%struct.TYPE_30__* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i64 %109, i64* %18, align 8
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %111 = call i8* @MKV_READ_U8(%struct.TYPE_30__* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %112 = ptrtoint i8* %111 to i32
  store i32 %112, i32* %15, align 4
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 12
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %114, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @MKV_ELEMENT_ID_BLOCK, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %93
  %125 = load i32, i32* %15, align 4
  %126 = and i32 %125, 15
  store i32 %126, i32* %15, align 4
  br label %127

127:                                              ; preds = %124, %93
  %128 = load i64, i64* %17, align 8
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i64, i64* @VC_CONTAINER_ERROR_CORRUPTED, align 8
  store i64 %131, i64* %5, align 8
  br label %811

132:                                              ; preds = %127
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %134 = call i64 @STREAM_STATUS(%struct.TYPE_30__* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %138 = call i64 @STREAM_STATUS(%struct.TYPE_30__* %137)
  store i64 %138, i64* %5, align 8
  br label %811

139:                                              ; preds = %132
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %175, %139
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ult i32 %141, %144
  br i1 %145, label %146, label %178

146:                                              ; preds = %140
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %149, i64 %151
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %146
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %165, i64 %167
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %172, align 8
  store %struct.TYPE_29__* %173, %struct.TYPE_29__** %12, align 8
  br label %178

174:                                              ; preds = %146
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %13, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %140

178:                                              ; preds = %162, %140
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 12
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %180, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @MKV_ELEMENT_ID_BLOCK, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %266

190:                                              ; preds = %178
  %191 = load i32, i32* %13, align 4
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ult i32 %191, %194
  br i1 %195, label %196, label %266

196:                                              ; preds = %190
  %197 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %198, align 8
  %200 = load i32, i32* %13, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %199, i64 %201
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %266

210:                                              ; preds = %196
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 14
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %265, label %215

215:                                              ; preds = %210
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %265

220:                                              ; preds = %215
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 12
  %223 = load %struct.TYPE_27__*, %struct.TYPE_27__** %222, align 8
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 12
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %231, align 8
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %229, %238
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 12
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %241, align 8
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = sub i64 %245, 1
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 4
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 12
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %251, align 8
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = sub i64 %255, 1
  %257 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %249, %259
  %261 = icmp sge i64 %239, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %220
  %263 = load i32, i32* %15, align 4
  %264 = or i32 %263, 128
  store i32 %264, i32* %15, align 4
  br label %265

265:                                              ; preds = %262, %220, %215, %210
  br label %266

266:                                              ; preds = %265, %196, %190, %178
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 1
  store i32 0, i32* %268, align 8
  %269 = load i32, i32* %13, align 4
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp ult i32 %269, %272
  br i1 %273, label %274, label %482

274:                                              ; preds = %266
  %275 = load i32, i32* %15, align 4
  %276 = and i32 %275, 6
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %482

278:                                              ; preds = %274
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %280 = call i8* @MKV_READ_U8(%struct.TYPE_30__* %279, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %281 = ptrtoint i8* %280 to i32
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 1
  store i32 %281, i32* %283, align 8
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 2
  store i64 0, i64* %285, align 8
  %286 = load i32, i32* %15, align 4
  %287 = and i32 %286, 6
  %288 = lshr i32 %287, 1
  switch i32 %288, label %384 [
    i32 1, label %289
    i32 3, label %339
  ]

289:                                              ; preds = %278
  store i32 0, i32* %19, align 4
  br label %290

290:                                              ; preds = %335, %289
  %291 = load i32, i32* %19, align 4
  %292 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = icmp ult i32 %291, %294
  br i1 %295, label %296, label %338

296:                                              ; preds = %290
  br label %297

297:                                              ; preds = %309, %296
  %298 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @vc_container_io_read_uint8(i32 %302)
  store i32 %303, i32* %20, align 4
  %304 = load i32, i32* %20, align 4
  %305 = load i32, i32* %21, align 4
  %306 = add i32 %305, %304
  store i32 %306, i32* %21, align 4
  %307 = load i64, i64* %17, align 8
  %308 = add nsw i64 %307, -1
  store i64 %308, i64* %17, align 8
  br label %309

309:                                              ; preds = %297
  %310 = load i32, i32* %20, align 4
  %311 = icmp eq i32 %310, 255
  br i1 %311, label %297, label %312

312:                                              ; preds = %309
  %313 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %314 = load i32, i32* %21, align 4
  %315 = call i32 @LOG_FORMAT(%struct.TYPE_30__* %313, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %314)
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @MKV_MAX_LACING_NUM, align 4
  %320 = icmp ugt i32 %318, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %312
  br label %335

322:                                              ; preds = %312
  %323 = load i32, i32* %21, align 4
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 3
  %326 = load i32*, i32** %325, align 8
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* %19, align 4
  %331 = add i32 %330, 1
  %332 = sub i32 %329, %331
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %326, i64 %333
  store i32 %323, i32* %334, align 4
  br label %335

335:                                              ; preds = %322, %321
  %336 = load i32, i32* %19, align 4
  %337 = add i32 %336, 1
  store i32 %337, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %290

338:                                              ; preds = %290
  br label %394

339:                                              ; preds = %278
  store i32 0, i32* %19, align 4
  br label %340

340:                                              ; preds = %380, %339
  %341 = load i32, i32* %19, align 4
  %342 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = icmp ult i32 %341, %344
  br i1 %345, label %346, label %383

346:                                              ; preds = %340
  %347 = load i32, i32* %19, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %352, label %349

349:                                              ; preds = %346
  %350 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %351 = call i32 @MKV_READ_UINT(%struct.TYPE_30__* %350, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 %351, i32* %21, align 4
  br label %357

352:                                              ; preds = %346
  %353 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %354 = call i32 @MKV_READ_SINT(%struct.TYPE_30__* %353, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %355 = load i32, i32* %21, align 4
  %356 = add i32 %355, %354
  store i32 %356, i32* %21, align 4
  br label %357

357:                                              ; preds = %352, %349
  %358 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %359 = load i32, i32* %21, align 4
  %360 = call i32 @LOG_FORMAT(%struct.TYPE_30__* %358, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %359)
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @MKV_MAX_LACING_NUM, align 4
  %365 = icmp ugt i32 %363, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %357
  br label %380

367:                                              ; preds = %357
  %368 = load i32, i32* %21, align 4
  %369 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %369, i32 0, i32 3
  %371 = load i32*, i32** %370, align 8
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* %19, align 4
  %376 = add i32 %375, 1
  %377 = sub i32 %374, %376
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %371, i64 %378
  store i32 %368, i32* %379, align 4
  br label %380

380:                                              ; preds = %367, %366
  %381 = load i32, i32* %19, align 4
  %382 = add i32 %381, 1
  store i32 %382, i32* %19, align 4
  br label %340

383:                                              ; preds = %340
  br label %394

384:                                              ; preds = %278
  %385 = load i64, i64* %17, align 8
  %386 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  %389 = add i32 %388, 1
  %390 = zext i32 %389 to i64
  %391 = sdiv i64 %385, %390
  %392 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %392, i32 0, i32 2
  store i64 %391, i64* %393, align 8
  br label %394

394:                                              ; preds = %384, %383, %338
  %395 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @MKV_MAX_LACING_NUM, align 4
  %399 = icmp ugt i32 %397, %398
  br i1 %399, label %400, label %404

400:                                              ; preds = %394
  %401 = load i32, i32* @MKV_MAX_LACING_NUM, align 4
  %402 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %402, i32 0, i32 1
  store i32 %401, i32* %403, align 8
  br label %404

404:                                              ; preds = %400, %394
  %405 = load i64, i64* %17, align 8
  %406 = icmp slt i64 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %404
  %408 = load i64, i64* @VC_CONTAINER_ERROR_CORRUPTED, align 8
  store i64 %408, i64* %5, align 8
  br label %811

409:                                              ; preds = %404
  %410 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %411 = call i64 @STREAM_STATUS(%struct.TYPE_30__* %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %416

413:                                              ; preds = %409
  %414 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %415 = call i64 @STREAM_STATUS(%struct.TYPE_30__* %414)
  store i64 %415, i64* %5, align 8
  br label %811

416:                                              ; preds = %409
  %417 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %418 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %417, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %421 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %420, i32 0, i32 4
  store i64 %419, i64* %421, align 8
  %422 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %423 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %422, i32 0, i32 2
  %424 = load i64, i64* %423, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %475, label %426

426:                                              ; preds = %416
  store i64 0, i64* %22, align 8
  %427 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %428 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  store i32 %429, i32* %19, align 4
  br label %430

430:                                              ; preds = %471, %426
  %431 = load i32, i32* %19, align 4
  %432 = icmp ugt i32 %431, 0
  br i1 %432, label %433, label %474

433:                                              ; preds = %430
  %434 = load i64, i64* %22, align 8
  %435 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %435, i32 0, i32 3
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* %19, align 4
  %439 = sub i32 %438, 1
  %440 = zext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %437, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = zext i32 %442 to i64
  %444 = add nsw i64 %434, %443
  %445 = load i64, i64* %17, align 8
  %446 = icmp sgt i64 %444, %445
  br i1 %446, label %447, label %459

447:                                              ; preds = %433
  %448 = load i64, i64* %17, align 8
  %449 = load i64, i64* %22, align 8
  %450 = sub nsw i64 %448, %449
  %451 = trunc i64 %450 to i32
  %452 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %453 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %452, i32 0, i32 3
  %454 = load i32*, i32** %453, align 8
  %455 = load i32, i32* %19, align 4
  %456 = sub i32 %455, 1
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %454, i64 %457
  store i32 %451, i32* %458, align 4
  br label %459

459:                                              ; preds = %447, %433
  %460 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %461 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %460, i32 0, i32 3
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %19, align 4
  %464 = sub i32 %463, 1
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %462, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = zext i32 %467 to i64
  %469 = load i64, i64* %22, align 8
  %470 = add nsw i64 %469, %468
  store i64 %470, i64* %22, align 8
  br label %471

471:                                              ; preds = %459
  %472 = load i32, i32* %19, align 4
  %473 = add i32 %472, -1
  store i32 %473, i32* %19, align 4
  br label %430

474:                                              ; preds = %430
  br label %475

475:                                              ; preds = %474, %416
  %476 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %477 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %476, i32 0, i32 4
  store i64 0, i64* %477, align 8
  %478 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %479 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 8
  %481 = add i32 %480, 1
  store i32 %481, i32* %479, align 8
  store i32 1, i32* %16, align 4
  br label %482

482:                                              ; preds = %475, %274, %266
  %483 = load i32, i32* %13, align 4
  %484 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %485 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %484, i32 0, i32 5
  store i32 %483, i32* %485, align 8
  %486 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %487 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %486, i32 0, i32 7
  %488 = load i64, i64* %487, align 8
  %489 = load i64, i64* %18, align 8
  %490 = add nsw i64 %488, %489
  %491 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %492 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = mul nsw i64 %490, %493
  %495 = trunc i64 %494 to i32
  %496 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %497 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %496, i32 0, i32 6
  store i32 %495, i32* %497, align 4
  %498 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %499 = icmp ne %struct.TYPE_29__* %498, null
  br i1 %499, label %500, label %508

500:                                              ; preds = %482
  %501 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %502 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %505 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %504, i32 0, i32 6
  %506 = load i32, i32* %505, align 4
  %507 = mul nsw i32 %506, %503
  store i32 %507, i32* %505, align 4
  br label %508

508:                                              ; preds = %500, %482
  %509 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %510 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %509, i32 0, i32 6
  %511 = load i32, i32* %510, align 4
  %512 = sdiv i32 %511, 1000
  store i32 %512, i32* %510, align 4
  %513 = load i32, i32* %15, align 4
  %514 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %515 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %514, i32 0, i32 8
  store i32 %513, i32* %515, align 8
  %516 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %517 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %516, i32 0, i32 9
  %518 = load i32, i32* %517, align 4
  %519 = sext i32 %518 to i64
  %520 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %521 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = mul nsw i64 %519, %522
  %524 = sdiv i64 %523, 1000
  %525 = trunc i64 %524 to i32
  %526 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %527 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %526, i32 0, i32 9
  store i32 %525, i32* %527, align 4
  %528 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %529 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 8
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %540

532:                                              ; preds = %508
  %533 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %534 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 8
  %536 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %537 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %536, i32 0, i32 9
  %538 = load i32, i32* %537, align 4
  %539 = udiv i32 %538, %535
  store i32 %539, i32* %537, align 4
  br label %540

540:                                              ; preds = %532, %508
  %541 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %542 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %541, i32 0, i32 9
  %543 = load i32, i32* %542, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %555, label %545

545:                                              ; preds = %540
  %546 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %547 = icmp ne %struct.TYPE_29__* %546, null
  br i1 %547, label %548, label %555

548:                                              ; preds = %545
  %549 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %550 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 8
  %552 = sdiv i32 %551, 1000
  %553 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %554 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %553, i32 0, i32 9
  store i32 %552, i32* %554, align 4
  br label %555

555:                                              ; preds = %548, %545, %540
  %556 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %557 = call i64 @STREAM_POSITION(%struct.TYPE_30__* %556)
  %558 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %559 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %558, i32 0, i32 12
  %560 = load %struct.TYPE_27__*, %struct.TYPE_27__** %559, align 8
  %561 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %562 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %561, i32 0, i32 0
  %563 = load i64, i64* %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %560, i64 %563
  %565 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %564, i32 0, i32 4
  %566 = load i64, i64* %565, align 8
  %567 = sub nsw i64 %557, %566
  %568 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %569 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %568, i32 0, i32 12
  %570 = load %struct.TYPE_27__*, %struct.TYPE_27__** %569, align 8
  %571 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %572 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %571, i32 0, i32 0
  %573 = load i64, i64* %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %570, i64 %573
  %575 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %574, i32 0, i32 1
  store i64 %567, i64* %575, align 8
  %576 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %577 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %576, i32 0, i32 12
  %578 = load %struct.TYPE_27__*, %struct.TYPE_27__** %577, align 8
  %579 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %580 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %579, i32 0, i32 0
  %581 = load i64, i64* %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %578, i64 %581
  %583 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %582, i32 0, i32 2
  store i64 0, i64* %583, align 8
  %584 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %585 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %584, i32 0, i32 10
  store i32 0, i32* %585, align 8
  %586 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %587 = icmp ne %struct.TYPE_29__* %586, null
  br i1 %587, label %588, label %610

588:                                              ; preds = %555
  %589 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %590 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %589, i32 0, i32 4
  %591 = load i64, i64* %590, align 8
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %610

593:                                              ; preds = %588
  %594 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %595 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %594, i32 0, i32 3
  %596 = load %struct.TYPE_26__*, %struct.TYPE_26__** %595, align 8
  %597 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %596, i64 0
  %598 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 4
  %600 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %601 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %600, i32 0, i32 10
  store i32 %599, i32* %601, align 8
  %602 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %603 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %602, i32 0, i32 3
  %604 = load %struct.TYPE_26__*, %struct.TYPE_26__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %604, i64 0
  %606 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 4
  %608 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %609 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %608, i32 0, i32 13
  store i32 %607, i32* %609, align 8
  br label %610

610:                                              ; preds = %593, %588, %555
  %611 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %612 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %611, i32 0, i32 10
  %613 = load i32, i32* %612, align 8
  %614 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %615 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %614, i32 0, i32 11
  store i32 %613, i32* %615, align 4
  br label %616

616:                                              ; preds = %610, %83
  %617 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %618 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %617, i32 0, i32 12
  %619 = load %struct.TYPE_27__*, %struct.TYPE_27__** %618, align 8
  %620 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %621 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %620, i32 0, i32 0
  %622 = load i64, i64* %621, align 8
  %623 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %619, i64 %622
  %624 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %623, i32 0, i32 3
  %625 = load i64, i64* %624, align 8
  %626 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %627 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %626, i32 0, i32 12
  %628 = load %struct.TYPE_27__*, %struct.TYPE_27__** %627, align 8
  %629 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %630 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %629, i32 0, i32 0
  %631 = load i64, i64* %630, align 8
  %632 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %628, i64 %631
  %633 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %632, i32 0, i32 1
  %634 = load i64, i64* %633, align 8
  %635 = sub nsw i64 %625, %634
  %636 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %637 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %636, i32 0, i32 12
  %638 = load %struct.TYPE_27__*, %struct.TYPE_27__** %637, align 8
  %639 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %640 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %639, i32 0, i32 0
  %641 = load i64, i64* %640, align 8
  %642 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %638, i64 %641
  %643 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %642, i32 0, i32 2
  %644 = load i64, i64* %643, align 8
  %645 = sub nsw i64 %635, %644
  %646 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %647 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %646, i32 0, i32 10
  %648 = load i32, i32* %647, align 8
  %649 = zext i32 %648 to i64
  %650 = add nsw i64 %645, %649
  %651 = trunc i64 %650 to i32
  %652 = load i32*, i32** %9, align 8
  store i32 %651, i32* %652, align 4
  %653 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %654 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %653, i32 0, i32 5
  %655 = load i32, i32* %654, align 8
  %656 = load i32*, i32** %8, align 8
  store i32 %655, i32* %656, align 4
  %657 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %658 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %657, i32 0, i32 1
  %659 = load i32, i32* %658, align 8
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %774

661:                                              ; preds = %616
  %662 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %663 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %662, i32 0, i32 12
  %664 = load %struct.TYPE_27__*, %struct.TYPE_27__** %663, align 8
  %665 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %666 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %665, i32 0, i32 0
  %667 = load i64, i64* %666, align 8
  %668 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %664, i64 %667
  %669 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %668, i32 0, i32 2
  %670 = load i64, i64* %669, align 8
  %671 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %672 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %671, i32 0, i32 4
  %673 = load i64, i64* %672, align 8
  %674 = icmp sge i64 %670, %673
  br i1 %674, label %675, label %774

675:                                              ; preds = %661
  %676 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %677 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %676, i32 0, i32 1
  %678 = load i32, i32* %677, align 8
  %679 = add i32 %678, -1
  store i32 %679, i32* %677, align 8
  %680 = icmp ne i32 %679, 0
  br i1 %680, label %681, label %706

681:                                              ; preds = %675
  %682 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %683 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %682, i32 0, i32 2
  %684 = load i64, i64* %683, align 8
  %685 = trunc i64 %684 to i32
  store i32 %685, i32* %23, align 4
  %686 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %687 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %686, i32 0, i32 2
  %688 = load i64, i64* %687, align 8
  %689 = icmp ne i64 %688, 0
  br i1 %689, label %701, label %690

690:                                              ; preds = %681
  %691 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %692 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %691, i32 0, i32 3
  %693 = load i32*, i32** %692, align 8
  %694 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %695 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %694, i32 0, i32 1
  %696 = load i32, i32* %695, align 8
  %697 = sub i32 %696, 1
  %698 = zext i32 %697 to i64
  %699 = getelementptr inbounds i32, i32* %693, i64 %698
  %700 = load i32, i32* %699, align 4
  store i32 %700, i32* %23, align 4
  br label %701

701:                                              ; preds = %690, %681
  %702 = load i32, i32* %23, align 4
  %703 = zext i32 %702 to i64
  %704 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %705 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %704, i32 0, i32 4
  store i64 %703, i64* %705, align 8
  br label %706

706:                                              ; preds = %701, %675
  %707 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %708 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %707, i32 0, i32 12
  %709 = load %struct.TYPE_27__*, %struct.TYPE_27__** %708, align 8
  %710 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %711 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %710, i32 0, i32 0
  %712 = load i64, i64* %711, align 8
  %713 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %709, i64 %712
  %714 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %713, i32 0, i32 2
  %715 = load i64, i64* %714, align 8
  %716 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %717 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %716, i32 0, i32 12
  %718 = load %struct.TYPE_27__*, %struct.TYPE_27__** %717, align 8
  %719 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %720 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %719, i32 0, i32 0
  %721 = load i64, i64* %720, align 8
  %722 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %718, i64 %721
  %723 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %722, i32 0, i32 1
  %724 = load i64, i64* %723, align 8
  %725 = add nsw i64 %724, %715
  store i64 %725, i64* %723, align 8
  %726 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %727 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %726, i32 0, i32 12
  %728 = load %struct.TYPE_27__*, %struct.TYPE_27__** %727, align 8
  %729 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %730 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %729, i32 0, i32 0
  %731 = load i64, i64* %730, align 8
  %732 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %728, i64 %731
  %733 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %732, i32 0, i32 2
  store i64 0, i64* %733, align 8
  %734 = load i32, i32* %16, align 4
  %735 = icmp ne i32 %734, 0
  br i1 %735, label %749, label %736

736:                                              ; preds = %706
  %737 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %738 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %737, i32 0, i32 9
  %739 = load i32, i32* %738, align 4
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %749

741:                                              ; preds = %736
  %742 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %743 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %742, i32 0, i32 9
  %744 = load i32, i32* %743, align 4
  %745 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %746 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %745, i32 0, i32 6
  %747 = load i32, i32* %746, align 4
  %748 = add nsw i32 %747, %744
  store i32 %748, i32* %746, align 4
  br label %757

749:                                              ; preds = %736, %706
  %750 = load i32, i32* %16, align 4
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %756, label %752

752:                                              ; preds = %749
  %753 = load i32, i32* @VC_CONTAINER_TIME_UNKNOWN, align 4
  %754 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %755 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %754, i32 0, i32 6
  store i32 %753, i32* %755, align 4
  br label %756

756:                                              ; preds = %752, %749
  br label %757

757:                                              ; preds = %756, %741
  %758 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %759 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %758, i32 0, i32 11
  %760 = load i32, i32* %759, align 4
  %761 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %762 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %761, i32 0, i32 10
  %763 = load i32, i32* %762, align 8
  %764 = sub i32 %760, %763
  %765 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %766 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %765, i32 0, i32 13
  %767 = load i32, i32* %766, align 8
  %768 = sub i32 %767, %764
  store i32 %768, i32* %766, align 8
  %769 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %770 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %769, i32 0, i32 11
  %771 = load i32, i32* %770, align 4
  %772 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %773 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %772, i32 0, i32 10
  store i32 %771, i32* %773, align 8
  br label %774

774:                                              ; preds = %757, %661, %616
  %775 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %776 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %775, i32 0, i32 1
  %777 = load i32, i32* %776, align 8
  %778 = icmp ne i32 %777, 0
  br i1 %778, label %779, label %800

779:                                              ; preds = %774
  %780 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %781 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %780, i32 0, i32 4
  %782 = load i64, i64* %781, align 8
  %783 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %784 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %783, i32 0, i32 12
  %785 = load %struct.TYPE_27__*, %struct.TYPE_27__** %784, align 8
  %786 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %787 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %786, i32 0, i32 0
  %788 = load i64, i64* %787, align 8
  %789 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %785, i64 %788
  %790 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %789, i32 0, i32 2
  %791 = load i64, i64* %790, align 8
  %792 = sub nsw i64 %782, %791
  %793 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %794 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %793, i32 0, i32 10
  %795 = load i32, i32* %794, align 8
  %796 = zext i32 %795 to i64
  %797 = add nsw i64 %792, %796
  %798 = trunc i64 %797 to i32
  %799 = load i32*, i32** %9, align 8
  store i32 %798, i32* %799, align 4
  br label %800

800:                                              ; preds = %779, %774
  %801 = load i64, i64* %10, align 8
  %802 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %803 = icmp eq i64 %801, %802
  br i1 %803, label %804, label %807

804:                                              ; preds = %800
  %805 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %806 = call i64 @STREAM_STATUS(%struct.TYPE_30__* %805)
  br label %809

807:                                              ; preds = %800
  %808 = load i64, i64* %10, align 8
  br label %809

809:                                              ; preds = %807, %804
  %810 = phi i64 [ %806, %804 ], [ %808, %807 ]
  store i64 %810, i64* %5, align 8
  br label %811

811:                                              ; preds = %809, %413, %407, %136, %130, %91
  %812 = load i64, i64* %5, align 8
  ret i64 %812
}

declare dso_local i64 @mkv_find_next_block(%struct.TYPE_30__*, %struct.TYPE_22__*) #1

declare dso_local i32 @MKV_READ_UINT(%struct.TYPE_30__*, i8*) #1

declare dso_local i32 @LOG_FORMAT(%struct.TYPE_30__*, i8*, i32) #1

declare dso_local i64 @MKV_READ_U16(%struct.TYPE_30__*, i8*) #1

declare dso_local i8* @MKV_READ_U8(%struct.TYPE_30__*, i8*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_30__*) #1

declare dso_local i32 @vc_container_io_read_uint8(i32) #1

declare dso_local i32 @MKV_READ_SINT(%struct.TYPE_30__*, i8*) #1

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
