; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_pat_cb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_pat_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_25__*, i32, %struct.TYPE_27__*, %struct.TYPE_31__**, i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_28__**, i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_29__ = type { i64, i32 }
%struct.TYPE_33__ = type { i32, i32 }

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"PAT:\0A\00", align 1
@PAT_TID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"sid=0x%x pid=0x%x\0A\00", align 1
@MPEGTS_SECTION = common dso_local global i64 0, align 8
@pmt_cb = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*, i32*, i32)* @pat_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pat_cb(%struct.TYPE_31__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_29__, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_33__*, align 8
  %16 = alloca %struct.TYPE_31__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  store %struct.TYPE_32__* %23, %struct.TYPE_32__** %7, align 8
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 0
  store %struct.TYPE_30__* %26, %struct.TYPE_30__** %8, align 8
  store %struct.TYPE_29__* %9, %struct.TYPE_29__** %10, align 8
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %30 = load i32, i32* @AV_LOG_TRACE, align 4
  %31 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %33, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @hex_dump_debug(%struct.TYPE_25__* %34, i32* %35, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = getelementptr inbounds i32, i32* %41, i64 -4
  store i32* %42, i32** %12, align 8
  %43 = load i32*, i32** %5, align 8
  store i32* %43, i32** %11, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i64 @parse_section_header(%struct.TYPE_29__* %44, i32** %11, i32* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  br label %268

49:                                               ; preds = %3
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PAT_TID, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %268

56:                                               ; preds = %49
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %268

62:                                               ; preds = %56
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %65 = call i64 @skip_identical(%struct.TYPE_29__* %63, %struct.TYPE_30__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %268

68:                                               ; preds = %62
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 2
  store i32 %71, i32* %75, align 8
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %77 = call i32 @clear_programs(%struct.TYPE_32__* %76)
  br label %78

78:                                               ; preds = %192, %68
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @get16(i32** %11, i32* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %193

84:                                               ; preds = %78
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @get16(i32** %11, i32* %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %193

90:                                               ; preds = %84
  %91 = load i32, i32* %14, align 4
  %92 = and i32 %91, 8191
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %193

99:                                               ; preds = %90
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %101, align 8
  %103 = load i32, i32* @AV_LOG_TRACE, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 (%struct.TYPE_25__*, i32, i8*, ...) @av_log(%struct.TYPE_25__* %102, i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i32, i32* %13, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %192

110:                                              ; preds = %99
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %113, i64 %115
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %116, align 8
  store %struct.TYPE_31__* %117, %struct.TYPE_31__** %16, align 8
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call %struct.TYPE_33__* @av_new_program(%struct.TYPE_25__* %120, i32 %121)
  store %struct.TYPE_33__* %122, %struct.TYPE_33__** %15, align 8
  %123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %124 = icmp ne %struct.TYPE_33__* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %110
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %125, %110
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %134 = icmp ne %struct.TYPE_31__* %133, null
  br i1 %134, label %135, label %166

135:                                              ; preds = %132
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @MPEGTS_SECTION, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %155, label %141

141:                                              ; preds = %135
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %155, label %147

147:                                              ; preds = %141
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @pmt_cb, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %147, %141, %135
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 5
  %159 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %159, i64 %161
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %162, align 8
  %164 = call i32 @mpegts_close_filter(%struct.TYPE_32__* %156, %struct.TYPE_31__* %163)
  br label %165

165:                                              ; preds = %155, %147
  br label %166

166:                                              ; preds = %165, %132
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 5
  %169 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %168, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %169, i64 %171
  %173 = load %struct.TYPE_31__*, %struct.TYPE_31__** %172, align 8
  %174 = icmp ne %struct.TYPE_31__* %173, null
  br i1 %174, label %181, label %175

175:                                              ; preds = %166
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %177 = load i32, i32* %14, align 4
  %178 = load i64, i64* @pmt_cb, align 8
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %180 = call i32 @mpegts_open_section_filter(%struct.TYPE_32__* %176, i32 %177, i64 %178, %struct.TYPE_32__* %179, i32 1)
  br label %181

181:                                              ; preds = %175, %166
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %183 = load i32, i32* %13, align 4
  %184 = call i32 @add_pat_entry(%struct.TYPE_32__* %182, i32 %183)
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @add_pid_to_pmt(%struct.TYPE_32__* %185, i32 %186, i32 0)
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @add_pid_to_pmt(%struct.TYPE_32__* %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %181, %109
  br label %78

193:                                              ; preds = %98, %89, %83
  %194 = load i32, i32* %13, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %268

196:                                              ; preds = %193
  store i32 0, i32* %18, align 4
  br label %197

197:                                              ; preds = %264, %196
  %198 = load i32, i32* %18, align 4
  %199 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %198, %203
  br i1 %204, label %205, label %267

205:                                              ; preds = %197
  store i32 0, i32* %17, align 4
  br label %206

206:                                              ; preds = %235, %205
  %207 = load i32, i32* %17, align 4
  %208 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %238

212:                                              ; preds = %206
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i32 0, i32 4
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %214, align 8
  %216 = load i32, i32* %17, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %224, align 8
  %226 = load i32, i32* %18, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %225, i64 %227
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp eq i64 %220, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %212
  br label %238

234:                                              ; preds = %212
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %17, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %17, align 4
  br label %206

238:                                              ; preds = %233, %206
  %239 = load i32, i32* %17, align 4
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %239, %242
  br i1 %243, label %244, label %263

244:                                              ; preds = %238
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %263, label %249

249:                                              ; preds = %244
  %250 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %254, align 8
  %256 = load i32, i32* %18, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %255, i64 %257
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @clear_avprogram(%struct.TYPE_32__* %250, i64 %261)
  br label %263

263:                                              ; preds = %249, %244, %238
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %18, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %18, align 4
  br label %197

267:                                              ; preds = %197
  br label %268

268:                                              ; preds = %48, %55, %61, %67, %267, %193
  ret void
}

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, ...) #1

declare dso_local i32 @hex_dump_debug(%struct.TYPE_25__*, i32*, i32) #1

declare dso_local i64 @parse_section_header(%struct.TYPE_29__*, i32**, i32*) #1

declare dso_local i64 @skip_identical(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @clear_programs(%struct.TYPE_32__*) #1

declare dso_local i32 @get16(i32**, i32*) #1

declare dso_local %struct.TYPE_33__* @av_new_program(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @mpegts_close_filter(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32 @mpegts_open_section_filter(%struct.TYPE_32__*, i32, i64, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @add_pat_entry(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @add_pid_to_pmt(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @clear_avprogram(%struct.TYPE_32__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
