; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dif_variable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_dif_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_25__*, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 (i32, i32, i32, i32, i32)* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }

@DIF_VAR_ARG0 = common dso_local global i32 0, align 4
@DIF_VAR_ARG9 = common dso_local global i32 0, align 4
@DTRACE_MSTATE_ARGS = common dso_local global i32 0, align 4
@dtrace_probeid_error = common dso_local global i32 0, align 4
@CPU_DTRACE_BADADDR = common dso_local global i32 0, align 4
@cpu_core = common dso_local global %struct.TYPE_19__* null, align 8
@CPU = common dso_local global %struct.TYPE_21__* null, align 8
@DTRACE_MSTATE_TIMESTAMP = common dso_local global i32 0, align 4
@dtrace_vtime_references = common dso_local global i32 0, align 4
@DTRACE_MSTATE_WALLTIMESTAMP = common dso_local global i32 0, align 4
@DTRACE_MSTATE_MACHTIMESTAMP = common dso_local global i32 0, align 4
@DTRACE_MSTATE_IPL = common dso_local global i32 0, align 4
@DTRACE_MSTATE_EPID = common dso_local global i32 0, align 4
@DTRACE_MSTATE_PROBE = common dso_local global i32 0, align 4
@DTRACE_MSTATE_STACKDEPTH = common dso_local global i32 0, align 4
@DTRACE_MSTATE_USTACKDEPTH = common dso_local global i32 0, align 4
@CPU_DTRACE_NOFAULT = common dso_local global i32 0, align 4
@DTRACE_MSTATE_CALLER = common dso_local global i32 0, align 4
@DTRACE_MSTATE_UCALLER = common dso_local global i32 0, align 4
@MAXCOMLEN = common dso_local global i32 0, align 4
@CPU_DTRACE_NOSCRATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"global\00", align 1
@CPU_DTRACE_ILLOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_24__*, i32, i32)* @dtrace_dif_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_dif_variable(%struct.TYPE_26__* %0, %struct.TYPE_24__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i8*], align 16
  %18 = alloca i8*, align 8
  %19 = alloca [3 x i32], align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @DIF_VAR_ARG0, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @DIF_VAR_ARG9, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @DIF_VAR_ARG0, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %9, align 4
  store i32 160, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %28, %4
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %707 [
    i32 160, label %38
    i32 134, label %133
    i32 155, label %155
    i32 137, label %164
    i32 130, label %184
    i32 129, label %191
    i32 147, label %211
    i32 158, label %231
    i32 148, label %234
    i32 153, label %259
    i32 149, label %269
    i32 139, label %281
    i32 133, label %313
    i32 159, label %356
    i32 136, label %421
    i32 141, label %454
    i32 143, label %472
    i32 144, label %488
    i32 142, label %504
    i32 146, label %520
    i32 145, label %538
    i32 138, label %556
    i32 140, label %559
    i32 154, label %565
    i32 151, label %573
    i32 128, label %605
    i32 156, label %634
    i32 157, label %634
    i32 131, label %634
    i32 132, label %634
    i32 135, label %635
    i32 150, label %653
    i32 152, label %677
  ]

38:                                               ; preds = %36
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DTRACE_MSTATE_ARGS, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp uge i64 %46, 2
  br i1 %47, label %48, label %125

48:                                               ; preds = %38
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 12
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 3
  store i32 %54, i32* %10, align 4
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 1
  store i32* %56, i32** %11, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 12
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  store %struct.TYPE_25__* %61, %struct.TYPE_25__** %12, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %64, align 8
  %66 = icmp ne i32 (i32, i32, i32, i32, i32)* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %48
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %70, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 12
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 12
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 %71(i32 %74, i32 %79, i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %13, align 4
  br label %116

88:                                               ; preds = %48
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 12
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @dtrace_probeid_error, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 5
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to %struct.TYPE_24__*
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %5, align 4
  br label %710

109:                                              ; preds = %96, %88
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @dtrace_getarg(i32 %110, i32 %111, %struct.TYPE_26__* %112, i32* %113)
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %67
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 12
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = icmp ne %struct.TYPE_20__* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %5, align 4
  br label %710

123:                                              ; preds = %116
  %124 = call i32 @ASSERT(i32 0)
  br label %125

125:                                              ; preds = %123, %38
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %5, align 4
  br label %710

133:                                              ; preds = %36
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %135 = call i32 @dtrace_priv_proc(%struct.TYPE_24__* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  br label %710

138:                                              ; preds = %133
  %139 = call i32* (...) @current_thread()
  store i32* %139, i32** %14, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load i32, i32* @CPU_DTRACE_BADADDR, align 4
  %143 = call i32 @DTRACE_CPUFLAG_SET(i32 %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** @cpu_core, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** @CPU, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  store i32 0, i32* %149, align 4
  store i32 0, i32* %5, align 4
  br label %710

150:                                              ; preds = %138
  %151 = load i32*, i32** %14, align 8
  %152 = call i32 @find_user_regs(i32* %151)
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @dtrace_getreg(i32 %152, i32 %153)
  store i32 %154, i32* %5, align 4
  br label %710

155:                                              ; preds = %36
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %157 = call i32 @dtrace_priv_kernel(%struct.TYPE_24__* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  store i32 0, i32* %5, align 4
  br label %710

160:                                              ; preds = %155
  %161 = call i32* (...) @current_thread()
  %162 = ptrtoint i32* %161 to i64
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %5, align 4
  br label %710

164:                                              ; preds = %36
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @DTRACE_MSTATE_TIMESTAMP, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %164
  %172 = call i32 (...) @dtrace_gethrtime()
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @DTRACE_MSTATE_TIMESTAMP, align 4
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %171, %164
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %5, align 4
  br label %710

184:                                              ; preds = %36
  %185 = load i32, i32* @dtrace_vtime_references, align 4
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @ASSERT(i32 %187)
  %189 = call i32* (...) @current_thread()
  %190 = call i32 @dtrace_get_thread_vtime(i32* %189)
  store i32 %190, i32* %5, align 4
  br label %710

191:                                              ; preds = %36
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @DTRACE_MSTATE_WALLTIMESTAMP, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %207, label %198

198:                                              ; preds = %191
  %199 = call i32 (...) @dtrace_gethrestime()
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 3
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* @DTRACE_MSTATE_WALLTIMESTAMP, align 4
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %198, %191
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %5, align 4
  br label %710

211:                                              ; preds = %36
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @DTRACE_MSTATE_MACHTIMESTAMP, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %211
  %219 = call i32 (...) @mach_absolute_time()
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 4
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* @DTRACE_MSTATE_MACHTIMESTAMP, align 4
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %218, %211
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  store i32 %230, i32* %5, align 4
  br label %710

231:                                              ; preds = %36
  %232 = call i32* (...) @current_thread()
  %233 = call i32 @dtrace_get_thread_last_cpu_id(i32* %232)
  store i32 %233, i32* %5, align 4
  br label %710

234:                                              ; preds = %36
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %236 = call i32 @dtrace_priv_kernel(%struct.TYPE_24__* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  store i32 0, i32* %5, align 4
  br label %710

239:                                              ; preds = %234
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @DTRACE_MSTATE_IPL, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %255, label %246

246:                                              ; preds = %239
  %247 = call i32 (...) @dtrace_getipl()
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 4
  %250 = load i32, i32* @DTRACE_MSTATE_IPL, align 4
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  br label %255

255:                                              ; preds = %246, %239
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %5, align 4
  br label %710

259:                                              ; preds = %36
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @DTRACE_MSTATE_EPID, align 4
  %264 = and i32 %262, %263
  %265 = call i32 @ASSERT(i32 %264)
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %266, i32 0, i32 6
  %268 = load i32, i32* %267, align 8
  store i32 %268, i32* %5, align 4
  br label %710

269:                                              ; preds = %36
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @DTRACE_MSTATE_PROBE, align 4
  %274 = and i32 %272, %273
  %275 = call i32 @ASSERT(i32 %274)
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 12
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  store i32 %280, i32* %5, align 4
  br label %710

281:                                              ; preds = %36
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %283 = call i32 @dtrace_priv_kernel(%struct.TYPE_24__* %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %281
  store i32 0, i32* %5, align 4
  br label %710

286:                                              ; preds = %281
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @DTRACE_MSTATE_STACKDEPTH, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %309, label %293

293:                                              ; preds = %286
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 12
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 8
  %299 = add nsw i32 %298, 3
  store i32 %299, i32* %15, align 4
  %300 = load i32, i32* %15, align 4
  %301 = call i32 @dtrace_getstackdepth(i32 %300)
  %302 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %302, i32 0, i32 7
  store i32 %301, i32* %303, align 4
  %304 = load i32, i32* @DTRACE_MSTATE_STACKDEPTH, align 4
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 8
  br label %309

309:                                              ; preds = %293, %286
  %310 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 4
  store i32 %312, i32* %5, align 4
  br label %710

313:                                              ; preds = %36
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %315 = call i32 @dtrace_priv_proc(%struct.TYPE_24__* %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  store i32 0, i32* %5, align 4
  br label %710

318:                                              ; preds = %313
  %319 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @DTRACE_MSTATE_USTACKDEPTH, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %352, label %325

325:                                              ; preds = %318
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 12
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %327, align 8
  %329 = call i32 @DTRACE_ANCHORED(%struct.TYPE_20__* %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %325
  %332 = load %struct.TYPE_21__*, %struct.TYPE_21__** @CPU, align 8
  %333 = call i32 @CPU_ON_INTR(%struct.TYPE_21__* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %331
  %336 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %336, i32 0, i32 8
  store i32 0, i32* %337, align 8
  br label %346

338:                                              ; preds = %331, %325
  %339 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %340 = call i32 @DTRACE_CPUFLAG_SET(i32 %339)
  %341 = call i32 (...) @dtrace_getustackdepth()
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %342, i32 0, i32 8
  store i32 %341, i32* %343, align 8
  %344 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %345 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %344)
  br label %346

346:                                              ; preds = %338, %335
  %347 = load i32, i32* @DTRACE_MSTATE_USTACKDEPTH, align 4
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = or i32 %350, %347
  store i32 %351, i32* %349, align 8
  br label %352

352:                                              ; preds = %346, %318
  %353 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %353, i32 0, i32 8
  %355 = load i32, i32* %354, align 8
  store i32 %355, i32* %5, align 4
  br label %710

356:                                              ; preds = %36
  %357 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %358 = call i32 @dtrace_priv_kernel(%struct.TYPE_24__* %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %361, label %360

360:                                              ; preds = %356
  store i32 0, i32* %5, align 4
  br label %710

361:                                              ; preds = %356
  %362 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @DTRACE_MSTATE_CALLER, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %416, label %368

368:                                              ; preds = %361
  %369 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %369, i32 0, i32 12
  %371 = load %struct.TYPE_20__*, %struct.TYPE_20__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 8
  %374 = add nsw i32 %373, 3
  store i32 %374, i32* %16, align 4
  %375 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %375, i32 0, i32 12
  %377 = load %struct.TYPE_20__*, %struct.TYPE_20__** %376, align 8
  %378 = call i32 @DTRACE_ANCHORED(%struct.TYPE_20__* %377)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %396, label %380

380:                                              ; preds = %368
  %381 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 0
  %382 = load i32, i32* %16, align 4
  %383 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %383, i32 0, i32 1
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 0
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = inttoptr i64 %388 to i32*
  %390 = call i32 @dtrace_getpcstack(i8** %381, i32 2, i32 %382, i32* %389)
  %391 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 1
  %392 = load i8*, i8** %391, align 8
  %393 = ptrtoint i8* %392 to i64
  %394 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %394, i32 0, i32 9
  store i64 %393, i64* %395, align 8
  br label %410

396:                                              ; preds = %368
  %397 = load i32, i32* %16, align 4
  %398 = call i64 @dtrace_caller(i32 %397)
  %399 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %399, i32 0, i32 9
  store i64 %398, i64* %400, align 8
  %401 = icmp eq i64 %398, -1
  br i1 %401, label %402, label %409

402:                                              ; preds = %396
  %403 = load i32, i32* %16, align 4
  %404 = call i32 @dtrace_getpcstack(i8** %18, i32 1, i32 %403, i32* null)
  %405 = load i8*, i8** %18, align 8
  %406 = ptrtoint i8* %405 to i64
  %407 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %408 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %407, i32 0, i32 9
  store i64 %406, i64* %408, align 8
  br label %409

409:                                              ; preds = %402, %396
  br label %410

410:                                              ; preds = %409, %380
  %411 = load i32, i32* @DTRACE_MSTATE_CALLER, align 4
  %412 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = or i32 %414, %411
  store i32 %415, i32* %413, align 8
  br label %416

416:                                              ; preds = %410, %361
  %417 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %417, i32 0, i32 9
  %419 = load i64, i64* %418, align 8
  %420 = trunc i64 %419 to i32
  store i32 %420, i32* %5, align 4
  br label %710

421:                                              ; preds = %36
  %422 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %423 = call i32 @dtrace_priv_proc(%struct.TYPE_24__* %422)
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %426, label %425

425:                                              ; preds = %421
  store i32 0, i32* %5, align 4
  br label %710

426:                                              ; preds = %421
  %427 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @DTRACE_MSTATE_UCALLER, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %450, label %433

433:                                              ; preds = %426
  %434 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 0, i32* %434, align 4
  %435 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %436 = call i32 @DTRACE_CPUFLAG_SET(i32 %435)
  %437 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %438 = call i32 @dtrace_getupcstack(i32* %437, i32 3)
  %439 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %440 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %439)
  %441 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %443, i32 0, i32 10
  store i32 %442, i32* %444, align 8
  %445 = load i32, i32* @DTRACE_MSTATE_UCALLER, align 4
  %446 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %447 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = or i32 %448, %445
  store i32 %449, i32* %447, align 8
  br label %450

450:                                              ; preds = %433, %426
  %451 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %452 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %451, i32 0, i32 10
  %453 = load i32, i32* %452, align 8
  store i32 %453, i32* %5, align 4
  br label %710

454:                                              ; preds = %36
  %455 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %456 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = load i32, i32* @DTRACE_MSTATE_PROBE, align 4
  %459 = and i32 %457, %458
  %460 = call i32 @ASSERT(i32 %459)
  %461 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %462 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %461, i32 0, i32 12
  %463 = load %struct.TYPE_20__*, %struct.TYPE_20__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %463, i32 0, i32 4
  %465 = load %struct.TYPE_25__*, %struct.TYPE_25__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = sext i32 %467 to i64
  %469 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %470 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %471 = call i32 @dtrace_dif_varstr(i64 %468, %struct.TYPE_24__* %469, %struct.TYPE_26__* %470)
  store i32 %471, i32* %5, align 4
  br label %710

472:                                              ; preds = %36
  %473 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @DTRACE_MSTATE_PROBE, align 4
  %477 = and i32 %475, %476
  %478 = call i32 @ASSERT(i32 %477)
  %479 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %480 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %479, i32 0, i32 12
  %481 = load %struct.TYPE_20__*, %struct.TYPE_20__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %481, i32 0, i32 3
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  %485 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %486 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %487 = call i32 @dtrace_dif_varstr(i64 %484, %struct.TYPE_24__* %485, %struct.TYPE_26__* %486)
  store i32 %487, i32* %5, align 4
  br label %710

488:                                              ; preds = %36
  %489 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* @DTRACE_MSTATE_PROBE, align 4
  %493 = and i32 %491, %492
  %494 = call i32 @ASSERT(i32 %493)
  %495 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %496 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %495, i32 0, i32 12
  %497 = load %struct.TYPE_20__*, %struct.TYPE_20__** %496, align 8
  %498 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %497, i32 0, i32 2
  %499 = load i32, i32* %498, align 8
  %500 = sext i32 %499 to i64
  %501 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %502 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %503 = call i32 @dtrace_dif_varstr(i64 %500, %struct.TYPE_24__* %501, %struct.TYPE_26__* %502)
  store i32 %503, i32* %5, align 4
  br label %710

504:                                              ; preds = %36
  %505 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %506 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = load i32, i32* @DTRACE_MSTATE_PROBE, align 4
  %509 = and i32 %507, %508
  %510 = call i32 @ASSERT(i32 %509)
  %511 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %511, i32 0, i32 12
  %513 = load %struct.TYPE_20__*, %struct.TYPE_20__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = sext i32 %515 to i64
  %517 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %518 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %519 = call i32 @dtrace_dif_varstr(i64 %516, %struct.TYPE_24__* %517, %struct.TYPE_26__* %518)
  store i32 %519, i32* %5, align 4
  br label %710

520:                                              ; preds = %36
  %521 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %522 = call i32 @dtrace_priv_proc_relaxed(%struct.TYPE_24__* %521)
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %525, label %524

524:                                              ; preds = %520
  store i32 0, i32* %5, align 4
  br label %710

525:                                              ; preds = %520
  %526 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %527 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %526, i32 0, i32 12
  %528 = load %struct.TYPE_20__*, %struct.TYPE_20__** %527, align 8
  %529 = call i32 @DTRACE_ANCHORED(%struct.TYPE_20__* %528)
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %536

531:                                              ; preds = %525
  %532 = load %struct.TYPE_21__*, %struct.TYPE_21__** @CPU, align 8
  %533 = call i32 @CPU_ON_INTR(%struct.TYPE_21__* %532)
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %536

535:                                              ; preds = %531
  store i32 0, i32* %5, align 4
  br label %710

536:                                              ; preds = %531, %525
  %537 = call i32 (...) @dtrace_proc_selfpid()
  store i32 %537, i32* %5, align 4
  br label %710

538:                                              ; preds = %36
  %539 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %540 = call i32 @dtrace_priv_proc_relaxed(%struct.TYPE_24__* %539)
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %543, label %542

542:                                              ; preds = %538
  store i32 0, i32* %5, align 4
  br label %710

543:                                              ; preds = %538
  %544 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %545 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %544, i32 0, i32 12
  %546 = load %struct.TYPE_20__*, %struct.TYPE_20__** %545, align 8
  %547 = call i32 @DTRACE_ANCHORED(%struct.TYPE_20__* %546)
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %554

549:                                              ; preds = %543
  %550 = load %struct.TYPE_21__*, %struct.TYPE_21__** @CPU, align 8
  %551 = call i32 @CPU_ON_INTR(%struct.TYPE_21__* %550)
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %554

553:                                              ; preds = %549
  store i32 0, i32* %5, align 4
  br label %710

554:                                              ; preds = %549, %543
  %555 = call i32 (...) @dtrace_proc_selfppid()
  store i32 %555, i32* %5, align 4
  br label %710

556:                                              ; preds = %36
  %557 = call i32* (...) @current_thread()
  %558 = call i32 @thread_tid(i32* %557)
  store i32 %558, i32* %5, align 4
  br label %710

559:                                              ; preds = %36
  %560 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %561 = call i32 @dtrace_priv_proc(%struct.TYPE_24__* %560)
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %564, label %563

563:                                              ; preds = %559
  store i32 0, i32* %5, align 4
  br label %710

564:                                              ; preds = %559
  store i32 0, i32* %5, align 4
  br label %710

565:                                              ; preds = %36
  %566 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %567 = call i32 @dtrace_priv_proc(%struct.TYPE_24__* %566)
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %570, label %569

569:                                              ; preds = %565
  store i32 0, i32* %5, align 4
  br label %710

570:                                              ; preds = %565
  %571 = call i32* (...) @current_thread()
  %572 = call i32 @thread_dispatchqaddr(i32* %571)
  store i32 %572, i32* %5, align 4
  br label %710

573:                                              ; preds = %36
  %574 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %575 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %574, i32 0, i32 11
  %576 = load i64, i64* %575, align 8
  %577 = inttoptr i64 %576 to i8*
  store i8* %577, i8** %20, align 8
  %578 = load i32, i32* @MAXCOMLEN, align 4
  %579 = add nsw i32 %578, 1
  %580 = sext i32 %579 to i64
  store i64 %580, i64* %21, align 8
  %581 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %582 = load i64, i64* %21, align 8
  %583 = call i32 @DTRACE_INSCRATCH(%struct.TYPE_26__* %581, i64 %582)
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %588, label %585

585:                                              ; preds = %573
  %586 = load i32, i32* @CPU_DTRACE_NOSCRATCH, align 4
  %587 = call i32 @DTRACE_CPUFLAG_SET(i32 %586)
  store i32 0, i32* %5, align 4
  br label %710

588:                                              ; preds = %573
  %589 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %590 = call i32 @dtrace_priv_proc_relaxed(%struct.TYPE_24__* %589)
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %593, label %592

592:                                              ; preds = %588
  store i32 0, i32* %5, align 4
  br label %710

593:                                              ; preds = %588
  %594 = load i64, i64* %21, align 8
  %595 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %596 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %595, i32 0, i32 11
  %597 = load i64, i64* %596, align 8
  %598 = add i64 %597, %594
  store i64 %598, i64* %596, align 8
  %599 = load i8*, i8** %20, align 8
  %600 = load i64, i64* %21, align 8
  %601 = call i32 @proc_selfname(i8* %599, i64 %600)
  %602 = load i8*, i8** %20, align 8
  %603 = ptrtoint i8* %602 to i64
  %604 = trunc i64 %603 to i32
  store i32 %604, i32* %5, align 4
  br label %710

605:                                              ; preds = %36
  %606 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %607 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %606, i32 0, i32 11
  %608 = load i64, i64* %607, align 8
  %609 = inttoptr i64 %608 to i8*
  store i8* %609, i8** %22, align 8
  store i64 7, i64* %23, align 8
  %610 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %611 = call i32 @dtrace_priv_proc(%struct.TYPE_24__* %610)
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %614, label %613

613:                                              ; preds = %605
  store i32 0, i32* %5, align 4
  br label %710

614:                                              ; preds = %605
  %615 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %616 = load i64, i64* %23, align 8
  %617 = call i32 @DTRACE_INSCRATCH(%struct.TYPE_26__* %615, i64 %616)
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %622, label %619

619:                                              ; preds = %614
  %620 = load i32, i32* @CPU_DTRACE_NOSCRATCH, align 4
  %621 = call i32 @DTRACE_CPUFLAG_SET(i32 %620)
  store i32 0, i32* %5, align 4
  br label %710

622:                                              ; preds = %614
  %623 = load i64, i64* %23, align 8
  %624 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %625 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %624, i32 0, i32 11
  %626 = load i64, i64* %625, align 8
  %627 = add i64 %626, %623
  store i64 %627, i64* %625, align 8
  %628 = load i8*, i8** %22, align 8
  %629 = load i64, i64* %23, align 8
  %630 = call i32 @strlcpy(i8* %628, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %629)
  %631 = load i8*, i8** %22, align 8
  %632 = ptrtoint i8* %631 to i64
  %633 = trunc i64 %632 to i32
  store i32 %633, i32* %5, align 4
  br label %710

634:                                              ; preds = %36, %36, %36, %36
  store i32 0, i32* %5, align 4
  br label %710

635:                                              ; preds = %36
  %636 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %637 = call i32 @dtrace_priv_proc_relaxed(%struct.TYPE_24__* %636)
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %640, label %639

639:                                              ; preds = %635
  store i32 0, i32* %5, align 4
  br label %710

640:                                              ; preds = %635
  %641 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %642 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %641, i32 0, i32 12
  %643 = load %struct.TYPE_20__*, %struct.TYPE_20__** %642, align 8
  %644 = call i32 @DTRACE_ANCHORED(%struct.TYPE_20__* %643)
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %651

646:                                              ; preds = %640
  %647 = load %struct.TYPE_21__*, %struct.TYPE_21__** @CPU, align 8
  %648 = call i32 @CPU_ON_INTR(%struct.TYPE_21__* %647)
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %650, label %651

650:                                              ; preds = %646
  store i32 0, i32* %5, align 4
  br label %710

651:                                              ; preds = %646, %640
  %652 = call i32 (...) @dtrace_proc_selfruid()
  store i32 %652, i32* %5, align 4
  br label %710

653:                                              ; preds = %36
  %654 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %655 = call i32 @dtrace_priv_proc(%struct.TYPE_24__* %654)
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %658, label %657

657:                                              ; preds = %653
  store i32 0, i32* %5, align 4
  br label %710

658:                                              ; preds = %653
  %659 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %660 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %659, i32 0, i32 12
  %661 = load %struct.TYPE_20__*, %struct.TYPE_20__** %660, align 8
  %662 = call i32 @DTRACE_ANCHORED(%struct.TYPE_20__* %661)
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %669

664:                                              ; preds = %658
  %665 = load %struct.TYPE_21__*, %struct.TYPE_21__** @CPU, align 8
  %666 = call i32 @CPU_ON_INTR(%struct.TYPE_21__* %665)
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %669

668:                                              ; preds = %664
  store i32 0, i32* %5, align 4
  br label %710

669:                                              ; preds = %664, %658
  %670 = call i32* (...) @dtrace_CRED()
  %671 = icmp ne i32* %670, null
  br i1 %671, label %672, label %674

672:                                              ; preds = %669
  %673 = call i32 (...) @kauth_getgid()
  store i32 %673, i32* %5, align 4
  br label %710

674:                                              ; preds = %669
  %675 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %676 = call i32 @DTRACE_CPUFLAG_SET(i32 %675)
  store i32 -1, i32* %5, align 4
  br label %710

677:                                              ; preds = %36
  %678 = call i32* (...) @current_thread()
  %679 = call i32 @get_bsdthread_info(i32* %678)
  %680 = sext i32 %679 to i64
  %681 = inttoptr i64 %680 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %681, %struct.TYPE_23__** %24, align 8
  %682 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %683 = call i32 @dtrace_priv_proc(%struct.TYPE_24__* %682)
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %686, label %685

685:                                              ; preds = %677
  store i32 0, i32* %5, align 4
  br label %710

686:                                              ; preds = %677
  %687 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %688 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %687, i32 0, i32 12
  %689 = load %struct.TYPE_20__*, %struct.TYPE_20__** %688, align 8
  %690 = call i32 @DTRACE_ANCHORED(%struct.TYPE_20__* %689)
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %692, label %697

692:                                              ; preds = %686
  %693 = load %struct.TYPE_21__*, %struct.TYPE_21__** @CPU, align 8
  %694 = call i32 @CPU_ON_INTR(%struct.TYPE_21__* %693)
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %697

696:                                              ; preds = %692
  store i32 0, i32* %5, align 4
  br label %710

697:                                              ; preds = %692, %686
  %698 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %699 = icmp ne %struct.TYPE_23__* %698, null
  br i1 %699, label %700, label %704

700:                                              ; preds = %697
  %701 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %702 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %701, i32 0, i32 0
  %703 = load i32, i32* %702, align 4
  store i32 %703, i32* %5, align 4
  br label %710

704:                                              ; preds = %697
  %705 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %706 = call i32 @DTRACE_CPUFLAG_SET(i32 %705)
  store i32 -1, i32* %5, align 4
  br label %710

707:                                              ; preds = %36
  %708 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %709 = call i32 @DTRACE_CPUFLAG_SET(i32 %708)
  store i32 0, i32* %5, align 4
  br label %710

710:                                              ; preds = %707, %704, %700, %696, %685, %674, %672, %668, %657, %651, %650, %639, %634, %622, %619, %613, %593, %592, %585, %570, %569, %564, %563, %556, %554, %553, %542, %536, %535, %524, %504, %488, %472, %454, %450, %425, %416, %360, %352, %317, %309, %285, %269, %259, %255, %238, %231, %227, %207, %184, %180, %160, %159, %150, %141, %137, %125, %121, %99
  %711 = load i32, i32* %5, align 4
  ret i32 %711
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_getarg(i32, i32, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @dtrace_priv_proc(%struct.TYPE_24__*) #1

declare dso_local i32* @current_thread(...) #1

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

declare dso_local i32 @dtrace_getreg(i32, i32) #1

declare dso_local i32 @find_user_regs(i32*) #1

declare dso_local i32 @dtrace_priv_kernel(%struct.TYPE_24__*) #1

declare dso_local i32 @dtrace_gethrtime(...) #1

declare dso_local i32 @dtrace_get_thread_vtime(i32*) #1

declare dso_local i32 @dtrace_gethrestime(...) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @dtrace_get_thread_last_cpu_id(i32*) #1

declare dso_local i32 @dtrace_getipl(...) #1

declare dso_local i32 @dtrace_getstackdepth(i32) #1

declare dso_local i32 @DTRACE_ANCHORED(%struct.TYPE_20__*) #1

declare dso_local i32 @CPU_ON_INTR(%struct.TYPE_21__*) #1

declare dso_local i32 @dtrace_getustackdepth(...) #1

declare dso_local i32 @DTRACE_CPUFLAG_CLEAR(i32) #1

declare dso_local i32 @dtrace_getpcstack(i8**, i32, i32, i32*) #1

declare dso_local i64 @dtrace_caller(i32) #1

declare dso_local i32 @dtrace_getupcstack(i32*, i32) #1

declare dso_local i32 @dtrace_dif_varstr(i64, %struct.TYPE_24__*, %struct.TYPE_26__*) #1

declare dso_local i32 @dtrace_priv_proc_relaxed(%struct.TYPE_24__*) #1

declare dso_local i32 @dtrace_proc_selfpid(...) #1

declare dso_local i32 @dtrace_proc_selfppid(...) #1

declare dso_local i32 @thread_tid(i32*) #1

declare dso_local i32 @thread_dispatchqaddr(i32*) #1

declare dso_local i32 @DTRACE_INSCRATCH(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @proc_selfname(i8*, i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @dtrace_proc_selfruid(...) #1

declare dso_local i32* @dtrace_CRED(...) #1

declare dso_local i32 @kauth_getgid(...) #1

declare dso_local i32 @get_bsdthread_info(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
