; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/AT386/extr_model_dep.c_RecordPanicStackshot.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/AT386/extr_model_dep.c_RecordPanicStackshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i8* }

@begun_panic_stackshot = common dso_local global i64 0, align 8
@panic_info = common dso_local global %struct.TYPE_2__* null, align 8
@debug_buf_ptr = common dso_local global i8* null, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [65 x i8] c"Found zero length panic log, skipping capturing panic stackshot\0A\00", align 1
@extended_debug_log_enabled = common dso_local global i64 0, align 8
@MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_NESTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Panicked during stackshot, skipping panic stackshot\0A\00", align 1
@debug_buf_size = common dso_local global i32 0, align 4
@debug_buf_base = common dso_local global i64 0, align 8
@kc_panic_data = common dso_local global i32 0, align 4
@KCDATA_BUFFER_BEGIN_STACKSHOT = common dso_local global i32 0, align 4
@KCFLAG_USE_MEMCOPY = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"Failed to initialize kcdata buffer for in-memory panic stackshot, skipping ...\0A\00", align 1
@STACKSHOT_SAVE_KEXT_LOADINFO = common dso_local global i32 0, align 4
@STACKSHOT_SAVE_LOADINFO = common dso_local global i32 0, align 4
@STACKSHOT_KCDATA_FORMAT = common dso_local global i32 0, align 4
@STACKSHOT_ENABLE_BT_FAULTING = common dso_local global i32 0, align 4
@STACKSHOT_ENABLE_UUID_FAULTING = common dso_local global i32 0, align 4
@STACKSHOT_FROM_PANIC = common dso_local global i32 0, align 4
@STACKSHOT_NO_IO_STATS = common dso_local global i32 0, align 4
@STACKSHOT_THREAD_WAITINFO = common dso_local global i32 0, align 4
@MACOS_PANIC_HEADER_FLAG_STACKSHOT_KERNEL_ONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [95 x i8] c"Failed to re-initialize kcdata buffer for kernel only in-memory panic stackshot, skipping ...\0A\00", align 1
@STACKSHOT_ACTIVE_KERNEL_THREADS_ONLY = common dso_local global i32 0, align 4
@MACOS_PANIC_HEADER_FLAG_STACKSHOT_SUCCEEDED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"\0A** In Memory Panic Stackshot Succeeded ** Bytes Traced %d **\0A\00", align 1
@MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_INCOMPLETE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [71 x i8] c"\0A** In Memory Panic Stackshot Incomplete ** Bytes Filled %d ** Err %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"\0A** In Memory Panic Stackshot Failed ** Bytes Traced %d, err %d\0A\00", align 1
@PANIC_STACKSHOT_BUFSIZE = common dso_local global i32 0, align 4
@STACKSHOT_GET_GLOBAL_MEM_STATS = common dso_local global i32 0, align 4
@panic_stackshot_buf = common dso_local global i64 0, align 8
@panic_stackshot_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RecordPanicStackshot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %6 = load i64, i64* @begun_panic_stackshot, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load i8*, i8** @debug_buf_ptr, align 8
  %15 = call i8* @PE_get_offset_into_panic_region(i8* %14)
  %16 = ptrtoint i8* %15 to i64
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %13, %8
  br label %243

20:                                               ; preds = %0
  %21 = load i64, i64* @TRUE, align 8
  store i64 %21, i64* @begun_panic_stackshot, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i8*, i8** @debug_buf_ptr, align 8
  %34 = call i8* @PE_get_offset_into_panic_region(i8* %33)
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %26
  br label %243

39:                                               ; preds = %20
  %40 = load i64, i64* @extended_debug_log_enabled, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %236

42:                                               ; preds = %39
  %43 = call i64 (...) @stackshot_active()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* @MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_NESTED, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i8*, i8** @debug_buf_ptr, align 8
  %52 = call i8* @PE_get_offset_into_panic_region(i8* %51)
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %243

57:                                               ; preds = %42
  %58 = load i8*, i8** @debug_buf_ptr, align 8
  store i8* %58, i8** %5, align 8
  %59 = load i32, i32* @debug_buf_size, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = load i64, i64* @debug_buf_base, align 8
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = sub i32 %59, %64
  store i32 %65, i32* %4, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load i32, i32* @KCDATA_BUFFER_BEGIN_STACKSHOT, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @KCFLAG_USE_MEMCOPY, align 4
  %71 = call i32 @kcdata_memory_static_init(i32* @kc_panic_data, i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @KERN_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %57
  %76 = load i32, i32* @MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_ERROR, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i8*, i8** @debug_buf_ptr, align 8
  %82 = call i8* @PE_get_offset_into_panic_region(i8* %81)
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  br label %243

87:                                               ; preds = %57
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @STACKSHOT_SAVE_KEXT_LOADINFO, align 4
  %91 = load i32, i32* @STACKSHOT_SAVE_LOADINFO, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @STACKSHOT_KCDATA_FORMAT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @STACKSHOT_ENABLE_BT_FAULTING, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @STACKSHOT_ENABLE_UUID_FAULTING, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @STACKSHOT_FROM_PANIC, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @STACKSHOT_NO_IO_STATS, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @STACKSHOT_THREAD_WAITINFO, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @kdp_snapshot_preflight(i32 -1, i8* %88, i32 %89, i32 %104, i32* @kc_panic_data, i32 0)
  %106 = call i32 @do_stackshot(i32* null)
  store i32 %106, i32* %1, align 4
  %107 = call i64 (...) @kdp_stack_snapshot_bytes_traced()
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %2, align 4
  %109 = call i64 @kcdata_memory_get_used_bytes(i32* @kc_panic_data)
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %1, align 4
  %112 = load i32, i32* @KERN_SUCCESS, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %168

114:                                              ; preds = %87
  %115 = load i32, i32* %3, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %168

117:                                              ; preds = %114
  %118 = load i32, i32* @MACOS_PANIC_HEADER_FLAG_STACKSHOT_KERNEL_ONLY, align 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = call i32 (...) @panic_stackshot_reset_state()
  %124 = load i8*, i8** %5, align 8
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @memset(i8* %124, i8 signext 0, i32 %125)
  %127 = load i8*, i8** %5, align 8
  %128 = ptrtoint i8* %127 to i32
  %129 = load i32, i32* @KCDATA_BUFFER_BEGIN_STACKSHOT, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @KCFLAG_USE_MEMCOPY, align 4
  %132 = call i32 @kcdata_memory_static_init(i32* @kc_panic_data, i32 %128, i32 %129, i32 %130, i32 %131)
  store i32 %132, i32* %1, align 4
  %133 = load i32, i32* %1, align 4
  %134 = load i32, i32* @KERN_SUCCESS, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %117
  %137 = load i32, i32* @MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_ERROR, align 4
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i8*, i8** @debug_buf_ptr, align 8
  %143 = call i8* @PE_get_offset_into_panic_region(i8* %142)
  %144 = ptrtoint i8* %143 to i64
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i64 0, i64 0))
  br label %243

148:                                              ; preds = %117
  %149 = load i8*, i8** %5, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @STACKSHOT_KCDATA_FORMAT, align 4
  %152 = load i32, i32* @STACKSHOT_NO_IO_STATS, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @STACKSHOT_SAVE_KEXT_LOADINFO, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @STACKSHOT_ACTIVE_KERNEL_THREADS_ONLY, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @STACKSHOT_FROM_PANIC, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @STACKSHOT_THREAD_WAITINFO, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @kdp_snapshot_preflight(i32 -1, i8* %149, i32 %150, i32 %161, i32* @kc_panic_data, i32 0)
  %163 = call i32 @do_stackshot(i32* null)
  store i32 %163, i32* %1, align 4
  %164 = call i64 (...) @kdp_stack_snapshot_bytes_traced()
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %2, align 4
  %166 = call i64 @kcdata_memory_get_used_bytes(i32* @kc_panic_data)
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %148, %114, %87
  %169 = load i32, i32* %1, align 4
  %170 = load i32, i32* @KERN_SUCCESS, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %196

172:                                              ; preds = %168
  %173 = load i32, i32* %2, align 4
  %174 = load i8*, i8** @debug_buf_ptr, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8* %176, i8** @debug_buf_ptr, align 8
  %177 = load i32, i32* @MACOS_PANIC_HEADER_FLAG_STACKSHOT_SUCCEEDED, align 4
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load i8*, i8** %5, align 8
  %183 = call i8* @PE_get_offset_into_panic_region(i8* %182)
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 4
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* %2, align 4
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load i8*, i8** @debug_buf_ptr, align 8
  %190 = call i8* @PE_get_offset_into_panic_region(i8* %189)
  %191 = ptrtoint i8* %190 to i64
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = load i32, i32* %2, align 4
  %195 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %194)
  br label %234

196:                                              ; preds = %168
  %197 = load i32, i32* %3, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %216

199:                                              ; preds = %196
  %200 = load i8*, i8** %5, align 8
  %201 = load i32, i32* %3, align 4
  %202 = call i32 @memset(i8* %200, i8 signext 0, i32 %201)
  %203 = load i32, i32* @MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_INCOMPLETE, align 4
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  %208 = load i8*, i8** @debug_buf_ptr, align 8
  %209 = call i8* @PE_get_offset_into_panic_region(i8* %208)
  %210 = ptrtoint i8* %209 to i64
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* %1, align 4
  %215 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %213, i32 %214)
  br label %233

216:                                              ; preds = %196
  %217 = load i8*, i8** %5, align 8
  %218 = load i32, i32* %3, align 4
  %219 = call i32 @bzero(i8* %217, i32 %218)
  %220 = load i32, i32* @MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_ERROR, align 4
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 4
  %225 = load i8*, i8** @debug_buf_ptr, align 8
  %226 = call i8* @PE_get_offset_into_panic_region(i8* %225)
  %227 = ptrtoint i8* %226 to i64
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  store i64 %227, i64* %229, align 8
  %230 = load i32, i32* %2, align 4
  %231 = load i32, i32* %1, align 4
  %232 = call i32 (i8*, ...) @kdb_printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %216, %199
  br label %234

234:                                              ; preds = %233, %172
  br label %235

235:                                              ; preds = %234
  br label %242

236:                                              ; preds = %39
  %237 = load i8*, i8** @debug_buf_ptr, align 8
  %238 = call i8* @PE_get_offset_into_panic_region(i8* %237)
  %239 = ptrtoint i8* %238 to i64
  %240 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  br label %242

242:                                              ; preds = %236, %235
  br label %243

243:                                              ; preds = %242, %136, %75, %45, %38, %19
  ret void
}

declare dso_local i8* @PE_get_offset_into_panic_region(i8*) #1

declare dso_local i32 @kdb_printf(i8*, ...) #1

declare dso_local i64 @stackshot_active(...) #1

declare dso_local i32 @kcdata_memory_static_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @kdp_snapshot_preflight(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @do_stackshot(i32*) #1

declare dso_local i64 @kdp_stack_snapshot_bytes_traced(...) #1

declare dso_local i64 @kcdata_memory_get_used_bytes(i32*) #1

declare dso_local i32 @panic_stackshot_reset_state(...) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
