; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_process_input.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_process_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_data = type { i32, i64, i64, i32 }

@bail_on_error = common dso_local global i32 0, align 4
@stdin_is_interactive = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@seenInterrupt = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Error: out of memory\0A\00", align 1
@BEGIN_TIMER = common dso_local global i32 0, align 4
@shell_callback = common dso_local global i32 0, align 4
@END_TIMER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Error: near line %d:\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Error: incomplete SQL: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.callback_data*, i32*)* @process_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_input(%struct.callback_data* %0, i32* %1) #0 {
  %3 = alloca %struct.callback_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [100 x i8], align 16
  store %struct.callback_data* %0, %struct.callback_data** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %293, %109, %74, %2
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @bail_on_error, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* @stdin_is_interactive, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br label %31

31:                                               ; preds = %29, %20, %17
  %32 = phi i1 [ true, %20 ], [ true, %17 ], [ %30, %29 ]
  br i1 %32, label %33, label %294

33:                                               ; preds = %31
  %34 = load %struct.callback_data*, %struct.callback_data** %3, align 8
  %35 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @fflush(i32 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i8*, i8** %6, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @one_input_line(i8* %40, i32* %41)
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = load i64, i64* @stdin_is_interactive, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  br label %294

51:                                               ; preds = %33
  %52 = load i64, i64* @seenInterrupt, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32*, i32** %4, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %294

58:                                               ; preds = %54
  store i64 0, i64* @seenInterrupt, align 8
  br label %59

59:                                               ; preds = %58, %51
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64, %59
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @_all_whitespace(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %17

75:                                               ; preds = %70, %64
  %76 = load i8*, i8** %5, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %110

78:                                               ; preds = %75
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 46
  br i1 %83, label %84, label %110

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %84
  %88 = load %struct.callback_data*, %struct.callback_data** %3, align 8
  %89 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %92, %87
  %96 = load i8*, i8** %5, align 8
  %97 = load %struct.callback_data*, %struct.callback_data** %3, align 8
  %98 = call i32 @do_meta_command(i8* %96, %struct.callback_data* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %294

102:                                              ; preds = %95
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %105, %102
  br label %109

109:                                              ; preds = %108
  br label %17

110:                                              ; preds = %84, %78, %75
  %111 = load i8*, i8** %5, align 8
  %112 = call i64 @_is_command_terminator(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i64 @_is_complete(i8* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i8*, i8** %5, align 8
  %121 = call i32 @memcpy(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 2)
  br label %122

122:                                              ; preds = %119, %114, %110
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %8, align 4
  %124 = load i8*, i8** %6, align 8
  %125 = icmp eq i8* %124, null
  br i1 %125, label %126, label %177

126:                                              ; preds = %122
  store i32 0, i32* %14, align 4
  br label %127

127:                                              ; preds = %146, %126
  %128 = load i8*, i8** %5, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load i8*, i8** %5, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = call i64 @IsSpace(i8 signext %140)
  %142 = icmp ne i64 %141, 0
  br label %143

143:                                              ; preds = %135, %127
  %144 = phi i1 [ false, %127 ], [ %142, %135 ]
  br i1 %144, label %145, label %149

145:                                              ; preds = %143
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %127

149:                                              ; preds = %143
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %149
  %158 = load i8*, i8** %5, align 8
  %159 = call i32 @strlen30(i8* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 3
  %162 = call i8* @malloc(i32 %161)
  store i8* %162, i8** %6, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %157
  %166 = load i32, i32* @stderr, align 4
  %167 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %168 = call i32 @exit(i32 1) #3
  unreachable

169:                                              ; preds = %157
  %170 = load i8*, i8** %6, align 8
  %171 = load i8*, i8** %5, align 8
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  %174 = call i32 @memcpy(i8* %170, i8* %171, i32 %173)
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %169, %149
  br label %209

177:                                              ; preds = %122
  %178 = load i8*, i8** %5, align 8
  %179 = call i32 @strlen30(i8* %178)
  store i32 %179, i32* %15, align 4
  %180 = load i8*, i8** %6, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %181, %182
  %184 = add nsw i32 %183, 4
  %185 = call i8* @realloc(i8* %180, i32 %184)
  store i8* %185, i8** %6, align 8
  %186 = load i8*, i8** %6, align 8
  %187 = icmp eq i8* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %177
  %189 = load i32, i32* @stderr, align 4
  %190 = call i32 (i32, i8*, ...) @fprintf(i32 %189, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %191 = call i32 @exit(i32 1) #3
  unreachable

192:                                              ; preds = %177
  %193 = load i8*, i8** %6, align 8
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %7, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  store i8 10, i8* %197, align 1
  %198 = load i8*, i8** %6, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = load i8*, i8** %5, align 8
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %203, 1
  %205 = call i32 @memcpy(i8* %201, i8* %202, i32 %204)
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %7, align 4
  br label %209

209:                                              ; preds = %192, %176
  %210 = load i8*, i8** %6, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %282

212:                                              ; preds = %209
  %213 = load i8*, i8** %6, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* %8, align 4
  %219 = sub nsw i32 %217, %218
  %220 = call i64 @_contains_semicolon(i8* %216, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %282

222:                                              ; preds = %212
  %223 = load i8*, i8** %6, align 8
  %224 = call i64 @sqlite3_complete(i8* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %282

226:                                              ; preds = %222
  %227 = load %struct.callback_data*, %struct.callback_data** %3, align 8
  %228 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %227, i32 0, i32 1
  store i64 0, i64* %228, align 8
  %229 = load %struct.callback_data*, %struct.callback_data** %3, align 8
  %230 = call i32 @open_db(%struct.callback_data* %229)
  %231 = load i32, i32* @BEGIN_TIMER, align 4
  %232 = load %struct.callback_data*, %struct.callback_data** %3, align 8
  %233 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i8*, i8** %6, align 8
  %236 = load i32, i32* @shell_callback, align 4
  %237 = load %struct.callback_data*, %struct.callback_data** %3, align 8
  %238 = call i32 @shell_exec(i32 %234, i8* %235, i32 %236, %struct.callback_data* %237, i8** %9)
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* @END_TIMER, align 4
  %240 = load i32, i32* %10, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %226
  %243 = load i8*, i8** %9, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %279

245:                                              ; preds = %242, %226
  %246 = load i32*, i32** %4, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %245
  %249 = load i64, i64* @stdin_is_interactive, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %248, %245
  %252 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %253 = load i32, i32* %13, align 4
  %254 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 100, i8* %252, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %253)
  br label %258

255:                                              ; preds = %248
  %256 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %257 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 100, i8* %256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %258

258:                                              ; preds = %255, %251
  %259 = load i8*, i8** %9, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %268

261:                                              ; preds = %258
  %262 = load i32, i32* @stderr, align 4
  %263 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %264 = load i8*, i8** %9, align 8
  %265 = call i32 (i32, i8*, ...) @fprintf(i32 %262, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %263, i8* %264)
  %266 = load i8*, i8** %9, align 8
  %267 = call i32 @sqlite3_free(i8* %266)
  store i8* null, i8** %9, align 8
  br label %276

268:                                              ; preds = %258
  %269 = load i32, i32* @stderr, align 4
  %270 = getelementptr inbounds [100 x i8], [100 x i8]* %16, i64 0, i64 0
  %271 = load %struct.callback_data*, %struct.callback_data** %3, align 8
  %272 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i8* @sqlite3_errmsg(i32 %273)
  %275 = call i32 (i32, i8*, ...) @fprintf(i32 %269, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %270, i8* %274)
  br label %276

276:                                              ; preds = %268, %261
  %277 = load i32, i32* %11, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %11, align 4
  br label %279

279:                                              ; preds = %276, %242
  %280 = load i8*, i8** %6, align 8
  %281 = call i32 @free(i8* %280)
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %293

282:                                              ; preds = %222, %212, %209
  %283 = load i8*, i8** %6, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %285, label %292

285:                                              ; preds = %282
  %286 = load i8*, i8** %6, align 8
  %287 = call i64 @_all_whitespace(i8* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %285
  %290 = load i8*, i8** %6, align 8
  %291 = call i32 @free(i8* %290)
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %292

292:                                              ; preds = %289, %285, %282
  br label %293

293:                                              ; preds = %292, %279
  br label %17

294:                                              ; preds = %101, %57, %50, %31
  %295 = load i8*, i8** %6, align 8
  %296 = icmp ne i8* %295, null
  br i1 %296, label %297, label %308

297:                                              ; preds = %294
  %298 = load i8*, i8** %6, align 8
  %299 = call i64 @_all_whitespace(i8* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %305, label %301

301:                                              ; preds = %297
  %302 = load i32, i32* @stderr, align 4
  %303 = load i8*, i8** %6, align 8
  %304 = call i32 (i32, i8*, ...) @fprintf(i32 %302, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %303)
  br label %305

305:                                              ; preds = %301, %297
  %306 = load i8*, i8** %6, align 8
  %307 = call i32 @free(i8* %306)
  br label %308

308:                                              ; preds = %305, %294
  %309 = load i8*, i8** %5, align 8
  %310 = call i32 @free(i8* %309)
  %311 = load i32, i32* %11, align 4
  %312 = icmp sgt i32 %311, 0
  %313 = zext i1 %312 to i32
  ret i32 %313
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @one_input_line(i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @_all_whitespace(i8*) #1

declare dso_local i32 @do_meta_command(i8*, %struct.callback_data*) #1

declare dso_local i64 @_is_command_terminator(i8*) #1

declare dso_local i64 @_is_complete(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @IsSpace(i8 signext) #1

declare dso_local i32 @strlen30(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i64 @_contains_semicolon(i8*, i32) #1

declare dso_local i64 @sqlite3_complete(i8*) #1

declare dso_local i32 @open_db(%struct.callback_data*) #1

declare dso_local i32 @shell_exec(i32, i8*, i32, %struct.callback_data*, i8**) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_errmsg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
