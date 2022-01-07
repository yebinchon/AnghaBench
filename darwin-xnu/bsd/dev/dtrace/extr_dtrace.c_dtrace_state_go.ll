; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_state_go.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_state_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_25__ = type { i32*, i64, i32, i64, i64, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i8*, i32, i32, i8*, %struct.TYPE_22__, i32*, i64, %struct.TYPE_25__*, %struct.TYPE_24__, i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i8*, %struct.TYPE_25__*, i8* }
%struct.TYPE_27__ = type { i32, i64 }

@NCPU = common dso_local global i64 0, align 8
@cpu_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@DTRACE_ACTIVITY_INACTIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@DTRACEOPT_NSPEC = common dso_local global i64 0, align 8
@DTRACEOPT_UNSET = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KM_NOSLEEP = common dso_local global i32 0, align 4
@DTRACEOPT_GRABANON = common dso_local global i64 0, align 8
@dtrace_anon = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@ENOENT = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@DTRACEOPT_AGGSIZE = common dso_local global i64 0, align 8
@DTRACEOPT_BUFSIZE = common dso_local global i64 0, align 8
@DTRACEOPT_SPECSIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@DTRACEOPT_DYNVARSIZE = common dso_local global i64 0, align 8
@dtrace_dstate_defsize = common dso_local global i32 0, align 4
@DTRACEOPT_BUFRESIZE = common dso_local global i64 0, align 8
@DTRACEOPT_BUFRESIZE_MANUAL = common dso_local global i32 0, align 4
@DTRACEOPT_STATUSRATE = common dso_local global i64 0, align 8
@dtrace_statusrate_max = common dso_local global i32 0, align 4
@DTRACEOPT_CLEANRATE = common dso_local global i64 0, align 8
@dtrace_cleanrate_max = common dso_local global i32 0, align 4
@dtrace_cleanrate_min = common dso_local global i32 0, align 4
@DTRACEOPT_STRSIZE = common dso_local global i64 0, align 8
@dtrace_strsize_max = common dso_local global i32 0, align 4
@dtrace_strsize_min = common dso_local global i32 0, align 4
@DTRACEOPT_BUFLIMIT = common dso_local global i64 0, align 8
@dtrace_buflimit_max = common dso_local global i32 0, align 4
@dtrace_buflimit_min = common dso_local global i32 0, align 4
@dtrace_state_clean = common dso_local global i64 0, align 8
@CY_LOW_LEVEL = common dso_local global i8* null, align 8
@dtrace_state_deadman = common dso_local global i64 0, align 8
@dtrace_deadman_interval = common dso_local global i32 0, align 4
@DTRACE_ACTIVITY_WARMUP = common dso_local global i64 0, align 8
@CPU = common dso_local global %struct.TYPE_23__* null, align 8
@DTRACEBUF_INACTIVE = common dso_local global i32 0, align 4
@dtrace_probeid_begin = common dso_local global i32 0, align 4
@DTRACE_ACTIVITY_DRAINING = common dso_local global i64 0, align 8
@DTRACE_ACTIVITY_ACTIVE = common dso_local global i64 0, align 8
@DTRACE_CPUALL = common dso_local global i32 0, align 4
@dtrace_buffer_activate = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i64*)* @dtrace_state_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_state_go(%struct.TYPE_25__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_28__, align 8
  %11 = alloca %struct.TYPE_27__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store i64* %1, i64** %4, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  store i32 0, i32* %12, align 4
  %19 = load i64, i64* @NCPU, align 8
  %20 = trunc i64 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 16
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %14, align 4
  %24 = call i32 @lck_mtx_lock(i32* @cpu_lock)
  %25 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DTRACE_ACTIVITY_INACTIVE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @EBUSY, align 4
  store i32 %32, i32* %12, align 4
  br label %569

33:                                               ; preds = %2
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %35 = call i32 @dtrace_enabling_prime(%struct.TYPE_25__* %34)
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 17
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 16
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EACCES, align 4
  store i32 %47, i32* %12, align 4
  br label %569

48:                                               ; preds = %40, %33
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %50 = call i32 @dtrace_state_prereserve(%struct.TYPE_25__* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = load i64, i64* @DTRACEOPT_NSPEC, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %57 = icmp ne i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @ASSERT(i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @INT_MAX, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load i32, i32* @ENOMEM, align 4
  store i32 %64, i32* %12, align 4
  br label %569

65:                                               ; preds = %48
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 16
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @KM_NOSLEEP, align 4
  %71 = call %struct.TYPE_26__* @kmem_zalloc(i32 %69, i32 %70)
  store %struct.TYPE_26__* %71, %struct.TYPE_26__** %8, align 8
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %73 = icmp eq %struct.TYPE_26__* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* @ENOMEM, align 4
  store i32 %75, i32* %12, align 4
  br label %569

76:                                               ; preds = %65
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 5
  store %struct.TYPE_26__* %77, %struct.TYPE_26__** %79, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %13, align 4
  br label %83

83:                                               ; preds = %101, %76
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @KM_NOSLEEP, align 4
  %90 = call %struct.TYPE_26__* @kmem_zalloc(i32 %88, i32 %89)
  store %struct.TYPE_26__* %90, %struct.TYPE_26__** %9, align 8
  %91 = icmp eq %struct.TYPE_26__* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @ENOMEM, align 4
  store i32 %93, i32* %12, align 4
  br label %506

94:                                               ; preds = %87
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 1
  store %struct.TYPE_26__* %95, %struct.TYPE_26__** %100, align 8
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %83

104:                                              ; preds = %83
  %105 = load i32*, i32** %5, align 8
  %106 = load i64, i64* @DTRACEOPT_GRABANON, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %154

111:                                              ; preds = %104
  %112 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @dtrace_anon, i32 0, i32 1), align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @ENOENT, align 4
  store i32 %115, i32* %12, align 4
  br label %569

116:                                              ; preds = %111
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* @EALREADY, align 4
  store i32 %122, i32* %12, align 4
  br label %569

123:                                              ; preds = %116
  %124 = call %struct.TYPE_25__* (...) @dtrace_anon_grab()
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 15
  store %struct.TYPE_25__* %124, %struct.TYPE_25__** %126, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 15
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %128, align 8
  %130 = icmp ne %struct.TYPE_25__* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i32 @ASSERT(i32 %131)
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 15
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %134, align 8
  store %struct.TYPE_25__* %135, %struct.TYPE_25__** %3, align 8
  %136 = load i32*, i32** %5, align 8
  %137 = load i64, i64* @DTRACEOPT_GRABANON, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @DTRACEOPT_GRABANON, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 %139, i32* %144, align 4
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @dtrace_anon, i32 0, i32 0), align 8
  %146 = load i64*, i64** %4, align 8
  store i64 %145, i64* %146, align 8
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @DTRACE_ACTIVITY_INACTIVE, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %123
  br label %569

153:                                              ; preds = %123
  br label %154

154:                                              ; preds = %153, %104
  %155 = load i32*, i32** %5, align 8
  %156 = load i64, i64* @DTRACEOPT_AGGSIZE, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %203

161:                                              ; preds = %154
  %162 = load i32*, i32** %5, align 8
  %163 = load i64, i64* @DTRACEOPT_AGGSIZE, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %203

167:                                              ; preds = %161
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 13
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load i32*, i32** %5, align 8
  %174 = load i64, i64* @DTRACEOPT_AGGSIZE, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32 0, i32* %175, align 4
  br label %202

176:                                              ; preds = %167
  %177 = load i32*, i32** %5, align 8
  %178 = load i64, i64* @DTRACEOPT_BUFSIZE, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %193, label %183

183:                                              ; preds = %176
  %184 = load i32*, i32** %5, align 8
  %185 = load i64, i64* @DTRACEOPT_BUFSIZE, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = icmp ult i64 %188, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %183, %176
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i32*, i32** %5, align 8
  %199 = load i64, i64* @DTRACEOPT_BUFSIZE, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32 %197, i32* %200, align 4
  br label %201

201:                                              ; preds = %193, %183
  br label %202

202:                                              ; preds = %201, %172
  br label %203

203:                                              ; preds = %202, %161, %154
  %204 = load i32*, i32** %5, align 8
  %205 = load i64, i64* @DTRACEOPT_SPECSIZE, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %226

210:                                              ; preds = %203
  %211 = load i32*, i32** %5, align 8
  %212 = load i64, i64* @DTRACEOPT_SPECSIZE, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %210
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 14
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %216
  %222 = load i32*, i32** %5, align 8
  %223 = load i64, i64* @DTRACEOPT_SPECSIZE, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32 0, i32* %224, align 4
  br label %225

225:                                              ; preds = %221, %216
  br label %226

226:                                              ; preds = %225, %210, %203
  store i32 4, i32* %6, align 4
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %226
  %232 = load i32*, i32** %5, align 8
  %233 = load i64, i64* @DTRACEOPT_BUFSIZE, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %262, label %238

238:                                              ; preds = %231, %226
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 14
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %238
  %244 = load i32*, i32** %5, align 8
  %245 = load i64, i64* @DTRACEOPT_SPECSIZE, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %6, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %262, label %250

250:                                              ; preds = %243, %238
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 13
  %253 = load i32*, i32** %252, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = load i32*, i32** %5, align 8
  %257 = load i64, i64* @DTRACEOPT_AGGSIZE, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %6, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %255, %243, %231
  %263 = load i32, i32* @ENOSPC, align 4
  store i32 %263, i32* %12, align 4
  br label %569

264:                                              ; preds = %255, %250
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %266 = call i32 @dtrace_state_buffers(%struct.TYPE_25__* %265)
  store i32 %266, i32* %12, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  br label %506

269:                                              ; preds = %264
  %270 = load i32*, i32** %5, align 8
  %271 = load i64, i64* @DTRACEOPT_DYNVARSIZE, align 8
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %269
  %277 = load i32, i32* @dtrace_dstate_defsize, align 4
  store i32 %277, i32* %6, align 4
  br label %278

278:                                              ; preds = %276, %269
  br label %279

279:                                              ; preds = %297, %278
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 12
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 0
  %283 = load i32, i32* %6, align 4
  %284 = call i32 @dtrace_dstate_init(i32* %282, i32 %283)
  store i32 %284, i32* %12, align 4
  %285 = load i32, i32* %12, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %279
  br label %301

288:                                              ; preds = %279
  %289 = load i32*, i32** %5, align 8
  %290 = load i64, i64* @DTRACEOPT_BUFRESIZE, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @DTRACEOPT_BUFRESIZE_MANUAL, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %288
  br label %506

296:                                              ; preds = %288
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %6, align 4
  %299 = ashr i32 %298, 1
  store i32 %299, i32* %6, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %279, label %301

301:                                              ; preds = %297, %287
  %302 = load i32, i32* %6, align 4
  %303 = load i32*, i32** %5, align 8
  %304 = load i64, i64* @DTRACEOPT_DYNVARSIZE, align 8
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  store i32 %302, i32* %305, align 4
  %306 = load i32, i32* %12, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %301
  br label %506

309:                                              ; preds = %301
  %310 = load i32*, i32** %5, align 8
  %311 = load i64, i64* @DTRACEOPT_STATUSRATE, align 8
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @dtrace_statusrate_max, align 4
  %315 = icmp sgt i32 %313, %314
  br i1 %315, label %316, label %321

316:                                              ; preds = %309
  %317 = load i32, i32* @dtrace_statusrate_max, align 4
  %318 = load i32*, i32** %5, align 8
  %319 = load i64, i64* @DTRACEOPT_STATUSRATE, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  store i32 %317, i32* %320, align 4
  br label %321

321:                                              ; preds = %316, %309
  %322 = load i32*, i32** %5, align 8
  %323 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %321
  %328 = load i32, i32* @dtrace_cleanrate_max, align 4
  %329 = load i32*, i32** %5, align 8
  %330 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %331 = getelementptr inbounds i32, i32* %329, i64 %330
  store i32 %328, i32* %331, align 4
  br label %332

332:                                              ; preds = %327, %321
  %333 = load i32*, i32** %5, align 8
  %334 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %335 = getelementptr inbounds i32, i32* %333, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @dtrace_cleanrate_min, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %344

339:                                              ; preds = %332
  %340 = load i32, i32* @dtrace_cleanrate_min, align 4
  %341 = load i32*, i32** %5, align 8
  %342 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %343 = getelementptr inbounds i32, i32* %341, i64 %342
  store i32 %340, i32* %343, align 4
  br label %344

344:                                              ; preds = %339, %332
  %345 = load i32*, i32** %5, align 8
  %346 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %347 = getelementptr inbounds i32, i32* %345, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @dtrace_cleanrate_max, align 4
  %350 = icmp sgt i32 %348, %349
  br i1 %350, label %351, label %356

351:                                              ; preds = %344
  %352 = load i32, i32* @dtrace_cleanrate_max, align 4
  %353 = load i32*, i32** %5, align 8
  %354 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %355 = getelementptr inbounds i32, i32* %353, i64 %354
  store i32 %352, i32* %355, align 4
  br label %356

356:                                              ; preds = %351, %344
  %357 = load i32*, i32** %5, align 8
  %358 = load i64, i64* @DTRACEOPT_STRSIZE, align 8
  %359 = getelementptr inbounds i32, i32* %357, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @dtrace_strsize_max, align 4
  %362 = icmp sgt i32 %360, %361
  br i1 %362, label %363, label %368

363:                                              ; preds = %356
  %364 = load i32, i32* @dtrace_strsize_max, align 4
  %365 = load i32*, i32** %5, align 8
  %366 = load i64, i64* @DTRACEOPT_STRSIZE, align 8
  %367 = getelementptr inbounds i32, i32* %365, i64 %366
  store i32 %364, i32* %367, align 4
  br label %368

368:                                              ; preds = %363, %356
  %369 = load i32*, i32** %5, align 8
  %370 = load i64, i64* @DTRACEOPT_STRSIZE, align 8
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* @dtrace_strsize_min, align 4
  %374 = icmp slt i32 %372, %373
  br i1 %374, label %375, label %380

375:                                              ; preds = %368
  %376 = load i32, i32* @dtrace_strsize_min, align 4
  %377 = load i32*, i32** %5, align 8
  %378 = load i64, i64* @DTRACEOPT_STRSIZE, align 8
  %379 = getelementptr inbounds i32, i32* %377, i64 %378
  store i32 %376, i32* %379, align 4
  br label %380

380:                                              ; preds = %375, %368
  %381 = load i32*, i32** %5, align 8
  %382 = load i64, i64* @DTRACEOPT_BUFLIMIT, align 8
  %383 = getelementptr inbounds i32, i32* %381, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @dtrace_buflimit_max, align 4
  %386 = icmp sgt i32 %384, %385
  br i1 %386, label %387, label %392

387:                                              ; preds = %380
  %388 = load i32, i32* @dtrace_buflimit_max, align 4
  %389 = load i32*, i32** %5, align 8
  %390 = load i64, i64* @DTRACEOPT_BUFLIMIT, align 8
  %391 = getelementptr inbounds i32, i32* %389, i64 %390
  store i32 %388, i32* %391, align 4
  br label %392

392:                                              ; preds = %387, %380
  %393 = load i32*, i32** %5, align 8
  %394 = load i64, i64* @DTRACEOPT_BUFLIMIT, align 8
  %395 = getelementptr inbounds i32, i32* %393, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* @dtrace_buflimit_min, align 4
  %398 = icmp slt i32 %396, %397
  br i1 %398, label %399, label %404

399:                                              ; preds = %392
  %400 = load i32, i32* @dtrace_buflimit_min, align 4
  %401 = load i32*, i32** %5, align 8
  %402 = load i64, i64* @DTRACEOPT_BUFLIMIT, align 8
  %403 = getelementptr inbounds i32, i32* %401, i64 %402
  store i32 %400, i32* %403, align 4
  br label %404

404:                                              ; preds = %399, %392
  %405 = load i64, i64* @dtrace_state_clean, align 8
  %406 = inttoptr i64 %405 to i8*
  %407 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 2
  store i8* %406, i8** %407, align 8
  %408 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 1
  store %struct.TYPE_25__* %408, %struct.TYPE_25__** %409, align 8
  %410 = load i8*, i8** @CY_LOW_LEVEL, align 8
  %411 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 0
  store i8* %410, i8** %411, align 8
  %412 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 1
  store i64 0, i64* %412, align 8
  %413 = load i32*, i32** %5, align 8
  %414 = load i64, i64* @DTRACEOPT_CLEANRATE, align 8
  %415 = getelementptr inbounds i32, i32* %413, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  store i32 %416, i32* %417, align 8
  %418 = call i8* @cyclic_add(%struct.TYPE_28__* %10, %struct.TYPE_27__* %11)
  %419 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %419, i32 0, i32 11
  store i8* %418, i8** %420, align 8
  %421 = load i64, i64* @dtrace_state_deadman, align 8
  %422 = inttoptr i64 %421 to i8*
  %423 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 2
  store i8* %422, i8** %423, align 8
  %424 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 1
  store %struct.TYPE_25__* %424, %struct.TYPE_25__** %425, align 8
  %426 = load i8*, i8** @CY_LOW_LEVEL, align 8
  %427 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 0
  store i8* %426, i8** %427, align 8
  %428 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 1
  store i64 0, i64* %428, align 8
  %429 = load i32, i32* @dtrace_deadman_interval, align 4
  %430 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 0
  store i32 %429, i32* %430, align 8
  %431 = call i32 (...) @dtrace_gethrtime()
  %432 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %432, i32 0, i32 9
  store i32 %431, i32* %433, align 8
  %434 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %434, i32 0, i32 10
  store i32 %431, i32* %435, align 4
  %436 = call i8* @cyclic_add(%struct.TYPE_28__* %10, %struct.TYPE_27__* %11)
  %437 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %437, i32 0, i32 8
  store i8* %436, i8** %438, align 8
  %439 = load i64, i64* @DTRACE_ACTIVITY_WARMUP, align 8
  %440 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %440, i32 0, i32 1
  store i64 %439, i64* %441, align 8
  %442 = call i32 (...) @dtrace_interrupt_disable()
  store i32 %442, i32* %15, align 4
  %443 = load %struct.TYPE_23__*, %struct.TYPE_23__** @CPU, align 8
  %444 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load i64*, i64** %4, align 8
  store i64 %445, i64* %446, align 8
  %447 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %448 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %447, i32 0, i32 7
  %449 = load %struct.TYPE_26__*, %struct.TYPE_26__** %448, align 8
  %450 = load i64*, i64** %4, align 8
  %451 = load i64, i64* %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %449, i64 %451
  %453 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = load i32, i32* @DTRACEBUF_INACTIVE, align 4
  %456 = and i32 %454, %455
  %457 = call i32 @ASSERT(i32 %456)
  %458 = load i32, i32* @DTRACEBUF_INACTIVE, align 4
  %459 = xor i32 %458, -1
  %460 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %460, i32 0, i32 7
  %462 = load %struct.TYPE_26__*, %struct.TYPE_26__** %461, align 8
  %463 = load i64*, i64** %4, align 8
  %464 = load i64, i64* %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %462, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = and i32 %467, %459
  store i32 %468, i32* %466, align 8
  %469 = load i32, i32* @dtrace_probeid_begin, align 4
  %470 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %471 = ptrtoint %struct.TYPE_25__* %470 to i64
  %472 = trunc i64 %471 to i32
  %473 = call i32 @dtrace_probe(i32 %469, i32 %472, i32 0, i32 0, i32 0, i32 0)
  %474 = load i32, i32* %15, align 4
  %475 = call i32 @dtrace_interrupt_enable(i32 %474)
  %476 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %477 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %476, i32 0, i32 1
  %478 = load i64, i64* %477, align 8
  %479 = load i64, i64* @DTRACE_ACTIVITY_WARMUP, align 8
  %480 = icmp eq i64 %478, %479
  br i1 %480, label %487, label %481

481:                                              ; preds = %404
  %482 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %482, i32 0, i32 1
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* @DTRACE_ACTIVITY_DRAINING, align 8
  %486 = icmp eq i64 %484, %485
  br label %487

487:                                              ; preds = %481, %404
  %488 = phi i1 [ true, %404 ], [ %486, %481 ]
  %489 = zext i1 %488 to i32
  %490 = call i32 @ASSERT(i32 %489)
  %491 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %492 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %491, i32 0, i32 1
  %493 = load i64, i64* %492, align 8
  %494 = load i64, i64* @DTRACE_ACTIVITY_WARMUP, align 8
  %495 = icmp eq i64 %493, %494
  br i1 %495, label %496, label %500

496:                                              ; preds = %487
  %497 = load i64, i64* @DTRACE_ACTIVITY_ACTIVE, align 8
  %498 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %499 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %498, i32 0, i32 1
  store i64 %497, i64* %499, align 8
  br label %500

500:                                              ; preds = %496, %487
  %501 = load i32, i32* @DTRACE_CPUALL, align 4
  %502 = load i64, i64* @dtrace_buffer_activate, align 8
  %503 = trunc i64 %502 to i32
  %504 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %505 = call i32 @dtrace_xcall(i32 %501, i32 %503, %struct.TYPE_25__* %504)
  br label %569

506:                                              ; preds = %308, %295, %268, %92
  %507 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %508 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %507, i32 0, i32 7
  %509 = load %struct.TYPE_26__*, %struct.TYPE_26__** %508, align 8
  %510 = call i32 @dtrace_buffer_free(%struct.TYPE_26__* %509)
  %511 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %512 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %511, i32 0, i32 6
  %513 = load %struct.TYPE_26__*, %struct.TYPE_26__** %512, align 8
  %514 = call i32 @dtrace_buffer_free(%struct.TYPE_26__* %513)
  %515 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %516 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 8
  store i32 %517, i32* %7, align 4
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %526

519:                                              ; preds = %506
  %520 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %521 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %520, i32 0, i32 5
  %522 = load %struct.TYPE_26__*, %struct.TYPE_26__** %521, align 8
  %523 = icmp eq %struct.TYPE_26__* %522, null
  %524 = zext i1 %523 to i32
  %525 = call i32 @ASSERT(i32 %524)
  br label %569

526:                                              ; preds = %506
  %527 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %528 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %527, i32 0, i32 5
  %529 = load %struct.TYPE_26__*, %struct.TYPE_26__** %528, align 8
  store %struct.TYPE_26__* %529, %struct.TYPE_26__** %8, align 8
  %530 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %531 = icmp ne %struct.TYPE_26__* %530, null
  %532 = zext i1 %531 to i32
  %533 = call i32 @ASSERT(i32 %532)
  store i32 0, i32* %13, align 4
  br label %534

534:                                              ; preds = %555, %526
  %535 = load i32, i32* %13, align 4
  %536 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %537 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 8
  %539 = icmp slt i32 %535, %538
  br i1 %539, label %540, label %558

540:                                              ; preds = %534
  %541 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %542 = load i32, i32* %13, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %541, i64 %543
  %545 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %544, i32 0, i32 1
  %546 = load %struct.TYPE_26__*, %struct.TYPE_26__** %545, align 8
  store %struct.TYPE_26__* %546, %struct.TYPE_26__** %9, align 8
  %547 = icmp eq %struct.TYPE_26__* %546, null
  br i1 %547, label %548, label %549

548:                                              ; preds = %540
  br label %558

549:                                              ; preds = %540
  %550 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %551 = call i32 @dtrace_buffer_free(%struct.TYPE_26__* %550)
  %552 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %553 = load i32, i32* %14, align 4
  %554 = call i32 @kmem_free(%struct.TYPE_26__* %552, i32 %553)
  br label %555

555:                                              ; preds = %549
  %556 = load i32, i32* %13, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %13, align 4
  br label %534

558:                                              ; preds = %548, %534
  %559 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %560 = load i32, i32* %7, align 4
  %561 = sext i32 %560 to i64
  %562 = mul i64 %561, 16
  %563 = trunc i64 %562 to i32
  %564 = call i32 @kmem_free(%struct.TYPE_26__* %559, i32 %563)
  %565 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %566 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %565, i32 0, i32 2
  store i32 0, i32* %566, align 8
  %567 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %568 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %567, i32 0, i32 5
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %568, align 8
  br label %569

569:                                              ; preds = %558, %519, %500, %262, %152, %121, %114, %74, %63, %46, %31
  %570 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %571 = call i32 @lck_mtx_unlock(i32* @cpu_lock)
  %572 = load i32, i32* %12, align 4
  ret i32 %572
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @dtrace_enabling_prime(%struct.TYPE_25__*) #1

declare dso_local i32 @dtrace_state_prereserve(%struct.TYPE_25__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_26__* @kmem_zalloc(i32, i32) #1

declare dso_local %struct.TYPE_25__* @dtrace_anon_grab(...) #1

declare dso_local i32 @dtrace_state_buffers(%struct.TYPE_25__*) #1

declare dso_local i32 @dtrace_dstate_init(i32*, i32) #1

declare dso_local i8* @cyclic_add(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @dtrace_gethrtime(...) #1

declare dso_local i32 @dtrace_interrupt_disable(...) #1

declare dso_local i32 @dtrace_probe(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dtrace_interrupt_enable(i32) #1

declare dso_local i32 @dtrace_xcall(i32, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @dtrace_buffer_free(%struct.TYPE_26__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
