; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_join.c_join_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_join.c_join_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__**, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Requested channel %s is not present in input stream #%d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Could not find input channel for output channel '%s'.\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"mappings: \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%d.%s => %s \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"No channels are used from input stream %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @join_config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @join_config_output(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %4, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32* @av_mallocz_array(i32 %22, i32 4)
  store i32* %23, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %253

28:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %103, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %106

35:                                               ; preds = %29
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %40
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %9, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %103

47:                                               ; preds = %35
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %50, i64 %53
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %10, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %47
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @av_channel_layout_extract_channel(i32 %63, i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %60, %47
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %70
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = load i32, i32* @AV_LOG_ERROR, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @av_get_channel_name(i32 %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %80, i32 %81, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %85, i64 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = call i32 @AVERROR(i32 %90)
  store i32 %91, i32* %8, align 4
  br label %250

92:                                               ; preds = %70
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %95
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %92, %46
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %29

106:                                              ; preds = %29
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %130, %106
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %107
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %118
  store %struct.TYPE_12__* %119, %struct.TYPE_12__** %11, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ult i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %113
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @guess_map_matching(%struct.TYPE_14__* %125, %struct.TYPE_12__* %126, i32* %127)
  br label %129

129:                                              ; preds = %124, %113
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %107

133:                                              ; preds = %107
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %186, %133
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %189

140:                                              ; preds = %134
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 %145
  store %struct.TYPE_12__* %146, %struct.TYPE_12__** %12, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ult i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %140
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = call i32 @guess_map_any(%struct.TYPE_14__* %152, %struct.TYPE_12__* %153, i32* %154)
  br label %156

156:                                              ; preds = %151, %140
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ult i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %163 = load i32, i32* @AV_LOG_ERROR, align 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @av_get_channel_name(i32 %166)
  %168 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %162, i32 %163, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  br label %250

169:                                              ; preds = %156
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %171, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %172, i64 %175
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @av_get_channel_layout_channel_index(i32 %179, i32 %182)
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %169
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %134

189:                                              ; preds = %134
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %191 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %192 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %190, i32 %191, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %193

193:                                              ; preds = %220, %189
  %194 = load i32, i32* %7, align 4
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %223

199:                                              ; preds = %193
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i64 %204
  store %struct.TYPE_12__* %205, %struct.TYPE_12__** %13, align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %207 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @av_get_channel_name(i32 %213)
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @av_get_channel_name(i32 %217)
  %219 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %206, i32 %207, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %210, i32 %214, i32 %218)
  br label %220

220:                                              ; preds = %199
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  br label %193

223:                                              ; preds = %193
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %225 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %226 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %224, i32 %225, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %227

227:                                              ; preds = %246, %223
  %228 = load i32, i32* %7, align 4
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %249

233:                                              ; preds = %227
  %234 = load i32*, i32** %6, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %233
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %242 = load i32, i32* @AV_LOG_WARNING, align 4
  %243 = load i32, i32* %7, align 4
  %244 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %241, i32 %242, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %240, %233
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %7, align 4
  br label %227

249:                                              ; preds = %227
  br label %250

250:                                              ; preds = %249, %161, %79
  %251 = call i32 @av_freep(i32** %6)
  %252 = load i32, i32* %8, align 4
  store i32 %252, i32* %2, align 4
  br label %253

253:                                              ; preds = %250, %25
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i32* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_channel_layout_extract_channel(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @av_get_channel_name(i32) #1

declare dso_local i32 @guess_map_matching(%struct.TYPE_14__*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @guess_map_any(%struct.TYPE_14__*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @av_get_channel_layout_channel_index(i32, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
