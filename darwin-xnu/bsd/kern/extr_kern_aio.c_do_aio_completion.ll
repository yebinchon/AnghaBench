; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_do_aio_completion.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_do_aio_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_19__*, %struct.TYPE_16__, i64 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@AIO_LIO_NOTIFY = common dso_local global i32 0, align 4
@SIGEV_SIGNAL = common dso_local global i64 0, align 8
@AIO_DISABLE = common dso_local global i32 0, align 4
@DBG_BSD_AIO = common dso_local global i32 0, align 4
@AIO_completion_sig = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@AIO_EXIT_WAIT = common dso_local global i32 0, align 4
@AIO_CLOSE_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Close and exit flags set at the same time\0A\00", align 1
@AIO_completion_cleanup_wait = common dso_local global i32 0, align 4
@AIO_completion_cleanup_wake = common dso_local global i32 0, align 4
@AIO_completion_suspend_wake = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @do_aio_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_aio_completion(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %3, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %4, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = icmp ne %struct.TYPE_17__* %14, null
  br i1 %15, label %16, label %58

16:                                               ; preds = %1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = call i32 @aio_proc_lock_spin(%struct.TYPE_19__* %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %16
  %33 = load i64, i64* @TRUE, align 8
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %32, %16
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %5, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AIO_LIO_NOTIFY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load i64, i64* %3, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = call i32 @wakeup(%struct.TYPE_17__* %51)
  br label %53

53:                                               ; preds = %50, %47, %44, %34
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = call i32 @aio_proc_unlock(%struct.TYPE_19__* %56)
  br label %58

58:                                               ; preds = %53, %1
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SIGEV_SIGNAL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %114

66:                                               ; preds = %58
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @AIO_DISABLE, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %114

73:                                               ; preds = %66
  %74 = load i64, i64* @FALSE, align 8
  store i64 %74, i64* %6, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = icmp eq %struct.TYPE_17__* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i64, i64* @TRUE, align 8
  store i64 %78, i64* %6, align 8
  br label %81

79:                                               ; preds = %73
  %80 = load i64, i64* %3, align 8
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = load i64, i64* %6, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %113

84:                                               ; preds = %81
  %85 = load i32, i32* @DBG_BSD_AIO, align 4
  %86 = load i32, i32* @AIO_completion_sig, align 4
  %87 = call i32 @BSDDBG_CODE(i32 %85, i32 %86)
  %88 = load i32, i32* @DBG_FUNC_NONE, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = ptrtoint %struct.TYPE_19__* %92 to i32
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @KERNEL_DEBUG(i32 %89, i32 %93, i32 %97, i32 %102, i32 0, i32 0)
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @psignal(%struct.TYPE_19__* %106, i32 %111)
  br label %113

113:                                              ; preds = %84, %81
  br label %114

114:                                              ; preds = %113, %66, %58
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @AIO_EXIT_WAIT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @AIO_CLOSE_WAIT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %121, %114
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @AIO_EXIT_WAIT, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %192

137:                                              ; preds = %130
  %138 = load i32, i32* @DBG_BSD_AIO, align 4
  %139 = load i32, i32* @AIO_completion_cleanup_wait, align 4
  %140 = call i32 @BSDDBG_CODE(i32 %138, i32 %139)
  %141 = load i32, i32* @DBG_FUNC_NONE, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = ptrtoint %struct.TYPE_19__* %145 to i32
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 @KERNEL_DEBUG(i32 %142, i32 %146, i32 %150, i32 0, i32 0, i32 0)
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  %155 = call i32 @aio_proc_lock_spin(%struct.TYPE_19__* %154)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %157, align 8
  %159 = call i32 @aio_active_requests_for_process(%struct.TYPE_19__* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp slt i32 %160, 1
  br i1 %161, label %162, label %186

162:                                              ; preds = %137
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  %167 = call i32 @wakeup_one(%struct.TYPE_17__* %166)
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = call i32 @aio_proc_unlock(%struct.TYPE_19__* %170)
  %172 = load i32, i32* @DBG_BSD_AIO, align 4
  %173 = load i32, i32* @AIO_completion_cleanup_wake, align 4
  %174 = call i32 @BSDDBG_CODE(i32 %172, i32 %173)
  %175 = load i32, i32* @DBG_FUNC_NONE, align 4
  %176 = or i32 %174, %175
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %178, align 8
  %180 = ptrtoint %struct.TYPE_19__* %179 to i32
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 @KERNEL_DEBUG(i32 %176, i32 %180, i32 %184, i32 0, i32 0, i32 0)
  br label %191

186:                                              ; preds = %137
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  %190 = call i32 @aio_proc_unlock(%struct.TYPE_19__* %189)
  br label %191

191:                                              ; preds = %186, %162
  br label %192

192:                                              ; preds = %191, %130
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @AIO_CLOSE_WAIT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %258

199:                                              ; preds = %192
  %200 = load i32, i32* @DBG_BSD_AIO, align 4
  %201 = load i32, i32* @AIO_completion_cleanup_wait, align 4
  %202 = call i32 @BSDDBG_CODE(i32 %200, i32 %201)
  %203 = load i32, i32* @DBG_FUNC_NONE, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %206, align 8
  %208 = ptrtoint %struct.TYPE_19__* %207 to i32
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = call i32 @KERNEL_DEBUG(i32 %204, i32 %208, i32 %212, i32 0, i32 0, i32 0)
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %215, align 8
  %217 = call i32 @aio_proc_lock_spin(%struct.TYPE_19__* %216)
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %219, align 8
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @aio_proc_active_requests_for_file(%struct.TYPE_19__* %220, i32 %224)
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %8, align 4
  %227 = icmp slt i32 %226, 1
  br i1 %227, label %228, label %252

228:                                              ; preds = %199
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 1
  %233 = call i32 @wakeup(%struct.TYPE_17__* %232)
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %235, align 8
  %237 = call i32 @aio_proc_unlock(%struct.TYPE_19__* %236)
  %238 = load i32, i32* @DBG_BSD_AIO, align 4
  %239 = load i32, i32* @AIO_completion_cleanup_wake, align 4
  %240 = call i32 @BSDDBG_CODE(i32 %238, i32 %239)
  %241 = load i32, i32* @DBG_FUNC_NONE, align 4
  %242 = or i32 %240, %241
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %244, align 8
  %246 = ptrtoint %struct.TYPE_19__* %245 to i32
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = trunc i64 %249 to i32
  %251 = call i32 @KERNEL_DEBUG(i32 %242, i32 %246, i32 %250, i32 0, i32 0, i32 0)
  br label %257

252:                                              ; preds = %199
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %254, align 8
  %256 = call i32 @aio_proc_unlock(%struct.TYPE_19__* %255)
  br label %257

257:                                              ; preds = %252, %228
  br label %258

258:                                              ; preds = %257, %192
  %259 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 0
  %263 = bitcast i32* %262 to %struct.TYPE_17__*
  %264 = call i32 @wakeup(%struct.TYPE_17__* %263)
  %265 = load i32, i32* @DBG_BSD_AIO, align 4
  %266 = load i32, i32* @AIO_completion_suspend_wake, align 4
  %267 = call i32 @BSDDBG_CODE(i32 %265, i32 %266)
  %268 = load i32, i32* @DBG_FUNC_NONE, align 4
  %269 = or i32 %267, %268
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 2
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %271, align 8
  %273 = ptrtoint %struct.TYPE_19__* %272 to i32
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = trunc i64 %276 to i32
  %278 = call i32 @KERNEL_DEBUG(i32 %269, i32 %273, i32 %277, i32 0, i32 0, i32 0)
  %279 = load i64, i64* %3, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %258
  %282 = load i32, i32* %5, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %286 = call i32 @free_lio_context(%struct.TYPE_17__* %285)
  br label %287

287:                                              ; preds = %284, %281, %258
  ret void
}

declare dso_local i32 @aio_proc_lock_spin(%struct.TYPE_19__*) #1

declare dso_local i32 @wakeup(%struct.TYPE_17__*) #1

declare dso_local i32 @aio_proc_unlock(%struct.TYPE_19__*) #1

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @psignal(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @aio_active_requests_for_process(%struct.TYPE_19__*) #1

declare dso_local i32 @wakeup_one(%struct.TYPE_17__*) #1

declare dso_local i32 @aio_proc_active_requests_for_file(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @free_lio_context(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
