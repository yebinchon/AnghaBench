; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_check_for_signature.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_check_for_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i8*, i32, i32, i32 }
%struct.image_params = type { i32, i32, i32, i64, i32 }
%struct.cs_blob = type { i32, i64, i32*, i32, i64 }

@EACCES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@IMGPF_SPAWN = common dso_local global i32 0, align 4
@IMGPF_VFORK_EXEC = common dso_local global i32 0, align 4
@OS_REASON_NULL = common dso_local global i64 0, align 8
@CS_HARD = common dso_local global i32 0, align 4
@CS_KILL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@DBG_BSD_PROC = common dso_local global i32 0, align 4
@BSD_PROC_EXITREASON_CREATE = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@OS_REASON_EXEC = common dso_local global i32 0, align 4
@EXEC_EXIT_REASON_SECURITY_POLICY = common dso_local global i32 0, align 4
@CS_SIGNED = common dso_local global i32 0, align 4
@OS_REASON_CODESIGNING = common dso_local global i32 0, align 4
@CODESIGNING_EXIT_REASON_TASK_ACCESS_PORT = common dso_local global i32 0, align 4
@CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG = common dso_local global i32 0, align 4
@EXEC_EXIT_REASON_TASKGATED_OTHER = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@CS_ALLOWED_MACHO = common dso_local global i32 0, align 4
@CS_ADHOC = common dso_local global i32 0, align 4
@CSSLOT_SIGNATURESLOT = common dso_local global i32 0, align 4
@CSMAGIC_BLOBWRAPPER = common dso_local global i32 0, align 4
@CS_VALID = common dso_local global i32 0, align 4
@CS_CDHASH_LEN = common dso_local global i32 0, align 4
@CS_CDHASH_STRING_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c"ignoring detached code signature on '%s' with cdhash '%s' because it is invalid, or not a simple adhoc signature.\0A\00", align 1
@platform_exec_logging = common dso_local global i64 0, align 8
@peLog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"CS Platform Exec Logging: Executing platform signed binary '%s' with cdhash %s\0A\00", align 1
@CS_KILLED = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.image_params*)* @check_for_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_signature(%struct.TYPE_9__* %0, %struct.image_params* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.image_params*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.cs_blob*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.image_params* %1, %struct.image_params** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 129, i32* %6, align 4
  %20 = load i32, i32* @EACCES, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i64, i64* @FALSE, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.image_params*, %struct.image_params** %4, align 8
  %24 = getelementptr inbounds %struct.image_params, %struct.image_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IMGPF_SPAWN, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.image_params*, %struct.image_params** %4, align 8
  %29 = getelementptr inbounds %struct.image_params, %struct.image_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IMGPF_VFORK_EXEC, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i64, i64* @OS_REASON_NULL, align 8
  store i64 %33, i64* %13, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = call i32 @proc_lock(%struct.TYPE_9__* %34)
  %36 = load %struct.image_params*, %struct.image_params** %4, align 8
  %37 = getelementptr inbounds %struct.image_params, %struct.image_params* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = call i32 @proc_unlock(%struct.TYPE_9__* %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CS_HARD, align 4
  %47 = load i32, i32* @CS_KILL, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @get_task_map(i32 %54)
  %56 = load i64, i64* @TRUE, align 8
  %57 = call i32 @vm_map_switch_protect(i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %51, %2
  %59 = load %struct.image_params*, %struct.image_params** %4, align 8
  %60 = getelementptr inbounds %struct.image_params, %struct.image_params* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load i32, i32* @DBG_BSD_PROC, align 4
  %65 = load i32, i32* @BSD_PROC_EXITREASON_CREATE, align 4
  %66 = call i32 @BSDDBG_CODE(i32 %64, i32 %65)
  %67 = load i32, i32* @DBG_FUNC_NONE, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @OS_REASON_EXEC, align 4
  %73 = load i32, i32* @EXEC_EXIT_REASON_SECURITY_POLICY, align 4
  %74 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %68, i32 %71, i32 %72, i32 %73, i32 0, i32 0)
  %75 = load i32, i32* @OS_REASON_EXEC, align 4
  %76 = load i32, i32* @EXEC_EXIT_REASON_SECURITY_POLICY, align 4
  %77 = call i64 @os_reason_create(i32 %75, i32 %76)
  store i64 %77, i64* %13, align 8
  %78 = load %struct.image_params*, %struct.image_params** %4, align 8
  %79 = getelementptr inbounds %struct.image_params, %struct.image_params* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %7, align 4
  %81 = load i64, i64* @TRUE, align 8
  store i64 %81, i64* %8, align 8
  br label %267

82:                                               ; preds = %58
  %83 = load %struct.image_params*, %struct.image_params** %4, align 8
  %84 = getelementptr inbounds %struct.image_params, %struct.image_params* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @OS_REASON_NULL, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.image_params*, %struct.image_params** %4, align 8
  %90 = getelementptr inbounds %struct.image_params, %struct.image_params* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* @OS_REASON_NULL, align 8
  %93 = load %struct.image_params*, %struct.image_params** %4, align 8
  %94 = getelementptr inbounds %struct.image_params, %struct.image_params* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* @EACCES, align 4
  store i32 %95, i32* %7, align 4
  br label %267

96:                                               ; preds = %82
  %97 = load %struct.image_params*, %struct.image_params** %4, align 8
  %98 = getelementptr inbounds %struct.image_params, %struct.image_params* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @CS_SIGNED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %267

104:                                              ; preds = %96
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @task_get_task_access_port(i32 %107, i32** %5)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 128, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %104
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @IPC_PORT_VALID(i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %135, label %115

115:                                              ; preds = %111, %104
  store i32 0, i32* %7, align 4
  %116 = load i64, i64* %10, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %115
  %119 = load i32, i32* @DBG_BSD_PROC, align 4
  %120 = load i32, i32* @BSD_PROC_EXITREASON_CREATE, align 4
  %121 = call i32 @BSDDBG_CODE(i32 %119, i32 %120)
  %122 = load i32, i32* @DBG_FUNC_NONE, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @OS_REASON_CODESIGNING, align 4
  %128 = load i32, i32* @CODESIGNING_EXIT_REASON_TASK_ACCESS_PORT, align 4
  %129 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %123, i32 %126, i32 %127, i32 %128, i32 0, i32 0)
  %130 = load i32, i32* @OS_REASON_CODESIGNING, align 4
  %131 = load i32, i32* @CODESIGNING_EXIT_REASON_TASK_ACCESS_PORT, align 4
  %132 = call i64 @os_reason_create(i32 %130, i32 %131)
  store i64 %132, i64* %13, align 8
  %133 = load i32, i32* @EACCES, align 4
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %118, %115
  br label %267

135:                                              ; preds = %111
  %136 = load i32*, i32** %5, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @__EXEC_WAITING_ON_TASKGATED_CODE_SIGNATURE_UPCALL__(i32* %136, i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  switch i32 %141, label %159 [
    i32 128, label %142
    i32 129, label %143
  ]

142:                                              ; preds = %135
  store i32 0, i32* %7, align 4
  br label %176

143:                                              ; preds = %135
  %144 = load i32, i32* @EACCES, align 4
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* @DBG_BSD_PROC, align 4
  %146 = load i32, i32* @BSD_PROC_EXITREASON_CREATE, align 4
  %147 = call i32 @BSDDBG_CODE(i32 %145, i32 %146)
  %148 = load i32, i32* @DBG_FUNC_NONE, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @OS_REASON_CODESIGNING, align 4
  %154 = load i32, i32* @CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG, align 4
  %155 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %149, i32 %152, i32 %153, i32 %154, i32 0, i32 0)
  %156 = load i32, i32* @OS_REASON_CODESIGNING, align 4
  %157 = load i32, i32* @CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG, align 4
  %158 = call i64 @os_reason_create(i32 %156, i32 %157)
  store i64 %158, i64* %13, align 8
  br label %267

159:                                              ; preds = %135
  %160 = load i32, i32* @EACCES, align 4
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* @DBG_BSD_PROC, align 4
  %162 = load i32, i32* @BSD_PROC_EXITREASON_CREATE, align 4
  %163 = call i32 @BSDDBG_CODE(i32 %161, i32 %162)
  %164 = load i32, i32* @DBG_FUNC_NONE, align 4
  %165 = or i32 %163, %164
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @OS_REASON_EXEC, align 4
  %170 = load i32, i32* @EXEC_EXIT_REASON_TASKGATED_OTHER, align 4
  %171 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %165, i32 %168, i32 %169, i32 %170, i32 0, i32 0)
  %172 = load i32, i32* @OS_REASON_EXEC, align 4
  %173 = load i32, i32* @EXEC_EXIT_REASON_TASKGATED_OTHER, align 4
  %174 = call i64 @os_reason_create(i32 %172, i32 %173)
  store i64 %174, i64* %13, align 8
  %175 = load i64, i64* @TRUE, align 8
  store i64 %175, i64* %8, align 8
  br label %267

176:                                              ; preds = %142
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @NULLVP, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %266

182:                                              ; preds = %176
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = call %struct.cs_blob* @ubc_cs_blob_get(i64 %185, i32 -1, i32 %188)
  store %struct.cs_blob* %189, %struct.cs_blob** %9, align 8
  %190 = load %struct.cs_blob*, %struct.cs_blob** %9, align 8
  %191 = icmp ne %struct.cs_blob* %190, null
  br i1 %191, label %192, label %265

192:                                              ; preds = %182
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = call i64 @ubc_cs_generation_check(i64 %195)
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %192
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.cs_blob*, %struct.cs_blob** %9, align 8
  %203 = load %struct.image_params*, %struct.image_params** %4, align 8
  %204 = call i64 @ubc_cs_blob_revalidate(i64 %201, %struct.cs_blob* %202, %struct.image_params* %203, i32 0)
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %248

206:                                              ; preds = %198, %192
  %207 = load %struct.cs_blob*, %struct.cs_blob** %9, align 8
  %208 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @CS_ALLOWED_MACHO, align 4
  %211 = and i32 %209, %210
  %212 = load i32, i32* @CS_ADHOC, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %248

214:                                              ; preds = %206
  %215 = load %struct.cs_blob*, %struct.cs_blob** %9, align 8
  %216 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = inttoptr i64 %217 to i32*
  %219 = load %struct.cs_blob*, %struct.cs_blob** %9, align 8
  %220 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @CSSLOT_SIGNATURESLOT, align 4
  %223 = load i32, i32* @CSMAGIC_BLOBWRAPPER, align 4
  %224 = call i32* @csblob_find_blob_bytes(i32* %218, i32 %221, i32 %222, i32 %223)
  %225 = icmp eq i32* %224, null
  br i1 %225, label %226, label %248

226:                                              ; preds = %214
  %227 = load %struct.cs_blob*, %struct.cs_blob** %9, align 8
  %228 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %248

231:                                              ; preds = %226
  %232 = load %struct.cs_blob*, %struct.cs_blob** %9, align 8
  %233 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = icmp eq i32* %234, null
  br i1 %235, label %236, label %248

236:                                              ; preds = %231
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %238 = call i32 @proc_lock(%struct.TYPE_9__* %237)
  %239 = load i32, i32* @CS_SIGNED, align 4
  %240 = load i32, i32* @CS_VALID, align 4
  %241 = or i32 %239, %240
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %247 = call i32 @proc_unlock(%struct.TYPE_9__* %246)
  br label %264

248:                                              ; preds = %231, %226, %214, %206, %198
  %249 = load i32, i32* @CS_CDHASH_LEN, align 4
  %250 = zext i32 %249 to i64
  %251 = call i8* @llvm.stacksave()
  store i8* %251, i8** %14, align 8
  %252 = alloca i32, i64 %250, align 16
  store i64 %250, i64* %15, align 8
  %253 = load i32, i32* @CS_CDHASH_STRING_SIZE, align 4
  %254 = zext i32 %253 to i64
  %255 = alloca i8, i64 %254, align 16
  store i64 %254, i64* %16, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %257 = call i32 @proc_getcdhash(%struct.TYPE_9__* %256, i32* %252)
  %258 = call i32 @cdhash_to_string(i8* %255, i32* %252)
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 2
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @printf(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i8* %261, i8* %255)
  %263 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %263)
  br label %264

264:                                              ; preds = %248, %236
  br label %265

265:                                              ; preds = %264, %182
  br label %266

266:                                              ; preds = %265, %176
  br label %267

267:                                              ; preds = %266, %159, %143, %134, %103, %88, %63
  %268 = load i32, i32* %7, align 4
  %269 = icmp eq i32 0, %268
  br i1 %269, label %270, label %295

270:                                              ; preds = %267
  %271 = load i64, i64* @platform_exec_logging, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %294

273:                                              ; preds = %270
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %275 = call i64 @csproc_get_platform_binary(%struct.TYPE_9__* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %294

277:                                              ; preds = %273
  %278 = load i32, i32* @CS_CDHASH_LEN, align 4
  %279 = zext i32 %278 to i64
  %280 = call i8* @llvm.stacksave()
  store i8* %280, i8** %17, align 8
  %281 = alloca i32, i64 %279, align 16
  store i64 %279, i64* %18, align 8
  %282 = load i32, i32* @CS_CDHASH_STRING_SIZE, align 4
  %283 = zext i32 %282 to i64
  %284 = alloca i8, i64 %283, align 16
  store i64 %283, i64* %19, align 8
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %286 = call i32 @proc_getcdhash(%struct.TYPE_9__* %285, i32* %281)
  %287 = call i32 @cdhash_to_string(i8* %284, i32* %281)
  %288 = load i32, i32* @peLog, align 4
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 2
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @os_log(i32 %288, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i8* %291, i8* %284)
  %293 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %293)
  br label %294

294:                                              ; preds = %277, %273, %270
  br label %339

295:                                              ; preds = %267
  %296 = load i64, i64* %8, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %304, label %298

298:                                              ; preds = %295
  %299 = load i32, i32* @CS_KILLED, align 4
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 8
  br label %304

304:                                              ; preds = %298, %295
  %305 = load i32, i32* %12, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %304
  %308 = load i32, i32* %11, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %327

310:                                              ; preds = %307, %304
  %311 = load i64, i64* %13, align 8
  %312 = load i64, i64* @OS_REASON_NULL, align 8
  %313 = icmp ne i64 %311, %312
  %314 = zext i1 %313 to i32
  %315 = call i32 @assert(i32 %314)
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.image_params*, %struct.image_params** %4, align 8
  %321 = getelementptr inbounds %struct.image_params, %struct.image_params* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @SIGKILL, align 4
  %324 = load i64, i64* %13, align 8
  %325 = call i32 @psignal_vfork_with_reason(%struct.TYPE_9__* %316, i32 %319, i32 %322, i32 %323, i64 %324)
  %326 = load i64, i64* @OS_REASON_NULL, align 8
  store i64 %326, i64* %13, align 8
  store i32 0, i32* %7, align 4
  br label %338

327:                                              ; preds = %307
  %328 = load i64, i64* %13, align 8
  %329 = load i64, i64* @OS_REASON_NULL, align 8
  %330 = icmp ne i64 %328, %329
  %331 = zext i1 %330 to i32
  %332 = call i32 @assert(i32 %331)
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %334 = load i32, i32* @SIGKILL, align 4
  %335 = load i64, i64* %13, align 8
  %336 = call i32 @psignal_with_reason(%struct.TYPE_9__* %333, i32 %334, i64 %335)
  %337 = load i64, i64* @OS_REASON_NULL, align 8
  store i64 %337, i64* %13, align 8
  br label %338

338:                                              ; preds = %327, %310
  br label %339

339:                                              ; preds = %338, %294
  %340 = load i64, i64* %13, align 8
  %341 = load i64, i64* @OS_REASON_NULL, align 8
  %342 = icmp eq i64 %340, %341
  %343 = zext i1 %342 to i32
  %344 = call i32 @assert(i32 %343)
  %345 = load i32, i32* %7, align 4
  ret i32 %345
}

declare dso_local i32 @proc_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @vm_map_switch_protect(i32, i64) #1

declare dso_local i32 @get_task_map(i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i64 @os_reason_create(i32, i32) #1

declare dso_local i32 @task_get_task_access_port(i32, i32**) #1

declare dso_local i32 @IPC_PORT_VALID(i32*) #1

declare dso_local i32 @__EXEC_WAITING_ON_TASKGATED_CODE_SIGNATURE_UPCALL__(i32*, i32) #1

declare dso_local %struct.cs_blob* @ubc_cs_blob_get(i64, i32, i32) #1

declare dso_local i64 @ubc_cs_generation_check(i64) #1

declare dso_local i64 @ubc_cs_blob_revalidate(i64, %struct.cs_blob*, %struct.image_params*, i32) #1

declare dso_local i32* @csblob_find_blob_bytes(i32*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @proc_getcdhash(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @cdhash_to_string(i8*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @csproc_get_platform_binary(%struct.TYPE_9__*) #1

declare dso_local i32 @os_log(i32, i8*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @psignal_vfork_with_reason(%struct.TYPE_9__*, i32, i32, i32, i64) #1

declare dso_local i32 @psignal_with_reason(%struct.TYPE_9__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
