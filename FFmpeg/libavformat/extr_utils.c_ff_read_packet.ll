; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, i32, %struct.TYPE_34__*, i64, %struct.TYPE_35__**, %struct.TYPE_33__* }
%struct.TYPE_34__ = type { i64, %struct.TYPE_32__*, %struct.TYPE_36__* }
%struct.TYPE_32__ = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i64, i32, i32, i8*, i8*, i32* }
%struct.TYPE_36__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_35__ = type { i64, i64, i32, i8*, i8*, i8*, i64 }
%struct.TYPE_33__ = type { {}* }

@FFERROR_REDO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AVFMT_FLAG_DISCARD_CORRUPT = common dso_local global i32 0, align 4
@AV_PKT_FLAG_CORRUPT = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Dropped corrupted packet (stream = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid stream index.\0A\00", align 1
@AV_PTS_WRAP_SUB_OFFSET = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_read_packet(%struct.TYPE_38__* %0, %struct.TYPE_37__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca %struct.TYPE_37__*, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %4, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %5, align 8
  %12 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %12, i32 0, i32 5
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %17 = call i32 @av_init_packet(%struct.TYPE_37__* %16)
  br label %18

18:                                               ; preds = %343, %171, %147, %94, %2
  %19 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_36__*, %struct.TYPE_36__** %22, align 8
  store %struct.TYPE_36__* %23, %struct.TYPE_36__** %10, align 8
  %24 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %25 = icmp ne %struct.TYPE_36__* %24, null
  br i1 %25, label %26, label %76

26:                                               ; preds = %18
  %27 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %28, align 8
  %30 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %29, i64 %33
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %34, align 8
  store %struct.TYPE_35__* %35, %struct.TYPE_35__** %9, align 8
  %36 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %26
  %43 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %45 = call i32 @probe_codec(%struct.TYPE_38__* %43, %struct.TYPE_35__* %44, %struct.TYPE_37__* null)
  store i32 %45, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %344

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %26
  %51 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_34__*, %struct.TYPE_34__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %65 = call i32 @ff_packet_list_get(%struct.TYPE_36__** %59, %struct.TYPE_32__** %63, %struct.TYPE_37__* %64)
  %66 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %68
  store i64 %74, i64* %72, align 8
  store i32 0, i32* %3, align 4
  br label %344

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %75, %18
  %77 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 0
  %81 = bitcast {}** %80 to i32 (%struct.TYPE_38__*, %struct.TYPE_37__*)**
  %82 = load i32 (%struct.TYPE_38__*, %struct.TYPE_37__*)*, i32 (%struct.TYPE_38__*, %struct.TYPE_37__*)** %81, align 8
  %83 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %84 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %85 = call i32 %82(%struct.TYPE_38__* %83, %struct.TYPE_37__* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %148

88:                                               ; preds = %76
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %90 = call i32 @av_packet_unref(%struct.TYPE_37__* %89)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @FFERROR_REDO, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %18

95:                                               ; preds = %88
  %96 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %97 = icmp ne %struct.TYPE_36__* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @EAGAIN, align 4
  %101 = call i32 @AVERROR(i32 %100)
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %344

105:                                              ; preds = %98
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %144, %105
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %147

112:                                              ; preds = %106
  %113 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %115, i64 %117
  %119 = load %struct.TYPE_35__*, %struct.TYPE_35__** %118, align 8
  store %struct.TYPE_35__* %119, %struct.TYPE_35__** %9, align 8
  %120 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %112
  %125 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124, %112
  %130 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %131 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %132 = call i32 @probe_codec(%struct.TYPE_38__* %130, %struct.TYPE_35__* %131, %struct.TYPE_37__* null)
  store i32 %132, i32* %8, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %344

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %124
  %138 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sle i64 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @av_assert0(i32 %142)
  br label %144

144:                                              ; preds = %137
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %106

147:                                              ; preds = %106
  br label %18

148:                                              ; preds = %76
  %149 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %150 = call i32 @av_packet_make_refcounted(%struct.TYPE_37__* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %155 = call i32 @av_packet_unref(%struct.TYPE_37__* %154)
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %3, align 4
  br label %344

157:                                              ; preds = %148
  %158 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @AVFMT_FLAG_DISCARD_CORRUPT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %180

164:                                              ; preds = %157
  %165 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @AV_PKT_FLAG_CORRUPT, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %164
  %172 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %173 = load i32, i32* @AV_LOG_WARNING, align 4
  %174 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @av_log(%struct.TYPE_38__* %172, i32 %173, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %176)
  %178 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %179 = call i32 @av_packet_unref(%struct.TYPE_37__* %178)
  br label %18

180:                                              ; preds = %164, %157
  %181 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ult i32 %183, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188, %180
  %190 = phi i1 [ false, %180 ], [ true, %188 ]
  %191 = zext i1 %190 to i32
  %192 = call i32 @av_assert0(i32 %191)
  %193 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %194, align 8
  %196 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %195, i64 %199
  %201 = load %struct.TYPE_35__*, %struct.TYPE_35__** %200, align 8
  store %struct.TYPE_35__* %201, %struct.TYPE_35__** %9, align 8
  %202 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %203 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = zext i32 %206 to i64
  %208 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %209 = call i64 @update_wrap_reference(%struct.TYPE_38__* %202, %struct.TYPE_35__* %203, i64 %207, %struct.TYPE_37__* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %260

211:                                              ; preds = %189
  %212 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @AV_PTS_WRAP_SUB_OFFSET, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %260

217:                                              ; preds = %211
  %218 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %218, i32 0, i32 5
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @is_relative(i8* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %217
  %224 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %225 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %225, i32 0, i32 5
  %227 = load i8*, i8** %226, align 8
  %228 = call i8* @wrap_timestamp(%struct.TYPE_35__* %224, i8* %227)
  %229 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %229, i32 0, i32 5
  store i8* %228, i8** %230, align 8
  br label %231

231:                                              ; preds = %223, %217
  %232 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %232, i32 0, i32 4
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @is_relative(i8* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %245, label %237

237:                                              ; preds = %231
  %238 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %239 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %239, i32 0, i32 4
  %241 = load i8*, i8** %240, align 8
  %242 = call i8* @wrap_timestamp(%struct.TYPE_35__* %238, i8* %241)
  %243 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %243, i32 0, i32 4
  store i8* %242, i8** %244, align 8
  br label %245

245:                                              ; preds = %237, %231
  %246 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %246, i32 0, i32 3
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @is_relative(i8* %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %259, label %251

251:                                              ; preds = %245
  %252 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %253 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %253, i32 0, i32 3
  %255 = load i8*, i8** %254, align 8
  %256 = call i8* @wrap_timestamp(%struct.TYPE_35__* %252, i8* %255)
  %257 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %257, i32 0, i32 3
  store i8* %256, i8** %258, align 8
  br label %259

259:                                              ; preds = %251, %245
  br label %260

260:                                              ; preds = %259, %211, %189
  %261 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %262 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %262, i32 0, i32 4
  %264 = load i8*, i8** %263, align 8
  %265 = call i8* @wrap_timestamp(%struct.TYPE_35__* %261, i8* %264)
  %266 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %266, i32 0, i32 4
  store i8* %265, i8** %267, align 8
  %268 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %269 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %269, i32 0, i32 3
  %271 = load i8*, i8** %270, align 8
  %272 = call i8* @wrap_timestamp(%struct.TYPE_35__* %268, i8* %271)
  %273 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %273, i32 0, i32 3
  store i8* %272, i8** %274, align 8
  %275 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %276 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %277 = call i32 @force_codec_ids(%struct.TYPE_38__* %275, %struct.TYPE_35__* %276)
  %278 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %293

282:                                              ; preds = %260
  %283 = call i32 (...) @av_gettime()
  %284 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %285 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = call i8* @av_rescale_q(i32 %283, i32 %284, i32 %287)
  %289 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %289, i32 0, i32 3
  store i8* %288, i8** %290, align 8
  %291 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %291, i32 0, i32 4
  store i8* %288, i8** %292, align 8
  br label %293

293:                                              ; preds = %282, %260
  %294 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %295 = icmp ne %struct.TYPE_36__* %294, null
  br i1 %295, label %303, label %296

296:                                              ; preds = %293
  %297 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp sle i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %296
  %302 = load i32, i32* %6, align 4
  store i32 %302, i32* %3, align 4
  br label %344

303:                                              ; preds = %296, %293
  %304 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_34__*, %struct.TYPE_34__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %306, i32 0, i32 2
  %308 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %308, i32 0, i32 2
  %310 = load %struct.TYPE_34__*, %struct.TYPE_34__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %313 = call i32 @ff_packet_list_put(%struct.TYPE_36__** %307, %struct.TYPE_32__** %311, %struct.TYPE_37__* %312, i32 0)
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* %8, align 4
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %303
  %317 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %318 = call i32 @av_packet_unref(%struct.TYPE_37__* %317)
  %319 = load i32, i32* %8, align 4
  store i32 %319, i32* %3, align 4
  br label %344

320:                                              ; preds = %303
  %321 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_34__*, %struct.TYPE_34__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_32__*, %struct.TYPE_32__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %325, i32 0, i32 0
  store %struct.TYPE_37__* %326, %struct.TYPE_37__** %11, align 8
  %327 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %328 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %330, i32 0, i32 2
  %332 = load %struct.TYPE_34__*, %struct.TYPE_34__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = sub nsw i64 %334, %329
  store i64 %335, i64* %333, align 8
  %336 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %337 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %338 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %339 = call i32 @probe_codec(%struct.TYPE_38__* %336, %struct.TYPE_35__* %337, %struct.TYPE_37__* %338)
  store i32 %339, i32* %8, align 4
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %320
  %342 = load i32, i32* %8, align 4
  store i32 %342, i32* %3, align 4
  br label %344

343:                                              ; preds = %320
  br label %18

344:                                              ; preds = %341, %316, %301, %153, %134, %103, %55, %47
  %345 = load i32, i32* %3, align 4
  ret i32 %345
}

declare dso_local i32 @av_init_packet(%struct.TYPE_37__*) #1

declare dso_local i32 @probe_codec(%struct.TYPE_38__*, %struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i32 @ff_packet_list_get(%struct.TYPE_36__**, %struct.TYPE_32__**, %struct.TYPE_37__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_37__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_packet_make_refcounted(%struct.TYPE_37__*) #1

declare dso_local i32 @av_log(%struct.TYPE_38__*, i32, i8*, i32) #1

declare dso_local i64 @update_wrap_reference(%struct.TYPE_38__*, %struct.TYPE_35__*, i64, %struct.TYPE_37__*) #1

declare dso_local i32 @is_relative(i8*) #1

declare dso_local i8* @wrap_timestamp(%struct.TYPE_35__*, i8*) #1

declare dso_local i32 @force_codec_ids(%struct.TYPE_38__*, %struct.TYPE_35__*) #1

declare dso_local i8* @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @av_gettime(...) #1

declare dso_local i32 @ff_packet_list_put(%struct.TYPE_36__**, %struct.TYPE_32__**, %struct.TYPE_37__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
