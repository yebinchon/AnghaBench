; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_prot.c_which_cmd.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_prot.c_which_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CMD_PUT = common dso_local global i32 0, align 4
@OP_PUT = common dso_local global i32 0, align 4
@CMD_PEEKJOB = common dso_local global i32 0, align 4
@OP_PEEKJOB = common dso_local global i32 0, align 4
@CMD_PEEK_READY = common dso_local global i32 0, align 4
@OP_PEEK_READY = common dso_local global i32 0, align 4
@CMD_PEEK_DELAYED = common dso_local global i32 0, align 4
@OP_PEEK_DELAYED = common dso_local global i32 0, align 4
@CMD_PEEK_BURIED = common dso_local global i32 0, align 4
@OP_PEEK_BURIED = common dso_local global i32 0, align 4
@CMD_RESERVE_TIMEOUT = common dso_local global i32 0, align 4
@OP_RESERVE_TIMEOUT = common dso_local global i32 0, align 4
@CMD_RESERVE_JOB = common dso_local global i32 0, align 4
@OP_RESERVE_JOB = common dso_local global i32 0, align 4
@CMD_RESERVE = common dso_local global i32 0, align 4
@OP_RESERVE = common dso_local global i32 0, align 4
@CMD_DELETE = common dso_local global i32 0, align 4
@OP_DELETE = common dso_local global i32 0, align 4
@CMD_RELEASE = common dso_local global i32 0, align 4
@OP_RELEASE = common dso_local global i32 0, align 4
@CMD_BURY = common dso_local global i32 0, align 4
@OP_BURY = common dso_local global i32 0, align 4
@CMD_KICK = common dso_local global i32 0, align 4
@OP_KICK = common dso_local global i32 0, align 4
@CMD_KICKJOB = common dso_local global i32 0, align 4
@OP_KICKJOB = common dso_local global i32 0, align 4
@CMD_TOUCH = common dso_local global i32 0, align 4
@OP_TOUCH = common dso_local global i32 0, align 4
@CMD_STATSJOB = common dso_local global i32 0, align 4
@OP_STATSJOB = common dso_local global i32 0, align 4
@CMD_STATS_TUBE = common dso_local global i32 0, align 4
@OP_STATS_TUBE = common dso_local global i32 0, align 4
@CMD_STATS = common dso_local global i32 0, align 4
@OP_STATS = common dso_local global i32 0, align 4
@CMD_USE = common dso_local global i32 0, align 4
@OP_USE = common dso_local global i32 0, align 4
@CMD_WATCH = common dso_local global i32 0, align 4
@OP_WATCH = common dso_local global i32 0, align 4
@CMD_IGNORE = common dso_local global i32 0, align 4
@OP_IGNORE = common dso_local global i32 0, align 4
@CMD_LIST_TUBES_WATCHED = common dso_local global i32 0, align 4
@OP_LIST_TUBES_WATCHED = common dso_local global i32 0, align 4
@CMD_LIST_TUBE_USED = common dso_local global i32 0, align 4
@OP_LIST_TUBE_USED = common dso_local global i32 0, align 4
@CMD_LIST_TUBES = common dso_local global i32 0, align 4
@OP_LIST_TUBES = common dso_local global i32 0, align 4
@CMD_QUIT = common dso_local global i32 0, align 4
@OP_QUIT = common dso_local global i32 0, align 4
@CMD_PAUSE_TUBE = common dso_local global i32 0, align 4
@OP_PAUSE_TUBE = common dso_local global i32 0, align 4
@OP_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @which_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @which_cmd(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = load i32, i32* @CMD_PUT, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = load i32, i32* @CMD_PUT, align 4
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = call i32 @strncmp(i8* %8, i8* %11, i64 %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @OP_PUT, align 4
  store i32 %18, i32* %2, align 4
  br label %405

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* @CMD_PEEKJOB, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32, i32* @CMD_PEEKJOB, align 4
  %29 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = call i32 @strncmp(i8* %24, i8* %27, i64 %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @OP_PEEKJOB, align 4
  store i32 %34, i32* %2, align 4
  br label %405

35:                                               ; preds = %19
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load i32, i32* @CMD_PEEK_READY, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* @CMD_PEEK_READY, align 4
  %45 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = call i32 @strncmp(i8* %40, i8* %43, i64 %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load i32, i32* @OP_PEEK_READY, align 4
  store i32 %50, i32* %2, align 4
  br label %405

51:                                               ; preds = %35
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load i32, i32* @CMD_PEEK_DELAYED, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = load i32, i32* @CMD_PEEK_DELAYED, align 4
  %61 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = call i32 @strncmp(i8* %56, i8* %59, i64 %62)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* @OP_PEEK_DELAYED, align 4
  store i32 %66, i32* %2, align 4
  br label %405

67:                                               ; preds = %51
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load i32, i32* @CMD_PEEK_BURIED, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = load i32, i32* @CMD_PEEK_BURIED, align 4
  %77 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %76)
  %78 = sext i32 %77 to i64
  %79 = call i32 @strncmp(i8* %72, i8* %75, i64 %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i32, i32* @OP_PEEK_BURIED, align 4
  store i32 %82, i32* %2, align 4
  br label %405

83:                                               ; preds = %67
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = load i32, i32* @CMD_RESERVE_TIMEOUT, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = load i32, i32* @CMD_RESERVE_TIMEOUT, align 4
  %93 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %92)
  %94 = sext i32 %93 to i64
  %95 = call i32 @strncmp(i8* %88, i8* %91, i64 %94)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* @OP_RESERVE_TIMEOUT, align 4
  store i32 %98, i32* %2, align 4
  br label %405

99:                                               ; preds = %83
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load i32, i32* @CMD_RESERVE_JOB, align 4
  %106 = sext i32 %105 to i64
  %107 = inttoptr i64 %106 to i8*
  %108 = load i32, i32* @CMD_RESERVE_JOB, align 4
  %109 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %108)
  %110 = sext i32 %109 to i64
  %111 = call i32 @strncmp(i8* %104, i8* %107, i64 %110)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %99
  %114 = load i32, i32* @OP_RESERVE_JOB, align 4
  store i32 %114, i32* %2, align 4
  br label %405

115:                                              ; preds = %99
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = load i32, i32* @CMD_RESERVE, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = load i32, i32* @CMD_RESERVE, align 4
  %125 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %124)
  %126 = sext i32 %125 to i64
  %127 = call i32 @strncmp(i8* %120, i8* %123, i64 %126)
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %115
  %130 = load i32, i32* @OP_RESERVE, align 4
  store i32 %130, i32* %2, align 4
  br label %405

131:                                              ; preds = %115
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = load i32, i32* @CMD_DELETE, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = load i32, i32* @CMD_DELETE, align 4
  %141 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %140)
  %142 = sext i32 %141 to i64
  %143 = call i32 @strncmp(i8* %136, i8* %139, i64 %142)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %131
  %146 = load i32, i32* @OP_DELETE, align 4
  store i32 %146, i32* %2, align 4
  br label %405

147:                                              ; preds = %131
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = load i32, i32* @CMD_RELEASE, align 4
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = load i32, i32* @CMD_RELEASE, align 4
  %157 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %156)
  %158 = sext i32 %157 to i64
  %159 = call i32 @strncmp(i8* %152, i8* %155, i64 %158)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %147
  %162 = load i32, i32* @OP_RELEASE, align 4
  store i32 %162, i32* %2, align 4
  br label %405

163:                                              ; preds = %147
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  %169 = load i32, i32* @CMD_BURY, align 4
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to i8*
  %172 = load i32, i32* @CMD_BURY, align 4
  %173 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %172)
  %174 = sext i32 %173 to i64
  %175 = call i32 @strncmp(i8* %168, i8* %171, i64 %174)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %163
  %178 = load i32, i32* @OP_BURY, align 4
  store i32 %178, i32* %2, align 4
  br label %405

179:                                              ; preds = %163
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i8*
  %185 = load i32, i32* @CMD_KICK, align 4
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = load i32, i32* @CMD_KICK, align 4
  %189 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %188)
  %190 = sext i32 %189 to i64
  %191 = call i32 @strncmp(i8* %184, i8* %187, i64 %190)
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %179
  %194 = load i32, i32* @OP_KICK, align 4
  store i32 %194, i32* %2, align 4
  br label %405

195:                                              ; preds = %179
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = inttoptr i64 %199 to i8*
  %201 = load i32, i32* @CMD_KICKJOB, align 4
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = load i32, i32* @CMD_KICKJOB, align 4
  %205 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %204)
  %206 = sext i32 %205 to i64
  %207 = call i32 @strncmp(i8* %200, i8* %203, i64 %206)
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %195
  %210 = load i32, i32* @OP_KICKJOB, align 4
  store i32 %210, i32* %2, align 4
  br label %405

211:                                              ; preds = %195
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = inttoptr i64 %215 to i8*
  %217 = load i32, i32* @CMD_TOUCH, align 4
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8*
  %220 = load i32, i32* @CMD_TOUCH, align 4
  %221 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %220)
  %222 = sext i32 %221 to i64
  %223 = call i32 @strncmp(i8* %216, i8* %219, i64 %222)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %211
  %226 = load i32, i32* @OP_TOUCH, align 4
  store i32 %226, i32* %2, align 4
  br label %405

227:                                              ; preds = %211
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = inttoptr i64 %231 to i8*
  %233 = load i32, i32* @CMD_STATSJOB, align 4
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to i8*
  %236 = load i32, i32* @CMD_STATSJOB, align 4
  %237 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %236)
  %238 = sext i32 %237 to i64
  %239 = call i32 @strncmp(i8* %232, i8* %235, i64 %238)
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %227
  %242 = load i32, i32* @OP_STATSJOB, align 4
  store i32 %242, i32* %2, align 4
  br label %405

243:                                              ; preds = %227
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = inttoptr i64 %247 to i8*
  %249 = load i32, i32* @CMD_STATS_TUBE, align 4
  %250 = sext i32 %249 to i64
  %251 = inttoptr i64 %250 to i8*
  %252 = load i32, i32* @CMD_STATS_TUBE, align 4
  %253 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %252)
  %254 = sext i32 %253 to i64
  %255 = call i32 @strncmp(i8* %248, i8* %251, i64 %254)
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %243
  %258 = load i32, i32* @OP_STATS_TUBE, align 4
  store i32 %258, i32* %2, align 4
  br label %405

259:                                              ; preds = %243
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = inttoptr i64 %263 to i8*
  %265 = load i32, i32* @CMD_STATS, align 4
  %266 = sext i32 %265 to i64
  %267 = inttoptr i64 %266 to i8*
  %268 = load i32, i32* @CMD_STATS, align 4
  %269 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %268)
  %270 = sext i32 %269 to i64
  %271 = call i32 @strncmp(i8* %264, i8* %267, i64 %270)
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %259
  %274 = load i32, i32* @OP_STATS, align 4
  store i32 %274, i32* %2, align 4
  br label %405

275:                                              ; preds = %259
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = inttoptr i64 %279 to i8*
  %281 = load i32, i32* @CMD_USE, align 4
  %282 = sext i32 %281 to i64
  %283 = inttoptr i64 %282 to i8*
  %284 = load i32, i32* @CMD_USE, align 4
  %285 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %284)
  %286 = sext i32 %285 to i64
  %287 = call i32 @strncmp(i8* %280, i8* %283, i64 %286)
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %275
  %290 = load i32, i32* @OP_USE, align 4
  store i32 %290, i32* %2, align 4
  br label %405

291:                                              ; preds = %275
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = inttoptr i64 %295 to i8*
  %297 = load i32, i32* @CMD_WATCH, align 4
  %298 = sext i32 %297 to i64
  %299 = inttoptr i64 %298 to i8*
  %300 = load i32, i32* @CMD_WATCH, align 4
  %301 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %300)
  %302 = sext i32 %301 to i64
  %303 = call i32 @strncmp(i8* %296, i8* %299, i64 %302)
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %291
  %306 = load i32, i32* @OP_WATCH, align 4
  store i32 %306, i32* %2, align 4
  br label %405

307:                                              ; preds = %291
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = inttoptr i64 %311 to i8*
  %313 = load i32, i32* @CMD_IGNORE, align 4
  %314 = sext i32 %313 to i64
  %315 = inttoptr i64 %314 to i8*
  %316 = load i32, i32* @CMD_IGNORE, align 4
  %317 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %316)
  %318 = sext i32 %317 to i64
  %319 = call i32 @strncmp(i8* %312, i8* %315, i64 %318)
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %307
  %322 = load i32, i32* @OP_IGNORE, align 4
  store i32 %322, i32* %2, align 4
  br label %405

323:                                              ; preds = %307
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = inttoptr i64 %327 to i8*
  %329 = load i32, i32* @CMD_LIST_TUBES_WATCHED, align 4
  %330 = sext i32 %329 to i64
  %331 = inttoptr i64 %330 to i8*
  %332 = load i32, i32* @CMD_LIST_TUBES_WATCHED, align 4
  %333 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %332)
  %334 = sext i32 %333 to i64
  %335 = call i32 @strncmp(i8* %328, i8* %331, i64 %334)
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %323
  %338 = load i32, i32* @OP_LIST_TUBES_WATCHED, align 4
  store i32 %338, i32* %2, align 4
  br label %405

339:                                              ; preds = %323
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  %344 = inttoptr i64 %343 to i8*
  %345 = load i32, i32* @CMD_LIST_TUBE_USED, align 4
  %346 = sext i32 %345 to i64
  %347 = inttoptr i64 %346 to i8*
  %348 = load i32, i32* @CMD_LIST_TUBE_USED, align 4
  %349 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %348)
  %350 = sext i32 %349 to i64
  %351 = call i32 @strncmp(i8* %344, i8* %347, i64 %350)
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %339
  %354 = load i32, i32* @OP_LIST_TUBE_USED, align 4
  store i32 %354, i32* %2, align 4
  br label %405

355:                                              ; preds = %339
  %356 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = sext i32 %358 to i64
  %360 = inttoptr i64 %359 to i8*
  %361 = load i32, i32* @CMD_LIST_TUBES, align 4
  %362 = sext i32 %361 to i64
  %363 = inttoptr i64 %362 to i8*
  %364 = load i32, i32* @CMD_LIST_TUBES, align 4
  %365 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %364)
  %366 = sext i32 %365 to i64
  %367 = call i32 @strncmp(i8* %360, i8* %363, i64 %366)
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %355
  %370 = load i32, i32* @OP_LIST_TUBES, align 4
  store i32 %370, i32* %2, align 4
  br label %405

371:                                              ; preds = %355
  %372 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  %376 = inttoptr i64 %375 to i8*
  %377 = load i32, i32* @CMD_QUIT, align 4
  %378 = sext i32 %377 to i64
  %379 = inttoptr i64 %378 to i8*
  %380 = load i32, i32* @CMD_QUIT, align 4
  %381 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %380)
  %382 = sext i32 %381 to i64
  %383 = call i32 @strncmp(i8* %376, i8* %379, i64 %382)
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %371
  %386 = load i32, i32* @OP_QUIT, align 4
  store i32 %386, i32* %2, align 4
  br label %405

387:                                              ; preds = %371
  %388 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = sext i32 %390 to i64
  %392 = inttoptr i64 %391 to i8*
  %393 = load i32, i32* @CMD_PAUSE_TUBE, align 4
  %394 = sext i32 %393 to i64
  %395 = inttoptr i64 %394 to i8*
  %396 = load i32, i32* @CMD_PAUSE_TUBE, align 4
  %397 = call i32 (i32, ...) bitcast (i32 (...)* @CONSTSTRLEN to i32 (i32, ...)*)(i32 %396)
  %398 = sext i32 %397 to i64
  %399 = call i32 @strncmp(i8* %392, i8* %395, i64 %398)
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %387
  %402 = load i32, i32* @OP_PAUSE_TUBE, align 4
  store i32 %402, i32* %2, align 4
  br label %405

403:                                              ; preds = %387
  %404 = load i32, i32* @OP_UNKNOWN, align 4
  store i32 %404, i32* %2, align 4
  br label %405

405:                                              ; preds = %403, %401, %385, %369, %353, %337, %321, %305, %289, %273, %257, %241, %225, %209, %193, %177, %161, %145, %129, %113, %97, %81, %65, %49, %33, %17
  %406 = load i32, i32* %2, align 4
  ret i32 %406
}

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @CONSTSTRLEN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
