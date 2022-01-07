; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_transcode_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_transcode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_38__**, %struct.TYPE_43__** }
%struct.TYPE_38__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_32__*, %struct.TYPE_37__*, i32, %struct.TYPE_36__**, i32, i32 }
%struct.TYPE_32__ = type { i8*, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__*, i32 }
%struct.TYPE_35__ = type { i8* }
%struct.TYPE_43__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_41__*, i64 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_29__** }
%struct.TYPE_29__ = type { i32, i64*, i32 }
%struct.TYPE_42__ = type { i64, %struct.TYPE_32__*, i64, %struct.TYPE_26__*, i32, i32, %struct.TYPE_40__*, i64, i32 }
%struct.TYPE_40__ = type { i8*, %struct.TYPE_35__* }
%struct.TYPE_33__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_31__ = type { i8* }

@nb_filtergraphs = common dso_local global i32 0, align 4
@filtergraphs = common dso_local global %struct.TYPE_28__** null, align 8
@nb_input_streams = common dso_local global i32 0, align 4
@input_streams = common dso_local global %struct.TYPE_26__** null, align 8
@nb_input_files = common dso_local global i32 0, align 4
@input_files = common dso_local global %struct.TYPE_27__** null, align 8
@nb_output_streams = common dso_local global i32 0, align 4
@output_streams = common dso_local global %struct.TYPE_42__** null, align 8
@AVDISCARD_ALL = common dso_local global i32 0, align 4
@AVDISCARD_DEFAULT = common dso_local global i32 0, align 4
@nb_output_files = common dso_local global i32 0, align 4
@output_files = common dso_local global %struct.TYPE_33__** null, align 8
@AVFMT_NOSTREAMS = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Stream mapping:\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"  Stream #%d:%d (%s) -> %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" (graph %d)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"  File %s -> Stream #%d:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c" -> Stream #%d:%d (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"  Stream #%d:%d -> #%d:%d\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c" [sync #%d:%d]\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" (copy)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"native\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c" (%s (%s) -> %s (%s))\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@transcode_init_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @transcode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transcode_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_42__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_43__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.TYPE_32__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_31__*, align 8
  store i32 0, i32* %2, align 4
  %23 = bitcast [1024 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 1024, i1 false)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %101, %0
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @nb_filtergraphs, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %104

28:                                               ; preds = %24
  %29 = load %struct.TYPE_28__**, %struct.TYPE_28__*** @filtergraphs, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %29, i64 %31
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  store %struct.TYPE_28__* %33, %struct.TYPE_28__** %10, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %97, %28
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %100

40:                                               ; preds = %34
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_43__**, %struct.TYPE_43__*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_43__*, %struct.TYPE_43__** %43, i64 %45
  %47 = load %struct.TYPE_43__*, %struct.TYPE_43__** %46, align 8
  store %struct.TYPE_43__* %47, %struct.TYPE_43__** %11, align 8
  %48 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_39__*, %struct.TYPE_39__** %49, align 8
  %51 = icmp ne %struct.TYPE_39__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_39__*, %struct.TYPE_39__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52, %40
  br label %97

60:                                               ; preds = %52
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %97

66:                                               ; preds = %60
  %67 = load i32, i32* @nb_input_streams, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %88, %66
  %70 = load i32, i32* %5, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %75, i64 0
  %77 = load %struct.TYPE_38__*, %struct.TYPE_38__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %78, align 8
  %80 = load %struct.TYPE_26__**, %struct.TYPE_26__*** @input_streams, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %80, i64 %82
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %83, align 8
  %85 = icmp eq %struct.TYPE_26__* %79, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  br label %91

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %5, align 4
  br label %69

91:                                               ; preds = %86, %69
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_39__*, %struct.TYPE_39__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %65, %59
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %34

100:                                              ; preds = %34
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %24

104:                                              ; preds = %24
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %143, %104
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @nb_input_files, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %146

109:                                              ; preds = %105
  %110 = load %struct.TYPE_27__**, %struct.TYPE_27__*** @input_files, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %110, i64 %112
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %113, align 8
  store %struct.TYPE_27__* %114, %struct.TYPE_27__** %12, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %142

119:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %138, %119
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %141

126:                                              ; preds = %120
  %127 = call i32 (...) @av_gettime_relative()
  %128 = load %struct.TYPE_26__**, %struct.TYPE_26__*** @input_streams, align 8
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %129, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %128, i64 %134
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 6
  store i32 %127, i32* %137, align 4
  br label %138

138:                                              ; preds = %126
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %120

141:                                              ; preds = %120
  br label %142

142:                                              ; preds = %141, %109
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %3, align 4
  br label %105

146:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %176, %146
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @nb_input_streams, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %179

151:                                              ; preds = %147
  %152 = load i32, i32* %3, align 4
  %153 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %154 = call i32 @init_input_stream(i32 %152, i8* %153, i32 1024)
  store i32 %154, i32* %2, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %151
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %171, %156
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* @nb_output_streams, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %157
  %162 = load %struct.TYPE_42__**, %struct.TYPE_42__*** @output_streams, align 8
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %162, i64 %164
  %166 = load %struct.TYPE_42__*, %struct.TYPE_42__** %165, align 8
  store %struct.TYPE_42__* %166, %struct.TYPE_42__** %7, align 8
  %167 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @avcodec_close(i32 %169)
  br label %171

171:                                              ; preds = %161
  %172 = load i32, i32* %3, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %3, align 4
  br label %157

174:                                              ; preds = %157
  br label %324

175:                                              ; preds = %151
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %3, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %3, align 4
  br label %147

179:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %206, %179
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* @nb_output_streams, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %209

184:                                              ; preds = %180
  %185 = load %struct.TYPE_42__**, %struct.TYPE_42__*** @output_streams, align 8
  %186 = load i32, i32* %3, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %185, i64 %187
  %189 = load %struct.TYPE_42__*, %struct.TYPE_42__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %189, i32 0, i32 6
  %191 = load %struct.TYPE_40__*, %struct.TYPE_40__** %190, align 8
  %192 = icmp ne %struct.TYPE_40__* %191, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %184
  br label %206

194:                                              ; preds = %184
  %195 = load %struct.TYPE_42__**, %struct.TYPE_42__*** @output_streams, align 8
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %195, i64 %197
  %199 = load %struct.TYPE_42__*, %struct.TYPE_42__** %198, align 8
  %200 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %201 = call i32 @init_output_stream(%struct.TYPE_42__* %199, i8* %200, i32 1024)
  store i32 %201, i32* %2, align 4
  %202 = load i32, i32* %2, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %194
  br label %324

205:                                              ; preds = %194
  br label %206

206:                                              ; preds = %205, %193
  %207 = load i32, i32* %3, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %3, align 4
  br label %180

209:                                              ; preds = %180
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %278, %209
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* @nb_input_files, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %281

214:                                              ; preds = %210
  %215 = load %struct.TYPE_27__**, %struct.TYPE_27__*** @input_files, align 8
  %216 = load i32, i32* %3, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %215, i64 %217
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %218, align 8
  store %struct.TYPE_27__* %219, %struct.TYPE_27__** %13, align 8
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %274, %214
  %221 = load i32, i32* %4, align 4
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 2
  %224 = load %struct.TYPE_41__*, %struct.TYPE_41__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp slt i32 %221, %226
  br i1 %227, label %228, label %277

228:                                              ; preds = %220
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_41__*, %struct.TYPE_41__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %232, align 8
  %234 = load i32, i32* %4, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %233, i64 %235
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %236, align 8
  store %struct.TYPE_29__* %237, %struct.TYPE_29__** %14, align 8
  %238 = load i32, i32* @AVDISCARD_ALL, align 4
  store i32 %238, i32* %15, align 4
  store i32 0, i32* %5, align 4
  br label %239

239:                                              ; preds = %267, %228
  %240 = load i32, i32* %5, align 4
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp slt i32 %240, %243
  br i1 %244, label %245, label %270

245:                                              ; preds = %239
  %246 = load %struct.TYPE_26__**, %struct.TYPE_26__*** @input_streams, align 8
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %251, i32 0, i32 1
  %253 = load i64*, i64** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i64, i64* %253, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = add i64 %250, %257
  %259 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %246, i64 %258
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %245
  %265 = load i32, i32* @AVDISCARD_DEFAULT, align 4
  store i32 %265, i32* %15, align 4
  br label %270

266:                                              ; preds = %245
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %5, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %5, align 4
  br label %239

270:                                              ; preds = %264, %239
  %271 = load i32, i32* %15, align 4
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 8
  br label %274

274:                                              ; preds = %270
  %275 = load i32, i32* %4, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %4, align 4
  br label %220

277:                                              ; preds = %220
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %3, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %3, align 4
  br label %210

281:                                              ; preds = %210
  store i32 0, i32* %3, align 4
  br label %282

282:                                              ; preds = %320, %281
  %283 = load i32, i32* %3, align 4
  %284 = load i32, i32* @nb_output_files, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %323

286:                                              ; preds = %282
  %287 = load %struct.TYPE_33__**, %struct.TYPE_33__*** @output_files, align 8
  %288 = load i32, i32* %3, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %287, i64 %289
  %291 = load %struct.TYPE_33__*, %struct.TYPE_33__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %292, align 8
  store %struct.TYPE_30__* %293, %struct.TYPE_30__** %6, align 8
  %294 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_34__*, %struct.TYPE_34__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @AVFMT_NOSTREAMS, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %319

302:                                              ; preds = %286
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %319

307:                                              ; preds = %302
  %308 = load %struct.TYPE_33__**, %struct.TYPE_33__*** @output_files, align 8
  %309 = load i32, i32* %3, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %308, i64 %310
  %312 = load %struct.TYPE_33__*, %struct.TYPE_33__** %311, align 8
  %313 = load i32, i32* %3, align 4
  %314 = call i32 @check_init_output_file(%struct.TYPE_33__* %312, i32 %313)
  store i32 %314, i32* %2, align 4
  %315 = load i32, i32* %2, align 4
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %307
  br label %324

318:                                              ; preds = %307
  br label %319

319:                                              ; preds = %318, %302, %286
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %3, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %3, align 4
  br label %282

323:                                              ; preds = %282
  br label %324

324:                                              ; preds = %323, %317, %204, %174
  %325 = load i32, i32* @AV_LOG_INFO, align 4
  %326 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %325, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %327

327:                                              ; preds = %412, %324
  %328 = load i32, i32* %3, align 4
  %329 = load i32, i32* @nb_input_streams, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %415

331:                                              ; preds = %327
  %332 = load %struct.TYPE_26__**, %struct.TYPE_26__*** @input_streams, align 8
  %333 = load i32, i32* %3, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %332, i64 %334
  %336 = load %struct.TYPE_26__*, %struct.TYPE_26__** %335, align 8
  store %struct.TYPE_26__* %336, %struct.TYPE_26__** %8, align 8
  store i32 0, i32* %4, align 4
  br label %337

337:                                              ; preds = %408, %331
  %338 = load i32, i32* %4, align 4
  %339 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = icmp slt i32 %338, %341
  br i1 %342, label %343, label %411

343:                                              ; preds = %337
  %344 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %344, i32 0, i32 4
  %346 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %345, align 8
  %347 = load i32, i32* %4, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %346, i64 %348
  %350 = load %struct.TYPE_36__*, %struct.TYPE_36__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_35__*, %struct.TYPE_35__** %351, align 8
  %353 = call i32 @filtergraph_is_simple(%struct.TYPE_35__* %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %407, label %355

355:                                              ; preds = %343
  %356 = load i32, i32* @AV_LOG_INFO, align 4
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %358 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %360, i32 0, i32 2
  %362 = load %struct.TYPE_37__*, %struct.TYPE_37__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_32__*, %struct.TYPE_32__** %366, align 8
  %368 = icmp ne %struct.TYPE_32__* %367, null
  br i1 %368, label %369, label %375

369:                                              ; preds = %355
  %370 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_32__*, %struct.TYPE_32__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %372, i32 0, i32 0
  %374 = load i8*, i8** %373, align 8
  br label %376

375:                                              ; preds = %355
  br label %376

376:                                              ; preds = %375, %369
  %377 = phi i8* [ %374, %369 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %375 ]
  %378 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %378, i32 0, i32 4
  %380 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %379, align 8
  %381 = load i32, i32* %4, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %380, i64 %382
  %384 = load %struct.TYPE_36__*, %struct.TYPE_36__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %356, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %359, i32 %364, i8* %377, i32 %386)
  %388 = load i32, i32* @nb_filtergraphs, align 4
  %389 = icmp sgt i32 %388, 1
  br i1 %389, label %390, label %404

390:                                              ; preds = %376
  %391 = load i32, i32* @AV_LOG_INFO, align 4
  %392 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %392, i32 0, i32 4
  %394 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %393, align 8
  %395 = load i32, i32* %4, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %394, i64 %396
  %398 = load %struct.TYPE_36__*, %struct.TYPE_36__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %398, i32 0, i32 0
  %400 = load %struct.TYPE_35__*, %struct.TYPE_35__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %400, i32 0, i32 0
  %402 = load i8*, i8** %401, align 8
  %403 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %391, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %402)
  br label %404

404:                                              ; preds = %390, %376
  %405 = load i32, i32* @AV_LOG_INFO, align 4
  %406 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %405, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %407

407:                                              ; preds = %404, %343
  br label %408

408:                                              ; preds = %407
  %409 = load i32, i32* %4, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %4, align 4
  br label %337

411:                                              ; preds = %337
  br label %412

412:                                              ; preds = %411
  %413 = load i32, i32* %3, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %3, align 4
  br label %327

415:                                              ; preds = %327
  store i32 0, i32* %3, align 4
  br label %416

416:                                              ; preds = %626, %415
  %417 = load i32, i32* %3, align 4
  %418 = load i32, i32* @nb_output_streams, align 4
  %419 = icmp slt i32 %417, %418
  br i1 %419, label %420, label %629

420:                                              ; preds = %416
  %421 = load %struct.TYPE_42__**, %struct.TYPE_42__*** @output_streams, align 8
  %422 = load i32, i32* %3, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_42__*, %struct.TYPE_42__** %421, i64 %423
  %425 = load %struct.TYPE_42__*, %struct.TYPE_42__** %424, align 8
  store %struct.TYPE_42__* %425, %struct.TYPE_42__** %7, align 8
  %426 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %426, i32 0, i32 7
  %428 = load i64, i64* %427, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %442

430:                                              ; preds = %420
  %431 = load i32, i32* @AV_LOG_INFO, align 4
  %432 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %433 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %432, i32 0, i32 7
  %434 = load i64, i64* %433, align 8
  %435 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %435, i32 0, i32 5
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %438, i32 0, i32 4
  %440 = load i32, i32* %439, align 8
  %441 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %431, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %434, i32 %437, i32 %440)
  br label %626

442:                                              ; preds = %420
  %443 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %444 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %443, i32 0, i32 6
  %445 = load %struct.TYPE_40__*, %struct.TYPE_40__** %444, align 8
  %446 = icmp ne %struct.TYPE_40__* %445, null
  br i1 %446, label %447, label %497

447:                                              ; preds = %442
  %448 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %449 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %448, i32 0, i32 6
  %450 = load %struct.TYPE_40__*, %struct.TYPE_40__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %450, i32 0, i32 1
  %452 = load %struct.TYPE_35__*, %struct.TYPE_35__** %451, align 8
  %453 = call i32 @filtergraph_is_simple(%struct.TYPE_35__* %452)
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %497, label %455

455:                                              ; preds = %447
  %456 = load i32, i32* @AV_LOG_INFO, align 4
  %457 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %458 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %457, i32 0, i32 6
  %459 = load %struct.TYPE_40__*, %struct.TYPE_40__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %459, i32 0, i32 0
  %461 = load i8*, i8** %460, align 8
  %462 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %456, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %461)
  %463 = load i32, i32* @nb_filtergraphs, align 4
  %464 = icmp sgt i32 %463, 1
  br i1 %464, label %465, label %475

465:                                              ; preds = %455
  %466 = load i32, i32* @AV_LOG_INFO, align 4
  %467 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %468 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %467, i32 0, i32 6
  %469 = load %struct.TYPE_40__*, %struct.TYPE_40__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %469, i32 0, i32 1
  %471 = load %struct.TYPE_35__*, %struct.TYPE_35__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %471, i32 0, i32 0
  %473 = load i8*, i8** %472, align 8
  %474 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %466, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %473)
  br label %475

475:                                              ; preds = %465, %455
  %476 = load i32, i32* @AV_LOG_INFO, align 4
  %477 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %478 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %477, i32 0, i32 5
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %481 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %480, i32 0, i32 4
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %484 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %483, i32 0, i32 1
  %485 = load %struct.TYPE_32__*, %struct.TYPE_32__** %484, align 8
  %486 = icmp ne %struct.TYPE_32__* %485, null
  br i1 %486, label %487, label %493

487:                                              ; preds = %475
  %488 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %489 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %488, i32 0, i32 1
  %490 = load %struct.TYPE_32__*, %struct.TYPE_32__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %490, i32 0, i32 0
  %492 = load i8*, i8** %491, align 8
  br label %494

493:                                              ; preds = %475
  br label %494

494:                                              ; preds = %493, %487
  %495 = phi i8* [ %492, %487 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %493 ]
  %496 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %476, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %479, i32 %482, i8* %495)
  br label %626

497:                                              ; preds = %447, %442
  %498 = load i32, i32* @AV_LOG_INFO, align 4
  %499 = load %struct.TYPE_26__**, %struct.TYPE_26__*** @input_streams, align 8
  %500 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %501 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %499, i64 %502
  %504 = load %struct.TYPE_26__*, %struct.TYPE_26__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %504, i32 0, i32 3
  %506 = load i32, i32* %505, align 8
  %507 = load %struct.TYPE_26__**, %struct.TYPE_26__*** @input_streams, align 8
  %508 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %509 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %508, i32 0, i32 0
  %510 = load i64, i64* %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %507, i64 %510
  %512 = load %struct.TYPE_26__*, %struct.TYPE_26__** %511, align 8
  %513 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %512, i32 0, i32 2
  %514 = load %struct.TYPE_37__*, %struct.TYPE_37__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 4
  %517 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %518 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %517, i32 0, i32 5
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %521 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %520, i32 0, i32 4
  %522 = load i32, i32* %521, align 8
  %523 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %498, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %506, i32 %516, i32 %519, i32 %522)
  %524 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %525 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %524, i32 0, i32 3
  %526 = load %struct.TYPE_26__*, %struct.TYPE_26__** %525, align 8
  %527 = load %struct.TYPE_26__**, %struct.TYPE_26__*** @input_streams, align 8
  %528 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %529 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %527, i64 %530
  %532 = load %struct.TYPE_26__*, %struct.TYPE_26__** %531, align 8
  %533 = icmp ne %struct.TYPE_26__* %526, %532
  br i1 %533, label %534, label %549

534:                                              ; preds = %497
  %535 = load i32, i32* @AV_LOG_INFO, align 4
  %536 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %537 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %536, i32 0, i32 3
  %538 = load %struct.TYPE_26__*, %struct.TYPE_26__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %538, i32 0, i32 3
  %540 = load i32, i32* %539, align 8
  %541 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %542 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %541, i32 0, i32 3
  %543 = load %struct.TYPE_26__*, %struct.TYPE_26__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %543, i32 0, i32 2
  %545 = load %struct.TYPE_37__*, %struct.TYPE_37__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 4
  %548 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %535, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %540, i32 %547)
  br label %549

549:                                              ; preds = %534, %497
  %550 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %551 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %550, i32 0, i32 2
  %552 = load i64, i64* %551, align 8
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %557

554:                                              ; preds = %549
  %555 = load i32, i32* @AV_LOG_INFO, align 4
  %556 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %555, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %623

557:                                              ; preds = %549
  %558 = load %struct.TYPE_26__**, %struct.TYPE_26__*** @input_streams, align 8
  %559 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %560 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %559, i32 0, i32 0
  %561 = load i64, i64* %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %558, i64 %561
  %563 = load %struct.TYPE_26__*, %struct.TYPE_26__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %563, i32 0, i32 1
  %565 = load %struct.TYPE_32__*, %struct.TYPE_32__** %564, align 8
  store %struct.TYPE_32__* %565, %struct.TYPE_32__** %16, align 8
  %566 = load %struct.TYPE_42__*, %struct.TYPE_42__** %7, align 8
  %567 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %566, i32 0, i32 1
  %568 = load %struct.TYPE_32__*, %struct.TYPE_32__** %567, align 8
  store %struct.TYPE_32__* %568, %struct.TYPE_32__** %17, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  %569 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %570 = icmp ne %struct.TYPE_32__* %569, null
  br i1 %570, label %571, label %592

571:                                              ; preds = %557
  %572 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %573 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %572, i32 0, i32 0
  %574 = load i8*, i8** %573, align 8
  store i8* %574, i8** %18, align 8
  %575 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %576 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %575, i32 0, i32 1
  %577 = load i32, i32* %576, align 8
  %578 = call %struct.TYPE_31__* @avcodec_descriptor_get(i32 %577)
  store %struct.TYPE_31__* %578, %struct.TYPE_31__** %22, align 8
  %579 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %580 = icmp ne %struct.TYPE_31__* %579, null
  br i1 %580, label %581, label %585

581:                                              ; preds = %571
  %582 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %583 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %582, i32 0, i32 0
  %584 = load i8*, i8** %583, align 8
  store i8* %584, i8** %19, align 8
  br label %585

585:                                              ; preds = %581, %571
  %586 = load i8*, i8** %18, align 8
  %587 = load i8*, i8** %19, align 8
  %588 = call i32 @strcmp(i8* %586, i8* %587)
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %591, label %590

590:                                              ; preds = %585
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %18, align 8
  br label %591

591:                                              ; preds = %590, %585
  br label %592

592:                                              ; preds = %591, %557
  %593 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %594 = icmp ne %struct.TYPE_32__* %593, null
  br i1 %594, label %595, label %616

595:                                              ; preds = %592
  %596 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %597 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %596, i32 0, i32 0
  %598 = load i8*, i8** %597, align 8
  store i8* %598, i8** %20, align 8
  %599 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %600 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 8
  %602 = call %struct.TYPE_31__* @avcodec_descriptor_get(i32 %601)
  store %struct.TYPE_31__* %602, %struct.TYPE_31__** %22, align 8
  %603 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %604 = icmp ne %struct.TYPE_31__* %603, null
  br i1 %604, label %605, label %609

605:                                              ; preds = %595
  %606 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %607 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %606, i32 0, i32 0
  %608 = load i8*, i8** %607, align 8
  store i8* %608, i8** %21, align 8
  br label %609

609:                                              ; preds = %605, %595
  %610 = load i8*, i8** %20, align 8
  %611 = load i8*, i8** %21, align 8
  %612 = call i32 @strcmp(i8* %610, i8* %611)
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %615, label %614

614:                                              ; preds = %609
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %20, align 8
  br label %615

615:                                              ; preds = %614, %609
  br label %616

616:                                              ; preds = %615, %592
  %617 = load i32, i32* @AV_LOG_INFO, align 4
  %618 = load i8*, i8** %19, align 8
  %619 = load i8*, i8** %18, align 8
  %620 = load i8*, i8** %21, align 8
  %621 = load i8*, i8** %20, align 8
  %622 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %617, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %618, i8* %619, i8* %620, i8* %621)
  br label %623

623:                                              ; preds = %616, %554
  %624 = load i32, i32* @AV_LOG_INFO, align 4
  %625 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %624, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %626

626:                                              ; preds = %623, %494, %430
  %627 = load i32, i32* %3, align 4
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %3, align 4
  br label %416

629:                                              ; preds = %416
  %630 = load i32, i32* %2, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %632, label %637

632:                                              ; preds = %629
  %633 = load i32, i32* @AV_LOG_ERROR, align 4
  %634 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %635 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %633, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %634)
  %636 = load i32, i32* %2, align 4
  store i32 %636, i32* %1, align 4
  br label %639

637:                                              ; preds = %629
  %638 = call i32 @atomic_store(i32* @transcode_init_done, i32 1)
  store i32 0, i32* %1, align 4
  br label %639

639:                                              ; preds = %637, %632
  %640 = load i32, i32* %1, align 4
  ret i32 %640
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_gettime_relative(...) #2

declare dso_local i32 @init_input_stream(i32, i8*, i32) #2

declare dso_local i32 @avcodec_close(i32) #2

declare dso_local i32 @init_output_stream(%struct.TYPE_42__*, i8*, i32) #2

declare dso_local i32 @check_init_output_file(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #2

declare dso_local i32 @filtergraph_is_simple(%struct.TYPE_35__*) #2

declare dso_local %struct.TYPE_31__* @avcodec_descriptor_get(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @atomic_store(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
