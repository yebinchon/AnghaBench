; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_fork.c_fork1.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_fork.c_fork1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i8*, i8*, i32, i32, i32, i32, i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i8*, %struct.TYPE_19__* }

@nprocs = common dso_local global i32 0, align 4
@maxproc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@RLIMIT_NPROC = common dso_local global i64 0, align 8
@UT_VFORK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fork1 called within vfork by %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pid = common dso_local global i32 0, align 4
@P_LINVFORK = common dso_local global i32 0, align 4
@SRUN = common dso_local global i32 0, align 4
@UT_VFORKING = common dso_local global i32 0, align 4
@UT_SETUID = common dso_local global i32 0, align 4
@UT_WASSETUID = common dso_local global i32 0, align 4
@AFORK = common dso_local global i8* null, align 8
@P_LPPWAIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"fork1 called with unknown kind %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fork1(%struct.TYPE_19__* %0, i32** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = call i32 (...) @current_thread()
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @get_bsdthread_info(i32* %21)
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = call i64 (...) @kauth_getruid()
  store i64 %25, i64* %14, align 8
  %26 = call i32 (...) @proc_list_lock()
  %27 = load i32, i32* @nprocs, align 4
  %28 = load i32, i32* @maxproc, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp sge i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i64, i64* %14, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31, %4
  %35 = load i32, i32* @nprocs, align 4
  %36 = load i32, i32* @maxproc, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34, %31
  %39 = call i32 (...) @proc_list_unlock()
  %40 = call i32 @tablefull(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EAGAIN, align 4
  store i32 %41, i32* %5, align 4
  br label %238

42:                                               ; preds = %34
  %43 = call i32 (...) @proc_list_unlock()
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @chgproccnt(i64 %44, i32 1)
  store i32 %45, i32* %15, align 4
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = load i64, i64* @RLIMIT_NPROC, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %50, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @EAGAIN, align 4
  store i32 %60, i32* %16, align 4
  br label %230

61:                                               ; preds = %48, %42
  %62 = load i32, i32* %8, align 4
  switch i32 %62, label %224 [
    i32 128, label %63
    i32 129, label %164
    i32 130, label %165
  ]

63:                                               ; preds = %61
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @UT_VFORK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %16, align 4
  br label %230

76:                                               ; preds = %63
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %78 = call i32 @proc_vfork_begin(%struct.TYPE_19__* %77)
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %80 = call %struct.TYPE_19__* @forkproc(%struct.TYPE_19__* %79)
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %12, align 8
  %81 = icmp eq %struct.TYPE_19__* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = call i32 @proc_vfork_end(%struct.TYPE_19__* %83)
  %85 = load i32, i32* @ENOMEM, align 4
  store i32 %85, i32* %16, align 4
  br label %230

86:                                               ; preds = %76
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %88 = call i32 @set_security_token(%struct.TYPE_19__* %87)
  %89 = load i32, i32* @pid, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @AUDIT_ARG(i32 %89, i32 %92)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @P_LINVFORK, align 4
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 7
  store i32* %104, i32** %106, align 8
  %107 = load i32, i32* @SRUN, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @UT_VFORK, align 4
  %111 = load i32, i32* @UT_VFORKING, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 4
  store %struct.TYPE_19__* %117, %struct.TYPE_19__** %119, align 8
  %120 = call i64 (...) @act_thread_csave()
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @UT_SETUID, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %86
  %136 = load i32, i32* @UT_WASSETUID, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load i32, i32* @UT_SETUID, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %135, %86
  %148 = load i32*, i32** %10, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @thread_set_child(i32* %148, i32 %151)
  %153 = load i8*, i8** @AFORK, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load i32, i32* @P_LPPWAIT, align 4
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %163 = call i32 @pinsertchild(%struct.TYPE_19__* %161, %struct.TYPE_19__* %162)
  br label %227

164:                                              ; preds = %61
  store i32 1, i32* %17, align 4
  br label %165

165:                                              ; preds = %61, %164
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i32*, i32** %9, align 8
  br label %174

173:                                              ; preds = %165
  br label %174

174:                                              ; preds = %173, %171
  %175 = phi i32* [ %172, %171 ], [ null, %173 ]
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %177 = load i32, i32* %17, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i32, i32* @FALSE, align 4
  br label %183

181:                                              ; preds = %174
  %182 = load i32, i32* @TRUE, align 4
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i32 [ %180, %179 ], [ %182, %181 ]
  %185 = load i32, i32* @FALSE, align 4
  %186 = call i32* @cloneproc(i32 %168, i32* %175, %struct.TYPE_19__* %176, i32 %184, i32 %185)
  store i32* %186, i32** %13, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load i32, i32* @EAGAIN, align 4
  store i32 %189, i32* %16, align 4
  br label %230

190:                                              ; preds = %183
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load i32*, i32** %13, align 8
  %195 = call i32 @thread_dup(i32* %194)
  br label %196

196:                                              ; preds = %193, %190
  %197 = load i32*, i32** %13, align 8
  %198 = call i32 @get_threadtask(i32* %197)
  %199 = call i32 @get_bsdtask_info(i32 %198)
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %201, %struct.TYPE_19__** %12, align 8
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %203 = call i32 @set_security_token(%struct.TYPE_19__* %202)
  %204 = load i32, i32* @pid, align 4
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @AUDIT_ARG(i32 %204, i32 %207)
  %209 = load i32*, i32** %13, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @thread_set_child(i32* %209, i32 %212)
  %214 = load i8*, i8** @AFORK, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 2
  store i8* %214, i8** %216, align 8
  %217 = load i32, i32* %17, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %196
  %220 = load i32*, i32** %13, align 8
  %221 = call i32 @get_threadtask(i32* %220)
  %222 = call i32 @task_bank_init(i32 %221)
  br label %223

223:                                              ; preds = %219, %196
  br label %227

224:                                              ; preds = %61
  %225 = load i32, i32* %8, align 4
  %226 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %224, %223, %147
  %228 = load i32*, i32** %13, align 8
  %229 = load i32**, i32*** %7, align 8
  store i32* %228, i32** %229, align 8
  br label %230

230:                                              ; preds = %227, %188, %82, %70, %59
  %231 = load i32, i32* %16, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i64, i64* %14, align 8
  %235 = call i32 @chgproccnt(i64 %234, i32 -1)
  br label %236

236:                                              ; preds = %233, %230
  %237 = load i32, i32* %16, align 4
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %236, %38
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @get_bsdthread_info(i32*) #1

declare dso_local i64 @kauth_getruid(...) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @tablefull(i8*) #1

declare dso_local i32 @chgproccnt(i64, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @proc_vfork_begin(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @forkproc(%struct.TYPE_19__*) #1

declare dso_local i32 @proc_vfork_end(%struct.TYPE_19__*) #1

declare dso_local i32 @set_security_token(%struct.TYPE_19__*) #1

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i64 @act_thread_csave(...) #1

declare dso_local i32 @thread_set_child(i32*, i32) #1

declare dso_local i32 @pinsertchild(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32* @cloneproc(i32, i32*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @thread_dup(i32*) #1

declare dso_local i32 @get_bsdtask_info(i32) #1

declare dso_local i32 @get_threadtask(i32*) #1

declare dso_local i32 @task_bank_init(i32) #1

declare dso_local i32 @panic(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
