; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_top_process_aggressive.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_kill_top_process_aggressive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i8*, i32, i32 }
%struct.TYPE_14__ = type { i64 }

@PROC_NULL = common dso_local global %struct.TYPE_13__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@OS_REASON_NULL = common dso_local global i64 0, align 8
@DBG_BSD_MEMSTAT = common dso_local global i32 0, align 4
@BSD_MEMSTAT_JETSAM = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@memorystatus_available_pages = common dso_local global i64 0, align 8
@JETSAM_PRIORITY_FOREGROUND = common dso_local global i64 0, align 8
@JETSAM_SORT_DEFAULT = common dso_local global i32 0, align 4
@OS_REASON_JETSAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"memorystatus_kill_top_process_aggressive: failed to allocate exit reason\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@P_LIST_EXITED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"memorystatus: aggressive%d: rewinding band %d, %s(%d) moved or exiting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@P_MEMSTAT_ERROR = common dso_local global i32 0, align 4
@P_MEMSTAT_TERMINATED = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot_count = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"memorystatus: aggressive%d: skipping %d [%s] (exiting?)\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"%lu.%03d memorystatus: %s%d pid %d [%s] (%s %d) - memorystatus_available_pages: %llu\0A\00", align 1
@JETSAM_PRIORITY_IDLE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"killing_idle_process_aggressive\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"killing_top_process_aggressive\00", align 1
@memorystatus_kill_cause_name = common dso_local global i32* null, align 8
@memorystatus_level = common dso_local global i32 0, align 4
@memorystatus_aggressive_jetsam_lenient = common dso_local global i64 0, align 8
@AGGRESSIVE_JETSAM_LENIENT_MODE_THRESHOLD = common dso_local global i32 0, align 4
@memorystatus_jetsam_snapshot = common dso_local global %struct.TYPE_14__* null, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@P_MEMSTAT_DIAG_SUSPENDED = common dso_local global i32 0, align 4
@P_MEMSTAT_FOREGROUND = common dso_local global i32 0, align 4
@kPolicyDiagnoseActive = common dso_local global i32 0, align 4
@memorystatus_jetsam_policy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i64, i64*)* @memorystatus_kill_top_process_aggressive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @memorystatus_kill_top_process_aggressive(i64 %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_13__*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** @PROC_NULL, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %11, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @PROC_NULL, align 8
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %12, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %29 = load i64, i64* @OS_REASON_NULL, align 8
  store i64 %29, i64* %23, align 8
  %30 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %31 = load i32, i32* @BSD_MEMSTAT_JETSAM, align 4
  %32 = call i32 @BSDDBG_CODE(i32 %30, i32 %31)
  %33 = load i32, i32* @DBG_FUNC_START, align 4
  %34 = or i32 %32, %33
  %35 = load i64, i64* @memorystatus_available_pages, align 8
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %34, i64 %35, i32 %37, i32 0, i32 0, i32 0)
  %39 = load i64, i64* @JETSAM_PRIORITY_FOREGROUND, align 8
  %40 = load i32, i32* @JETSAM_SORT_DEFAULT, align 4
  %41 = call i32 @memorystatus_sort_bucket(i64 %39, i32 %40)
  %42 = load i32, i32* @OS_REASON_JETSAM, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @os_reason_create(i32 %42, i64 %43)
  store i64 %44, i64* %23, align 8
  %45 = load i64, i64* %23, align 8
  %46 = load i64, i64* @OS_REASON_NULL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %4
  %51 = call i32 (...) @proc_list_lock()
  %52 = load i64, i64* @TRUE, align 8
  %53 = call %struct.TYPE_13__* @memorystatus_get_first_proc_locked(i32* %16, i64 %52)
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %12, align 8
  br label %54

54:                                               ; preds = %284, %259, %120, %85, %50
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %56 = icmp ne %struct.TYPE_13__* %55, null
  br i1 %56, label %57, label %287

57:                                               ; preds = %54
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @P_LIST_EXITED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %64, %57
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  br label %85

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i8* [ %83, %80 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %84 ]
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i8*, i32, i32, i8*, ...) @MEMORYSTATUS_DEBUG(i32 1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73, i8* %86, i32 %89)
  %91 = load i64, i64* @TRUE, align 8
  %92 = call %struct.TYPE_13__* @memorystatus_get_first_proc_locked(i32* %16, i64 %91)
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %12, align 8
  br label %54

93:                                               ; preds = %64
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %94, %struct.TYPE_13__** %11, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %96 = load i64, i64* @TRUE, align 8
  %97 = call %struct.TYPE_13__* @memorystatus_get_next_proc_locked(i32* %16, %struct.TYPE_13__* %95, i64 %96)
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %12, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = call i32 (...) @proc_list_unlock()
  br label %289

105:                                              ; preds = %93
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %10, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %17, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @P_MEMSTAT_ERROR, align 4
  %116 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %105
  br label %54

121:                                              ; preds = %105
  %122 = load i64, i64* @memorystatus_jetsam_snapshot_count, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = call i32 @memorystatus_init_jetsam_snapshot_locked(i32* null, i32 0)
  %126 = load i64, i64* @TRUE, align 8
  store i64 %126, i64* %13, align 8
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = call i32 (...) @mach_absolute_time()
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %19, align 4
  %135 = call i32 @absolutetime_to_microtime(i32 %134, i64* %20, i32* %21)
  %136 = load i32, i32* %21, align 4
  %137 = sdiv i32 %136, 1000
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %22, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %140 = load i64, i64* %6, align 8
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @memorystatus_update_jetsam_snapshot_entry_locked(%struct.TYPE_13__* %139, i64 %140, i32 %141)
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %144 = call %struct.TYPE_13__* @proc_ref_locked(%struct.TYPE_13__* %143)
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %146 = icmp eq %struct.TYPE_13__* %144, %145
  br i1 %146, label %147, label %284

147:                                              ; preds = %127
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %149 = icmp ne %struct.TYPE_13__* %148, null
  br i1 %149, label %150, label %185

150:                                              ; preds = %147
  br label %151

151:                                              ; preds = %177, %150
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %153 = icmp ne %struct.TYPE_13__* %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %156 = call %struct.TYPE_13__* @proc_ref_locked(%struct.TYPE_13__* %155)
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %158 = icmp ne %struct.TYPE_13__* %156, %157
  br label %159

159:                                              ; preds = %154, %151
  %160 = phi i1 [ false, %151 ], [ %158, %154 ]
  br i1 %160, label %161, label %184

161:                                              ; preds = %159
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %161
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  br label %177

176:                                              ; preds = %161
  br label %177

177:                                              ; preds = %176, %172
  %178 = phi i8* [ %175, %172 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %176 ]
  %179 = call i32 (i32, i8*, i32, i32, i8*, ...) @MEMORYSTATUS_DEBUG(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %162, i32 %165, i8* %178)
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %180, %struct.TYPE_13__** %24, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %182 = load i64, i64* @TRUE, align 8
  %183 = call %struct.TYPE_13__* @memorystatus_get_next_proc_locked(i32* %16, %struct.TYPE_13__* %181, i64 %182)
  store %struct.TYPE_13__* %183, %struct.TYPE_13__** %12, align 8
  br label %151

184:                                              ; preds = %159
  br label %185

185:                                              ; preds = %184, %147
  %186 = call i32 (...) @proc_list_unlock()
  %187 = load i64, i64* %20, align 8
  %188 = load i64, i64* %22, align 8
  %189 = load i64, i64* %17, align 8
  %190 = load i64, i64* @JETSAM_PRIORITY_IDLE, align 8
  %191 = icmp eq i64 %189, %190
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0)
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %10, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %185
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 2
  %205 = load i8*, i8** %204, align 8
  br label %207

206:                                              ; preds = %185
  br label %207

207:                                              ; preds = %206, %202
  %208 = phi i8* [ %205, %202 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %206 ]
  %209 = load i32*, i32** @memorystatus_kill_cause_name, align 8
  %210 = load i64, i64* %6, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i64, i64* %17, align 8
  %214 = load i64, i64* @memorystatus_available_pages, align 8
  %215 = trunc i64 %214 to i32
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i64 0, i64 0), i64 %187, i64 %188, i8* %193, i32 %194, i32 %195, i8* %208, i32 %212, i64 %213, i32 %215)
  %217 = load i32, i32* @memorystatus_level, align 4
  store i32 %217, i32* %18, align 4
  %218 = load i64, i64* %23, align 8
  %219 = call i32 @os_reason_ref(i64 %218)
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %221 = load i64, i64* %6, align 8
  %222 = load i64, i64* %23, align 8
  %223 = call i64 @memorystatus_do_kill(%struct.TYPE_13__* %220, i64 %221, i64 %222)
  store i64 %223, i64* %14, align 8
  %224 = load i64, i64* %14, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %260

226:                                              ; preds = %207
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %228 = call i32 @proc_rele(%struct.TYPE_13__* %227)
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %15, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  %231 = load i64, i64* @FALSE, align 8
  store i64 %231, i64* %14, align 8
  %232 = call i32 (...) @proc_list_lock()
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %234 = icmp ne %struct.TYPE_13__* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %226
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %237 = call i32 @proc_rele_locked(%struct.TYPE_13__* %236)
  br label %238

238:                                              ; preds = %235, %226
  %239 = load i64, i64* %17, align 8
  %240 = load i64, i64* @JETSAM_PRIORITY_FOREGROUND, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %259

242:                                              ; preds = %238
  %243 = load i64, i64* @memorystatus_aggressive_jetsam_lenient, align 8
  %244 = load i64, i64* @TRUE, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %259

246:                                              ; preds = %242
  %247 = load i32, i32* @memorystatus_level, align 4
  %248 = load i32, i32* %18, align 4
  %249 = icmp ugt i32 %247, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %246
  %251 = load i32, i32* @memorystatus_level, align 4
  %252 = load i32, i32* %18, align 4
  %253 = sub i32 %251, %252
  %254 = load i32, i32* @AGGRESSIVE_JETSAM_LENIENT_MODE_THRESHOLD, align 4
  %255 = icmp uge i32 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %250
  %257 = load i64, i64* @FALSE, align 8
  store i64 %257, i64* @memorystatus_aggressive_jetsam_lenient, align 8
  br label %287

258:                                              ; preds = %250, %246
  br label %259

259:                                              ; preds = %258, %242, %238
  br label %54

260:                                              ; preds = %207
  %261 = call i32 (...) @proc_list_lock()
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %263 = call i32 @proc_rele_locked(%struct.TYPE_13__* %262)
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %265 = icmp ne %struct.TYPE_13__* %264, null
  br i1 %265, label %266, label %269

266:                                              ; preds = %260
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %268 = call i32 @proc_rele_locked(%struct.TYPE_13__* %267)
  br label %269

269:                                              ; preds = %266, %260
  %270 = load i32, i32* @P_MEMSTAT_TERMINATED, align 4
  %271 = xor i32 %270, -1
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = and i32 %274, %271
  store i32 %275, i32* %273, align 4
  %276 = load i32, i32* @P_MEMSTAT_ERROR, align 4
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 4
  %281 = load i64*, i64** %9, align 8
  %282 = load i64, i64* %281, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %281, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  br label %284

284:                                              ; preds = %269, %127
  %285 = load i64, i64* @TRUE, align 8
  %286 = call %struct.TYPE_13__* @memorystatus_get_first_proc_locked(i32* %16, i64 %285)
  store %struct.TYPE_13__* %286, %struct.TYPE_13__** %12, align 8
  br label %54

287:                                              ; preds = %256, %54
  %288 = call i32 (...) @proc_list_unlock()
  br label %289

289:                                              ; preds = %287, %103
  %290 = load i64, i64* %23, align 8
  %291 = call i32 @os_reason_free(i64 %290)
  %292 = load i64, i64* %13, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %302

294:                                              ; preds = %289
  %295 = load i32, i32* %15, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %294
  %298 = call i32 (...) @proc_list_lock()
  store i64 0, i64* @memorystatus_jetsam_snapshot_count, align 8
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** @memorystatus_jetsam_snapshot, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 0
  store i64 0, i64* %300, align 8
  %301 = call i32 (...) @proc_list_unlock()
  br label %302

302:                                              ; preds = %297, %294, %289
  %303 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %304 = load i32, i32* @BSD_MEMSTAT_JETSAM, align 4
  %305 = call i32 @BSDDBG_CODE(i32 %303, i32 %304)
  %306 = load i32, i32* @DBG_FUNC_END, align 4
  %307 = or i32 %305, %306
  %308 = load i64, i64* @memorystatus_available_pages, align 8
  %309 = load i64, i64* %14, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %302
  %312 = load i32, i32* %10, align 4
  br label %314

313:                                              ; preds = %302
  br label %314

314:                                              ; preds = %313, %311
  %315 = phi i32 [ %312, %311 ], [ 0, %313 ]
  %316 = load i32, i32* %15, align 4
  %317 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %307, i64 %308, i32 %315, i32 %316, i32 0, i32 0)
  %318 = load i32, i32* %15, align 4
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %314
  %321 = load i64, i64* @TRUE, align 8
  store i64 %321, i64* %5, align 8
  br label %324

322:                                              ; preds = %314
  %323 = load i64, i64* @FALSE, align 8
  store i64 %323, i64* %5, align 8
  br label %324

324:                                              ; preds = %322, %320
  %325 = load i64, i64* %5, align 8
  ret i64 %325
}

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @memorystatus_sort_bucket(i64, i32) #1

declare dso_local i64 @os_reason_create(i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local %struct.TYPE_13__* @memorystatus_get_first_proc_locked(i32*, i64) #1

declare dso_local i32 @MEMORYSTATUS_DEBUG(i32, i8*, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_13__* @memorystatus_get_next_proc_locked(i32*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @memorystatus_init_jetsam_snapshot_locked(i32*, i32) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @absolutetime_to_microtime(i32, i64*, i32*) #1

declare dso_local i32 @memorystatus_update_jetsam_snapshot_entry_locked(%struct.TYPE_13__*, i64, i32) #1

declare dso_local %struct.TYPE_13__* @proc_ref_locked(%struct.TYPE_13__*) #1

declare dso_local i32 @os_reason_ref(i64) #1

declare dso_local i64 @memorystatus_do_kill(%struct.TYPE_13__*, i64, i64) #1

declare dso_local i32 @proc_rele(%struct.TYPE_13__*) #1

declare dso_local i32 @proc_rele_locked(%struct.TYPE_13__*) #1

declare dso_local i32 @os_reason_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
