; ModuleID = '/home/carl/AnghaBench/disque/src/extr_disque-cli.c_cliSendCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_disque-cli.c_cliSendCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@REDIS_OK = common dso_local global i32 0, align 4
@context = common dso_local global i32* null, align 8
@REDIS_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"cluster\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"latency\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"doctor\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"subscribe\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"psubscribe\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"psync\00", align 1
@stdout = common dso_local global i32 0, align 4
@OUTPUT_RAW = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [44 x i8] c"Reading messages... (press Ctrl-C to quit)\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Entering slave output mode...  (press Ctrl-C to quit)\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32)* @cliSendCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cliSendCommand(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18, %3
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %5, align 4
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** %6, align 8
  %27 = call i32 @cliOutputHelp(i32 %24, i8** %26)
  %28 = load i32, i32* @REDIS_OK, align 4
  store i32 %28, i32* %4, align 4
  br label %246

29:                                               ; preds = %18
  %30 = load i32*, i32** @context, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @REDIS_ERR, align 4
  store i32 %33, i32* %4, align 4
  br label %246

34:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strcasecmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %96

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = load i8**, i8*** %6, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcasecmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %96

51:                                               ; preds = %45
  %52 = load i8**, i8*** %6, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcasecmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %96

57:                                               ; preds = %51, %41, %38
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @strcasecmp(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = load i8**, i8*** %6, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcasecmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %64, %60, %57
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @strcasecmp(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load i8**, i8*** %6, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcasecmp(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %77, %73, %70
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @strcasecmp(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = load i8**, i8*** %6, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strcasecmp(i8* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90, %77, %64, %51, %45, %34
  store i32 1, i32* %11, align 4
  br label %97

97:                                               ; preds = %96, %90, %86, %83
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @strcasecmp(i8* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  br label %102

102:                                              ; preds = %101, %97
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @strcasecmp(i8* %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 4
  br label %107

107:                                              ; preds = %106, %102
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @strcasecmp(i8* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @strcasecmp(i8* %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111, %107
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  br label %116

116:                                              ; preds = %115, %111
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @strcasecmp(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @strcasecmp(i8* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120, %116
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 4
  br label %125

125:                                              ; preds = %124, %120
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 8
  %129 = trunc i64 %128 to i32
  %130 = call i64* @malloc(i32 %129)
  store i64* %130, i64** %9, align 8
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %146, %125
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = load i8**, i8*** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @sdslen(i8* %140)
  %142 = load i64*, i64** %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  store i64 %141, i64* %145, align 8
  br label %146

146:                                              ; preds = %135
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %131

149:                                              ; preds = %131
  br label %150

150:                                              ; preds = %239, %149
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %7, align 4
  %153 = icmp ne i32 %151, 0
  br i1 %153, label %154, label %242

154:                                              ; preds = %150
  %155 = load i32*, i32** @context, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load i8**, i8*** %6, align 8
  %158 = load i64*, i64** %9, align 8
  %159 = call i32 @redisAppendCommandArgv(i32* %155, i32 %156, i8** %157, i64* %158)
  br label %160

160:                                              ; preds = %170, %154
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @cliReadReply(i32 %164)
  %166 = load i32, i32* @REDIS_OK, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = call i32 @exit(i32 1) #3
  unreachable

170:                                              ; preds = %163
  %171 = load i32, i32* @stdout, align 4
  %172 = call i32 @fflush(i32 %171)
  br label %160

173:                                              ; preds = %160
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %173
  %177 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  %178 = load i64, i64* @OUTPUT_RAW, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %176
  br label %183

183:                                              ; preds = %182, %190
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @cliReadReply(i32 %184)
  %186 = load i32, i32* @REDIS_OK, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = call i32 @exit(i32 1) #3
  unreachable

190:                                              ; preds = %183
  br label %183

191:                                              ; preds = %173
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0))
  %196 = call i32 (...) @slaveMode()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 4
  %197 = load i64*, i64** %9, align 8
  %198 = call i32 @free(i64* %197)
  %199 = load i32, i32* @REDIS_ERR, align 4
  store i32 %199, i32* %4, align 4
  br label %246

200:                                              ; preds = %191
  %201 = load i32, i32* %11, align 4
  %202 = call i32 @cliReadReply(i32 %201)
  %203 = load i32, i32* @REDIS_OK, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i64*, i64** %9, align 8
  %207 = call i32 @free(i64* %206)
  %208 = load i32, i32* @REDIS_ERR, align 4
  store i32 %208, i32* %4, align 4
  br label %246

209:                                              ; preds = %200
  %210 = load i8*, i8** %8, align 8
  %211 = call i32 @strcasecmp(i8* %210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %222, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %5, align 4
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i8**, i8*** %6, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @atoi(i8* %219)
  store i32 %220, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 8
  %221 = call i32 (...) @cliRefreshPrompt()
  br label %232

222:                                              ; preds = %213, %209
  %223 = load i8*, i8** %8, align 8
  %224 = call i32 @strcasecmp(i8* %223, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %222
  %227 = load i32, i32* %5, align 4
  %228 = icmp eq i32 %227, 2
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = call i32 (...) @cliSelect()
  br label %231

231:                                              ; preds = %229, %226, %222
  br label %232

232:                                              ; preds = %231, %216
  br label %233

233:                                              ; preds = %232
  %234 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  %238 = call i32 @usleep(i64 %237)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i32, i32* @stdout, align 4
  %241 = call i32 @fflush(i32 %240)
  br label %150

242:                                              ; preds = %150
  %243 = load i64*, i64** %9, align 8
  %244 = call i32 @free(i64* %243)
  %245 = load i32, i32* @REDIS_OK, align 4
  store i32 %245, i32* %4, align 4
  br label %246

246:                                              ; preds = %242, %205, %194, %32, %22
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @cliOutputHelp(i32, i8**) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @redisAppendCommandArgv(i32*, i32, i8**, i64*) #1

declare dso_local i32 @cliReadReply(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @slaveMode(...) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @cliRefreshPrompt(...) #1

declare dso_local i32 @cliSelect(...) #1

declare dso_local i32 @usleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
