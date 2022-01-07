; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_vchiq_test.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_vchiq_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@g_servname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@g_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@want_echo = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-M\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"not enough arguments (-r reserve delay)\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@func_data_test_start = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [3 x i8] c"-E\00", align 1
@func_data_test_end = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [23 x i8] c"* unknown option '%s'\0A\00", align 1
@VCOS_LOG_CATEGORY = common dso_local global i32 0, align 4
@VCOS_LOG_TRACE = common dso_local global i32 0, align 4
@VCOS_LOG_INFO = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [11 x i8] c"vchiq_test\00", align 1
@g_server_reply = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [15 x i8] c"g_server_reply\00", align 1
@g_shutdown = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"g_shutdown\00", align 1
@g_mutex = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [8 x i8] c"g_mutex\00", align 1
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@VCOS_AFFINITY_CPU1 = common dso_local global i32 0, align 4
@VCOS_START = common dso_local global i32 0, align 4
@g_timeout_ms = common dso_local global i8* null, align 8
@vchiq_test_server = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @vchiq_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vchiq_test(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %16

16:                                               ; preds = %250, %2
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br label %30

30:                                               ; preds = %20, %16
  %31 = phi i1 [ false, %16 ], [ %29, %20 ]
  br i1 %31, label %32, label %251

32:                                               ; preds = %30
  %33 = load i8**, i8*** %4, align 8
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %12, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %32
  %43 = load i8**, i8*** %4, align 8
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** @g_servname, align 8
  %49 = load i8*, i8** @g_servname, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i8*, i8** @g_servname, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = icmp ne i32 %53, 4
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %42
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %55, %51
  br label %250

58:                                               ; preds = %32
  %59 = load i8*, i8** %13, align 8
  %60 = call i64 @strcasecmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load i8*, i8** %13, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 4096, i32 32
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 0), align 8
  %68 = load i8**, i8*** %4, align 8
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i8* @atoi(i8* %73)
  store i8* %74, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 7), align 8
  %75 = load i8**, i8*** %4, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @atoi(i8* %80)
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 6), align 8
  br label %249

82:                                               ; preds = %58
  %83 = load i8*, i8** %13, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  store i32 1, i32* %6, align 4
  %87 = load i8**, i8*** %4, align 8
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @atoi(i8* %92)
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 5), align 8
  br label %248

94:                                               ; preds = %82
  %95 = load i8*, i8** %13, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  store i32 1, i32* %7, align 4
  %99 = load i8**, i8*** %4, align 8
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8*, i8** %99, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @atoi(i8* %104)
  store i8* %105, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 5), align 8
  br label %247

106:                                              ; preds = %94
  %107 = load i8*, i8** %13, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i64 0, i64* @want_echo, align 8
  br label %246

111:                                              ; preds = %106
  %112 = load i8*, i8** %13, align 8
  %113 = call i64 @strcmp(i8* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 1, i32* %8, align 4
  br label %245

116:                                              ; preds = %111
  %117 = load i8*, i8** %13, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = call i32 (...) @usage()
  br label %244

122:                                              ; preds = %116
  %123 = load i8*, i8** %13, align 8
  %124 = call i64 @strcmp(i8* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 1, i32* %10, align 4
  br label %243

127:                                              ; preds = %122
  %128 = load i8*, i8** %13, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load i8**, i8*** %4, align 8
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8*, i8** %132, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i8* @atoi(i8* %137)
  store i8* %138, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 4), align 8
  br label %242

139:                                              ; preds = %127
  %140 = load i8*, i8** %13, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load i8**, i8*** %4, align 8
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8*, i8** %144, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @atoi(i8* %149)
  store i8* %150, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 3), align 8
  br label %241

151:                                              ; preds = %139
  %152 = load i8*, i8** %13, align 8
  %153 = call i64 @strcmp(i8* %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  store i32 1, i32* %9, align 4
  store i32 1000, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 1), align 4
  br label %240

156:                                              ; preds = %151
  %157 = load i8*, i8** %13, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 2), align 8
  br label %239

161:                                              ; preds = %156
  %162 = load i8*, i8** %13, align 8
  %163 = call i64 @strcmp(i8* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %194

165:                                              ; preds = %161
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  %168 = load i32, i32* %3, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %191

170:                                              ; preds = %165
  %171 = load i8**, i8*** %4, align 8
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8*, i8** %171, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = call i8* @atoi(i8* %176)
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* %14, align 4
  %179 = load i8**, i8*** %4, align 8
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %12, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8*, i8** %179, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i8* @atoi(i8* %184)
  %186 = ptrtoint i8* %185 to i32
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %15, align 4
  %189 = call i32 @reserve_test(i32 %187, i32 %188)
  %190 = call i32 @exit(i32 0) #3
  unreachable

191:                                              ; preds = %165
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %193 = call i32 @exit(i32 -1) #3
  unreachable

194:                                              ; preds = %161
  %195 = load i8*, i8** %13, align 8
  %196 = call i64 @strcmp(i8* %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = call i32 (...) @check_timer()
  %200 = call i32 @exit(i32 0) #3
  unreachable

201:                                              ; preds = %194
  %202 = load i8*, i8** %13, align 8
  %203 = call i64 @strcmp(i8* %202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  store i32 1, i32* %11, align 4
  br label %236

206:                                              ; preds = %201
  %207 = load i8*, i8** %13, align 8
  %208 = call i64 @strcmp(i8* %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %206
  %211 = load i8**, i8*** %4, align 8
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8*, i8** %211, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = call i8* @atoi(i8* %216)
  store i8* %217, i8** @func_data_test_start, align 8
  br label %235

218:                                              ; preds = %206
  %219 = load i8*, i8** %13, align 8
  %220 = call i64 @strcmp(i8* %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %218
  %223 = load i8**, i8*** %4, align 8
  %224 = load i32, i32* %12, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %12, align 4
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i8*, i8** %223, i64 %226
  %228 = load i8*, i8** %227, align 8
  %229 = call i8* @atoi(i8* %228)
  store i8* %229, i8** @func_data_test_end, align 8
  br label %234

230:                                              ; preds = %218
  %231 = load i8*, i8** %13, align 8
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i8* %231)
  %233 = call i32 (...) @usage()
  br label %234

234:                                              ; preds = %230, %222
  br label %235

235:                                              ; preds = %234, %210
  br label %236

236:                                              ; preds = %235, %205
  br label %237

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238, %160
  br label %240

240:                                              ; preds = %239, %155
  br label %241

241:                                              ; preds = %240, %143
  br label %242

242:                                              ; preds = %241, %131
  br label %243

243:                                              ; preds = %242, %126
  br label %244

244:                                              ; preds = %243, %120
  br label %245

245:                                              ; preds = %244, %115
  br label %246

246:                                              ; preds = %245, %110
  br label %247

247:                                              ; preds = %246, %98
  br label %248

248:                                              ; preds = %247, %86
  br label %249

249:                                              ; preds = %248, %62
  br label %250

250:                                              ; preds = %249, %57
  br label %16

251:                                              ; preds = %30
  %252 = load i32, i32* %7, align 4
  %253 = load i32, i32* %6, align 4
  %254 = add nsw i32 %252, %253
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %254, %255
  %257 = load i32, i32* %9, align 4
  %258 = add nsw i32 %256, %257
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %258, %259
  %261 = icmp ne i32 %260, 1
  br i1 %261, label %262, label %264

262:                                              ; preds = %251
  %263 = call i32 (...) @usage()
  br label %264

264:                                              ; preds = %262, %251
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %3, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %283

268:                                              ; preds = %264
  %269 = load i8**, i8*** %4, align 8
  %270 = load i32, i32* %12, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %12, align 4
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds i8*, i8** %269, i64 %272
  %274 = load i8*, i8** %273, align 8
  %275 = call i8* @atoi(i8* %274)
  %276 = ptrtoint i8* %275 to i32
  store i32 %276, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 1), align 4
  %277 = load i32, i32* %12, align 4
  %278 = load i32, i32* %3, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %268
  %281 = call i32 (...) @usage()
  br label %282

282:                                              ; preds = %280, %268
  br label %283

283:                                              ; preds = %282, %264
  %284 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %283
  %288 = load i32, i32* @VCOS_LOG_TRACE, align 4
  br label %291

289:                                              ; preds = %283
  %290 = load i32, i32* @VCOS_LOG_INFO, align 4
  br label %291

291:                                              ; preds = %289, %287
  %292 = phi i32 [ %288, %287 ], [ %290, %289 ]
  %293 = call i32 @vcos_log_set_level(i32 %284, i32 %292)
  %294 = load i32, i32* @VCOS_LOG_CATEGORY, align 4
  %295 = call i32 @vcos_log_register(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32 %294)
  %296 = call i32 @vcos_event_create(i32* @g_server_reply, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %297 = call i32 @vcos_event_create(i32* @g_shutdown, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %298 = call i32 @vcos_mutex_create(i32* @g_mutex, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %299 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %299, i64* %5, align 8
  %300 = load i32, i32* %6, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %291
  %303 = call i64 (...) @vchiq_bulk_test()
  store i64 %303, i64* %5, align 8
  br label %328

304:                                              ; preds = %291
  %305 = load i32, i32* %7, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %304
  %308 = call i64 (...) @vchiq_ctrl_test()
  store i64 %308, i64* %5, align 8
  br label %327

309:                                              ; preds = %304
  %310 = load i32, i32* %8, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %309
  %313 = call i64 (...) @vchiq_functional_test()
  store i64 %313, i64* %5, align 8
  br label %326

314:                                              ; preds = %309
  %315 = load i32, i32* %9, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %314
  %318 = call i64 (...) @vchiq_ping_test()
  store i64 %318, i64* %5, align 8
  br label %325

319:                                              ; preds = %314
  %320 = load i32, i32* %10, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  %323 = call i64 (...) @vchiq_signal_test()
  store i64 %323, i64* %5, align 8
  br label %324

324:                                              ; preds = %322, %319
  br label %325

325:                                              ; preds = %324, %317
  br label %326

326:                                              ; preds = %325, %312
  br label %327

327:                                              ; preds = %326, %307
  br label %328

328:                                              ; preds = %327, %302
  %329 = load i64, i64* %5, align 8
  %330 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %331 = icmp eq i64 %329, %330
  %332 = zext i1 %331 to i64
  %333 = select i1 %331, i32 0, i32 -1
  ret i32 %333
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @reserve_test(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @check_timer(...) #1

declare dso_local i32 @vcos_log_set_level(i32, i32) #1

declare dso_local i32 @vcos_log_register(i8*, i32) #1

declare dso_local i32 @vcos_event_create(i32*, i8*) #1

declare dso_local i32 @vcos_mutex_create(i32*, i8*) #1

declare dso_local i64 @vchiq_bulk_test(...) #1

declare dso_local i64 @vchiq_ctrl_test(...) #1

declare dso_local i64 @vchiq_functional_test(...) #1

declare dso_local i64 @vchiq_ping_test(...) #1

declare dso_local i64 @vchiq_signal_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
