; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_dash_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_dash_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__**, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.representation**, %struct.representation**, %struct.representation**, i8*, i8*, i32, i64, i32, i32* }
%struct.representation = type { i32, i64, i8*, %struct.TYPE_10__* }

@AV_TIME_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"seekable\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"variant_bitrate\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @dash_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dash_read_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.representation*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 11
  store i32* %14, i32** %16, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = call i32 @save_avio_options(%struct.TYPE_12__* %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %439

21:                                               ; preds = %1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @parse_manifest(%struct.TYPE_12__* %22, i32 %25, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %439

32:                                               ; preds = %21
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @AV_TIME_BASE, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %50

46:                                               ; preds = %32
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 8
  %49 = call i32 @av_dict_set(i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %50

50:                                               ; preds = %46, %37
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 5
  %58 = load %struct.representation**, %struct.representation*** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @is_common_init_section_exist(%struct.representation** %58, i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 7
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %55, %50
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %112, %65
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %115

72:                                               ; preds = %66
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 5
  %75 = load %struct.representation**, %struct.representation*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.representation*, %struct.representation** %75, i64 %77
  %79 = load %struct.representation*, %struct.representation** %78, align 8
  store %struct.representation* %79, %struct.representation** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %72
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 7
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load %struct.representation*, %struct.representation** %5, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 5
  %91 = load %struct.representation**, %struct.representation*** %90, align 8
  %92 = getelementptr inbounds %struct.representation*, %struct.representation** %91, i64 0
  %93 = load %struct.representation*, %struct.representation** %92, align 8
  %94 = call i32 @copy_init_section(%struct.representation* %88, %struct.representation* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %439

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %82, %72
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = load %struct.representation*, %struct.representation** %5, align 8
  %102 = call i32 @open_demux_for_component(%struct.TYPE_12__* %100, %struct.representation* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %439

106:                                              ; preds = %99
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.representation*, %struct.representation** %5, align 8
  %109 = getelementptr inbounds %struct.representation, %struct.representation* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %66

115:                                              ; preds = %66
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 4
  %123 = load %struct.representation**, %struct.representation*** %122, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @is_common_init_section_exist(%struct.representation** %123, i32 %126)
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 6
  store i8* %127, i8** %129, align 8
  br label %130

130:                                              ; preds = %120, %115
  store i32 0, i32* %8, align 4
  br label %131

131:                                              ; preds = %177, %130
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %180

137:                                              ; preds = %131
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 4
  %140 = load %struct.representation**, %struct.representation*** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.representation*, %struct.representation** %140, i64 %142
  %144 = load %struct.representation*, %struct.representation** %143, align 8
  store %struct.representation* %144, %struct.representation** %5, align 8
  %145 = load i32, i32* %8, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %137
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 6
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %164

152:                                              ; preds = %147
  %153 = load %struct.representation*, %struct.representation** %5, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 4
  %156 = load %struct.representation**, %struct.representation*** %155, align 8
  %157 = getelementptr inbounds %struct.representation*, %struct.representation** %156, i64 0
  %158 = load %struct.representation*, %struct.representation** %157, align 8
  %159 = call i32 @copy_init_section(%struct.representation* %153, %struct.representation* %158)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %439

163:                                              ; preds = %152
  br label %164

164:                                              ; preds = %163, %147, %137
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %166 = load %struct.representation*, %struct.representation** %5, align 8
  %167 = call i32 @open_demux_for_component(%struct.TYPE_12__* %165, %struct.representation* %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %439

171:                                              ; preds = %164
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.representation*, %struct.representation** %5, align 8
  %174 = getelementptr inbounds %struct.representation, %struct.representation* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %131

180:                                              ; preds = %131
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %180
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 3
  %188 = load %struct.representation**, %struct.representation*** %187, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i8* @is_common_init_section_exist(%struct.representation** %188, i32 %191)
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 6
  store i8* %192, i8** %194, align 8
  br label %195

195:                                              ; preds = %185, %180
  store i32 0, i32* %8, align 4
  br label %196

196:                                              ; preds = %242, %195
  %197 = load i32, i32* %8, align 4
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %245

202:                                              ; preds = %196
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 3
  %205 = load %struct.representation**, %struct.representation*** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.representation*, %struct.representation** %205, i64 %207
  %209 = load %struct.representation*, %struct.representation** %208, align 8
  store %struct.representation* %209, %struct.representation** %5, align 8
  %210 = load i32, i32* %8, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %229

212:                                              ; preds = %202
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 6
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %229

217:                                              ; preds = %212
  %218 = load %struct.representation*, %struct.representation** %5, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 3
  %221 = load %struct.representation**, %struct.representation*** %220, align 8
  %222 = getelementptr inbounds %struct.representation*, %struct.representation** %221, i64 0
  %223 = load %struct.representation*, %struct.representation** %222, align 8
  %224 = call i32 @copy_init_section(%struct.representation* %218, %struct.representation* %223)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %217
  br label %439

228:                                              ; preds = %217
  br label %229

229:                                              ; preds = %228, %212, %202
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %231 = load %struct.representation*, %struct.representation** %5, align 8
  %232 = call i32 @open_demux_for_component(%struct.TYPE_12__* %230, %struct.representation* %231)
  store i32 %232, i32* %6, align 4
  %233 = load i32, i32* %6, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %229
  br label %439

236:                                              ; preds = %229
  %237 = load i32, i32* %7, align 4
  %238 = load %struct.representation*, %struct.representation** %5, align 8
  %239 = getelementptr inbounds %struct.representation, %struct.representation* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %7, align 4
  br label %242

242:                                              ; preds = %236
  %243 = load i32, i32* %8, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %8, align 4
  br label %196

245:                                              ; preds = %196
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %245
  %249 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %249, i32* %6, align 4
  br label %439

250:                                              ; preds = %245
  %251 = load i32, i32* %6, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %438, label %253

253:                                              ; preds = %250
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %255 = call i32* @av_new_program(%struct.TYPE_12__* %254, i32 0)
  store i32* %255, i32** %9, align 8
  %256 = load i32*, i32** %9, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %259, label %258

258:                                              ; preds = %253
  br label %439

259:                                              ; preds = %253
  store i32 0, i32* %8, align 4
  br label %260

260:                                              ; preds = %320, %259
  %261 = load i32, i32* %8, align 4
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = icmp slt i32 %261, %264
  br i1 %265, label %266, label %323

266:                                              ; preds = %260
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 5
  %269 = load %struct.representation**, %struct.representation*** %268, align 8
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.representation*, %struct.representation** %269, i64 %271
  %273 = load %struct.representation*, %struct.representation** %272, align 8
  store %struct.representation* %273, %struct.representation** %5, align 8
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %275 = load %struct.representation*, %struct.representation** %5, align 8
  %276 = getelementptr inbounds %struct.representation, %struct.representation* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @av_program_add_stream_index(%struct.TYPE_12__* %274, i32 0, i32 %277)
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %280, align 8
  %282 = load %struct.representation*, %struct.representation** %5, align 8
  %283 = getelementptr inbounds %struct.representation, %struct.representation* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %281, i64 %285
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %286, align 8
  %288 = load %struct.representation*, %struct.representation** %5, align 8
  %289 = getelementptr inbounds %struct.representation, %struct.representation* %288, i32 0, i32 3
  store %struct.TYPE_10__* %287, %struct.TYPE_10__** %289, align 8
  %290 = load %struct.representation*, %struct.representation** %5, align 8
  %291 = getelementptr inbounds %struct.representation, %struct.representation* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = icmp sgt i64 %292, 0
  br i1 %293, label %294, label %303

294:                                              ; preds = %266
  %295 = load %struct.representation*, %struct.representation** %5, align 8
  %296 = getelementptr inbounds %struct.representation, %struct.representation* %295, i32 0, i32 3
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  %299 = load %struct.representation*, %struct.representation** %5, align 8
  %300 = getelementptr inbounds %struct.representation, %struct.representation* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = call i32 @av_dict_set_int(i32* %298, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %301, i32 0)
  br label %303

303:                                              ; preds = %294, %266
  %304 = load %struct.representation*, %struct.representation** %5, align 8
  %305 = getelementptr inbounds %struct.representation, %struct.representation* %304, i32 0, i32 2
  %306 = load i8*, i8** %305, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 0
  %308 = load i8, i8* %307, align 1
  %309 = icmp ne i8 %308, 0
  br i1 %309, label %310, label %319

310:                                              ; preds = %303
  %311 = load %struct.representation*, %struct.representation** %5, align 8
  %312 = getelementptr inbounds %struct.representation, %struct.representation* %311, i32 0, i32 3
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 0
  %315 = load %struct.representation*, %struct.representation** %5, align 8
  %316 = getelementptr inbounds %struct.representation, %struct.representation* %315, i32 0, i32 2
  %317 = load i8*, i8** %316, align 8
  %318 = call i32 @av_dict_set(i32* %314, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %317, i32 0)
  br label %319

319:                                              ; preds = %310, %303
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %8, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %8, align 4
  br label %260

323:                                              ; preds = %260
  store i32 0, i32* %8, align 4
  br label %324

324:                                              ; preds = %384, %323
  %325 = load i32, i32* %8, align 4
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = icmp slt i32 %325, %328
  br i1 %329, label %330, label %387

330:                                              ; preds = %324
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 4
  %333 = load %struct.representation**, %struct.representation*** %332, align 8
  %334 = load i32, i32* %8, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.representation*, %struct.representation** %333, i64 %335
  %337 = load %struct.representation*, %struct.representation** %336, align 8
  store %struct.representation* %337, %struct.representation** %5, align 8
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %339 = load %struct.representation*, %struct.representation** %5, align 8
  %340 = getelementptr inbounds %struct.representation, %struct.representation* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @av_program_add_stream_index(%struct.TYPE_12__* %338, i32 0, i32 %341)
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %344, align 8
  %346 = load %struct.representation*, %struct.representation** %5, align 8
  %347 = getelementptr inbounds %struct.representation, %struct.representation* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %345, i64 %349
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %350, align 8
  %352 = load %struct.representation*, %struct.representation** %5, align 8
  %353 = getelementptr inbounds %struct.representation, %struct.representation* %352, i32 0, i32 3
  store %struct.TYPE_10__* %351, %struct.TYPE_10__** %353, align 8
  %354 = load %struct.representation*, %struct.representation** %5, align 8
  %355 = getelementptr inbounds %struct.representation, %struct.representation* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = icmp sgt i64 %356, 0
  br i1 %357, label %358, label %367

358:                                              ; preds = %330
  %359 = load %struct.representation*, %struct.representation** %5, align 8
  %360 = getelementptr inbounds %struct.representation, %struct.representation* %359, i32 0, i32 3
  %361 = load %struct.TYPE_10__*, %struct.TYPE_10__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 0
  %363 = load %struct.representation*, %struct.representation** %5, align 8
  %364 = getelementptr inbounds %struct.representation, %struct.representation* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = call i32 @av_dict_set_int(i32* %362, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %365, i32 0)
  br label %367

367:                                              ; preds = %358, %330
  %368 = load %struct.representation*, %struct.representation** %5, align 8
  %369 = getelementptr inbounds %struct.representation, %struct.representation* %368, i32 0, i32 2
  %370 = load i8*, i8** %369, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 0
  %372 = load i8, i8* %371, align 1
  %373 = icmp ne i8 %372, 0
  br i1 %373, label %374, label %383

374:                                              ; preds = %367
  %375 = load %struct.representation*, %struct.representation** %5, align 8
  %376 = getelementptr inbounds %struct.representation, %struct.representation* %375, i32 0, i32 3
  %377 = load %struct.TYPE_10__*, %struct.TYPE_10__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 0
  %379 = load %struct.representation*, %struct.representation** %5, align 8
  %380 = getelementptr inbounds %struct.representation, %struct.representation* %379, i32 0, i32 2
  %381 = load i8*, i8** %380, align 8
  %382 = call i32 @av_dict_set(i32* %378, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %381, i32 0)
  br label %383

383:                                              ; preds = %374, %367
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %8, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %8, align 4
  br label %324

387:                                              ; preds = %324
  store i32 0, i32* %8, align 4
  br label %388

388:                                              ; preds = %434, %387
  %389 = load i32, i32* %8, align 4
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = icmp slt i32 %389, %392
  br i1 %393, label %394, label %437

394:                                              ; preds = %388
  %395 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %396 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %395, i32 0, i32 3
  %397 = load %struct.representation**, %struct.representation*** %396, align 8
  %398 = load i32, i32* %8, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.representation*, %struct.representation** %397, i64 %399
  %401 = load %struct.representation*, %struct.representation** %400, align 8
  store %struct.representation* %401, %struct.representation** %5, align 8
  %402 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %403 = load %struct.representation*, %struct.representation** %5, align 8
  %404 = getelementptr inbounds %struct.representation, %struct.representation* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = call i32 @av_program_add_stream_index(%struct.TYPE_12__* %402, i32 0, i32 %405)
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 1
  %409 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %408, align 8
  %410 = load %struct.representation*, %struct.representation** %5, align 8
  %411 = getelementptr inbounds %struct.representation, %struct.representation* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %409, i64 %413
  %415 = load %struct.TYPE_10__*, %struct.TYPE_10__** %414, align 8
  %416 = load %struct.representation*, %struct.representation** %5, align 8
  %417 = getelementptr inbounds %struct.representation, %struct.representation* %416, i32 0, i32 3
  store %struct.TYPE_10__* %415, %struct.TYPE_10__** %417, align 8
  %418 = load %struct.representation*, %struct.representation** %5, align 8
  %419 = getelementptr inbounds %struct.representation, %struct.representation* %418, i32 0, i32 2
  %420 = load i8*, i8** %419, align 8
  %421 = getelementptr inbounds i8, i8* %420, i64 0
  %422 = load i8, i8* %421, align 1
  %423 = icmp ne i8 %422, 0
  br i1 %423, label %424, label %433

424:                                              ; preds = %394
  %425 = load %struct.representation*, %struct.representation** %5, align 8
  %426 = getelementptr inbounds %struct.representation, %struct.representation* %425, i32 0, i32 3
  %427 = load %struct.TYPE_10__*, %struct.TYPE_10__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %427, i32 0, i32 0
  %429 = load %struct.representation*, %struct.representation** %5, align 8
  %430 = getelementptr inbounds %struct.representation, %struct.representation* %429, i32 0, i32 2
  %431 = load i8*, i8** %430, align 8
  %432 = call i32 @av_dict_set(i32* %428, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %431, i32 0)
  br label %433

433:                                              ; preds = %424, %394
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %8, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %8, align 4
  br label %388

437:                                              ; preds = %388
  br label %438

438:                                              ; preds = %437, %250
  store i32 0, i32* %2, align 4
  br label %441

439:                                              ; preds = %258, %248, %235, %227, %170, %162, %105, %97, %31, %20
  %440 = load i32, i32* %6, align 4
  store i32 %440, i32* %2, align 4
  br label %441

441:                                              ; preds = %439, %438
  %442 = load i32, i32* %2, align 4
  ret i32 %442
}

declare dso_local i32 @save_avio_options(%struct.TYPE_12__*) #1

declare dso_local i32 @parse_manifest(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

declare dso_local i8* @is_common_init_section_exist(%struct.representation**, i32) #1

declare dso_local i32 @copy_init_section(%struct.representation*, %struct.representation*) #1

declare dso_local i32 @open_demux_for_component(%struct.TYPE_12__*, %struct.representation*) #1

declare dso_local i32* @av_new_program(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_program_add_stream_index(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @av_dict_set_int(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
