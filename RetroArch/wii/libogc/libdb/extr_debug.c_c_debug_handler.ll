; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug.c_c_debug_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug.c_c_debug_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)* }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, i32, i32, i64, i64 }

@current_device = common dso_local global %struct.TYPE_13__* null, align 8
@dbg_active = common dso_local global i32 0, align 4
@remcomOutBuffer = common dso_local global i8* null, align 8
@__breakinst = common dso_local global i64 0, align 8
@remcomInBuffer = common dso_local global i32* null, align 8
@dbg_instep = common dso_local global i32 0, align 4
@MSR_SE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@current_thread_registers = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BUFMAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"E00\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"E01\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"E02\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"E03\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"E04\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_debug_handler(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %21 = call i32 (...) @gdbstub_getcurrentthread()
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current_device, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64 (%struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*)** %24, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current_device, align 8
  %27 = call i64 %25(%struct.TYPE_13__* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %347

30:                                               ; preds = %1
  %31 = load i32, i32* @dbg_active, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @gdbstub_report_exception(%struct.TYPE_12__* %34, i32 %35)
  %37 = load i8*, i8** @remcomOutBuffer, align 8
  %38 = call i32 @putpacket(i8* %37)
  br label %39

39:                                               ; preds = %33, %30
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @__breakinst, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 4
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %45, %39
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %337, %50
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %340

55:                                               ; preds = %51
  %56 = load i8*, i8** @remcomOutBuffer, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 0, i8* %57, align 1
  %58 = load i32*, i32** @remcomInBuffer, align 8
  %59 = call i32 @getpacket(i32* %58)
  %60 = load i32*, i32** @remcomInBuffer, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %337 [
    i32 63, label %63
    i32 68, label %67
    i32 107, label %76
    i32 103, label %85
    i32 109, label %140
    i32 113, label %180
    i32 99, label %185
    i32 115, label %197
    i32 122, label %208
    i32 72, label %237
    i32 84, label %287
    i32 90, label %306
  ]

63:                                               ; preds = %55
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @gdbstub_report_exception(%struct.TYPE_12__* %64, i32 %65)
  br label %337

67:                                               ; preds = %55
  store i32 0, i32* @dbg_instep, align 4
  store i32 0, i32* @dbg_active, align 4
  %68 = load i32, i32* @MSR_SE, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i8*, i8** @remcomOutBuffer, align 8
  %75 = call i32 @strcpy(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %337

76:                                               ; preds = %55
  store i32 0, i32* @dbg_instep, align 4
  store i32 0, i32* @dbg_active, align 4
  %77 = load i32, i32* @MSR_SE, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i64 2147489792, i64* %84, align 8
  store i32 1, i32* %8, align 4
  br label %346

85:                                               ; preds = %55
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %9, align 8
  %87 = load i8*, i8** @remcomOutBuffer, align 8
  store i8* %87, i8** %3, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store %struct.TYPE_12__* @current_thread_registers, %struct.TYPE_12__** %9, align 8
  br label %92

92:                                               ; preds = %91, %85
  %93 = load i8*, i8** %3, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = call i8* @mem2hstr(i8* %93, i8* %97, i32 128)
  store i8* %98, i8** %3, align 8
  %99 = load i8*, i8** %3, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = call i8* @mem2hstr(i8* %99, i8* %103, i32 256)
  store i8* %104, i8** %3, align 8
  %105 = load i8*, i8** %3, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = bitcast i64* %107 to i8*
  %109 = call i8* @mem2hstr(i8* %105, i8* %108, i32 4)
  store i8* %109, i8** %3, align 8
  %110 = load i8*, i8** %3, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = bitcast i32* %112 to i8*
  %114 = call i8* @mem2hstr(i8* %110, i8* %113, i32 4)
  store i8* %114, i8** %3, align 8
  %115 = load i8*, i8** %3, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 6
  %118 = bitcast i32* %117 to i8*
  %119 = call i8* @mem2hstr(i8* %115, i8* %118, i32 4)
  store i8* %119, i8** %3, align 8
  %120 = load i8*, i8** %3, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 5
  %123 = bitcast i32* %122 to i8*
  %124 = call i8* @mem2hstr(i8* %120, i8* %123, i32 4)
  store i8* %124, i8** %3, align 8
  %125 = load i8*, i8** %3, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 4
  %128 = bitcast i32* %127 to i8*
  %129 = call i8* @mem2hstr(i8* %125, i8* %128, i32 4)
  store i8* %129, i8** %3, align 8
  %130 = load i8*, i8** %3, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = bitcast i32* %132 to i8*
  %134 = call i8* @mem2hstr(i8* %130, i8* %133, i32 4)
  store i8* %134, i8** %3, align 8
  %135 = load i8*, i8** %3, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  %138 = bitcast i32* %137 to i8*
  %139 = call i8* @mem2hstr(i8* %135, i8* %138, i32 4)
  store i8* %139, i8** %3, align 8
  br label %337

140:                                              ; preds = %55
  %141 = load i32*, i32** @remcomInBuffer, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = bitcast i32* %142 to i8*
  store i8* %143, i8** %3, align 8
  %144 = call i32 @hexToInt(i8** %3, i32* %4)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %176

146:                                              ; preds = %140
  %147 = load i32, i32* %4, align 4
  %148 = and i32 %147, -1073741824
  %149 = icmp eq i32 %148, -1073741824
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %4, align 4
  %152 = and i32 %151, -1073741824
  %153 = icmp eq i32 %152, -2147483648
  br i1 %153, label %154, label %176

154:                                              ; preds = %150, %146
  %155 = load i8*, i8** %3, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %3, align 8
  %157 = load i8, i8* %155, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 44
  br i1 %159, label %160, label %176

160:                                              ; preds = %154
  %161 = call i32 @hexToInt(i8** %3, i32* %5)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %160
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @BUFMAX, align 4
  %166 = sub nsw i32 %165, 4
  %167 = sdiv i32 %166, 2
  %168 = icmp sle i32 %164, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load i8*, i8** @remcomOutBuffer, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  %174 = load i32, i32* %5, align 4
  %175 = call i8* @mem2hstr(i8* %170, i8* %173, i32 %174)
  br label %179

176:                                              ; preds = %163, %160, %154, %150, %140
  %177 = load i8*, i8** @remcomOutBuffer, align 8
  %178 = call i32 @strcpy(i8* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %169
  br label %337

180:                                              ; preds = %55
  %181 = load i32*, i32** @remcomInBuffer, align 8
  %182 = load i8*, i8** @remcomOutBuffer, align 8
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @process_query(i32* %181, i8* %182, i32 %183)
  br label %337

185:                                              ; preds = %55
  store i32 0, i32* @dbg_instep, align 4
  store i32 1, i32* @dbg_active, align 4
  %186 = load i32, i32* @MSR_SE, align 4
  %187 = xor i32 %186, -1
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current_device, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 2
  %194 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %193, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current_device, align 8
  %196 = call i32 %194(%struct.TYPE_13__* %195)
  br label %346

197:                                              ; preds = %55
  store i32 1, i32* @dbg_instep, align 4
  store i32 1, i32* @dbg_active, align 4
  %198 = load i32, i32* @MSR_SE, align 4
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current_device, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 2
  %205 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %204, align 8
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current_device, align 8
  %207 = call i32 %205(%struct.TYPE_13__* %206)
  br label %346

208:                                              ; preds = %55
  %209 = load i32*, i32** @remcomInBuffer, align 8
  %210 = call i32 @parsezbreak(i32* %209, i32* %11, i8** %13, i64* %12)
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %208
  %214 = load i8*, i8** @remcomOutBuffer, align 8
  %215 = call i32 @strcpy(i8* %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %337

216:                                              ; preds = %208
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  br label %337

220:                                              ; preds = %216
  %221 = load i64, i64* %12, align 8
  %222 = icmp slt i64 %221, 4
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i8*, i8** @remcomOutBuffer, align 8
  %225 = call i32 @strcpy(i8* %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %337

226:                                              ; preds = %220
  %227 = load i8*, i8** %13, align 8
  %228 = call i32 @remove_bp(i8* %227)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %226
  %232 = load i8*, i8** @remcomOutBuffer, align 8
  %233 = call i32 @strcpy(i8* %232, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %337

234:                                              ; preds = %226
  %235 = load i8*, i8** @remcomOutBuffer, align 8
  %236 = call i32 @strcpy(i8* %235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %337

237:                                              ; preds = %55
  %238 = load i32*, i32** @remcomInBuffer, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 103
  br i1 %241, label %242, label %284

242:                                              ; preds = %237
  %243 = load i32*, i32** @remcomInBuffer, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  %245 = call i32* @vhstr2thread(i32* %244, i32* %14)
  %246 = icmp eq i32* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %242
  %248 = load i8*, i8** @remcomOutBuffer, align 8
  %249 = call i32 @strcpy(i8* %248, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %337

250:                                              ; preds = %242
  %251 = load i32, i32* %14, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %250
  %254 = load i32, i32* %6, align 4
  store i32 %254, i32* %14, align 4
  br label %255

255:                                              ; preds = %253, %250
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %7, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = load i8*, i8** @remcomOutBuffer, align 8
  %261 = call i32 @strcpy(i8* %260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %337

262:                                              ; preds = %255
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* %6, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %262
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @gdbstub_setthreadregs(i32 %267, %struct.TYPE_12__* @current_thread_registers)
  store i32 %268, i32* %15, align 4
  br label %269

269:                                              ; preds = %266, %262
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* %6, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %269
  %274 = load i32, i32* %14, align 4
  %275 = call i32 @gdbstub_getthreadregs(i32 %274, %struct.TYPE_12__* @current_thread_registers)
  store i32 %275, i32* %15, align 4
  %276 = load i32, i32* %15, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %273
  %279 = load i8*, i8** @remcomOutBuffer, align 8
  %280 = call i32 @strcpy(i8* %279, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %337

281:                                              ; preds = %273
  br label %282

282:                                              ; preds = %281, %269
  %283 = load i32, i32* %14, align 4
  store i32 %283, i32* %7, align 4
  br label %284

284:                                              ; preds = %282, %237
  %285 = load i8*, i8** @remcomOutBuffer, align 8
  %286 = call i32 @strcpy(i8* %285, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %337

287:                                              ; preds = %55
  %288 = load i32*, i32** @remcomInBuffer, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = call i32* @vhstr2thread(i32* %289, i32* %16)
  %291 = icmp eq i32* %290, null
  br i1 %291, label %292, label %295

292:                                              ; preds = %287
  %293 = load i8*, i8** @remcomOutBuffer, align 8
  %294 = call i32 @strcpy(i8* %293, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %337

295:                                              ; preds = %287
  %296 = load i32, i32* %16, align 4
  %297 = call i32* @gdbstub_indextoid(i32 %296)
  %298 = icmp eq i32* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = load i8*, i8** @remcomOutBuffer, align 8
  %301 = call i32 @strcpy(i8* %300, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %305

302:                                              ; preds = %295
  %303 = load i8*, i8** @remcomOutBuffer, align 8
  %304 = call i32 @strcpy(i8* %303, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %305

305:                                              ; preds = %302, %299
  br label %337

306:                                              ; preds = %55
  %307 = load i32*, i32** @remcomInBuffer, align 8
  %308 = call i32 @parsezbreak(i32* %307, i32* %18, i8** %20, i64* %19)
  store i32 %308, i32* %17, align 4
  %309 = load i32, i32* %17, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %306
  %312 = load i8*, i8** @remcomOutBuffer, align 8
  %313 = call i32 @strcpy(i8* %312, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %337

314:                                              ; preds = %306
  %315 = load i32, i32* %18, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load i8*, i8** @remcomOutBuffer, align 8
  %319 = call i32 @strcpy(i8* %318, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %337

320:                                              ; preds = %314
  %321 = load i64, i64* %19, align 8
  %322 = icmp slt i64 %321, 4
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load i8*, i8** @remcomOutBuffer, align 8
  %325 = call i32 @strcpy(i8* %324, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %337

326:                                              ; preds = %320
  %327 = load i8*, i8** %20, align 8
  %328 = call i32 @insert_bp(i8* %327)
  store i32 %328, i32* %17, align 4
  %329 = load i32, i32* %17, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %334, label %331

331:                                              ; preds = %326
  %332 = load i8*, i8** @remcomOutBuffer, align 8
  %333 = call i32 @strcpy(i8* %332, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %337

334:                                              ; preds = %326
  %335 = load i8*, i8** @remcomOutBuffer, align 8
  %336 = call i32 @strcpy(i8* %335, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %337

337:                                              ; preds = %55, %334, %331, %323, %317, %311, %305, %292, %284, %278, %259, %247, %234, %231, %223, %219, %213, %180, %179, %92, %67, %63
  %338 = load i8*, i8** @remcomOutBuffer, align 8
  %339 = call i32 @putpacket(i8* %338)
  br label %51

340:                                              ; preds = %51
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current_device, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 1
  %343 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %342, align 8
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current_device, align 8
  %345 = call i32 %343(%struct.TYPE_13__* %344)
  br label %346

346:                                              ; preds = %340, %197, %185, %76
  br label %347

347:                                              ; preds = %346, %29
  ret void
}

declare dso_local i32 @gdbstub_getcurrentthread(...) #1

declare dso_local i32 @gdbstub_report_exception(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @putpacket(i8*) #1

declare dso_local i32 @getpacket(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @mem2hstr(i8*, i8*, i32) #1

declare dso_local i32 @hexToInt(i8**, i32*) #1

declare dso_local i32 @process_query(i32*, i8*, i32) #1

declare dso_local i32 @parsezbreak(i32*, i32*, i8**, i64*) #1

declare dso_local i32 @remove_bp(i8*) #1

declare dso_local i32* @vhstr2thread(i32*, i32*) #1

declare dso_local i32 @gdbstub_setthreadregs(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @gdbstub_getthreadregs(i32, %struct.TYPE_12__*) #1

declare dso_local i32* @gdbstub_indextoid(i32) #1

declare dso_local i32 @insert_bp(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
