; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_shutdown.c_proc_shutdown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_shutdown.c_proc_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.proc* }
%struct.proc = type { i32, i32, i8*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.proc* }
%struct.TYPE_5__ = type { %struct.proc* }
%struct.sd_filterargs = type { i32, i32 }
%struct.sd_iterargs = type { i32, i32, i64, i64 }
%struct.timespec = type { i32, i64 }

@SIGTERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Killing all processes \00", align 1
@sd_callback1 = common dso_local global i32 0, align 4
@sd_filt1 = common dso_local global i32 0, align 4
@proc_shutdown_exitcount = common dso_local global i64 0, align 8
@proc_list_mlock = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"shutdownwait\00", align 1
@allproc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@P_LIST_EXITCOUNT = common dso_local global i32 0, align 4
@zombproc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"%s[%d]: didn't act on SIGTERM\0A\00", align 1
@SIGKILL = common dso_local global i64 0, align 8
@sd_callback2 = common dso_local global i32 0, align 4
@sd_filt2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"%s[%d]: didn't act on SIGKILL\0A\00", align 1
@sd_callback3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@initproc = common dso_local global %struct.proc* null, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"continuing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @proc_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_shutdown() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd_filterargs, align 4
  %6 = alloca %struct.sd_iterargs, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec, align 8
  %9 = call i32 (...) @vfs_context_current()
  store i32 %9, i32* %1, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %10 = call i64 (...) @current_proc()
  %11 = inttoptr i64 %10 to %struct.proc*
  store %struct.proc* %11, %struct.proc** %3, align 8
  %12 = call %struct.proc* @proc_find(i32 1)
  store %struct.proc* %12, %struct.proc** %2, align 8
  %13 = load %struct.proc*, %struct.proc** %2, align 8
  %14 = icmp ne %struct.proc* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %0
  %16 = load %struct.proc*, %struct.proc** %2, align 8
  %17 = load %struct.proc*, %struct.proc** %3, align 8
  %18 = icmp ne %struct.proc* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.proc*, %struct.proc** %2, align 8
  %21 = load i64, i64* @SIGTERM, align 8
  %22 = call i32 @psignal(%struct.proc* %20, i64 %21)
  br label %23

23:                                               ; preds = %19, %15, %0
  %24 = load %struct.proc*, %struct.proc** %2, align 8
  %25 = call i32 @proc_rele(%struct.proc* %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %297, %23
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds %struct.sd_filterargs, %struct.sd_filterargs* %5, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.sd_filterargs, %struct.sd_filterargs* %5, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load i64, i64* @SIGTERM, align 8
  %32 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 3
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 2
  store i64 0, i64* %35, align 8
  store i32 0, i32* %7, align 4
  %36 = load i32, i32* @sd_callback1, align 4
  %37 = bitcast %struct.sd_iterargs* %6 to i8*
  %38 = load i32, i32* @sd_filt1, align 4
  %39 = bitcast %struct.sd_filterargs* %5 to i8*
  %40 = call i32 @proc_rebootscan(i32 %36, i8* %37, i32 %38, i8* %39)
  %41 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %115

44:                                               ; preds = %27
  %45 = load i64, i64* @proc_shutdown_exitcount, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %115

47:                                               ; preds = %44
  %48 = call i32 (...) @proc_list_lock()
  %49 = load i64, i64* @proc_shutdown_exitcount, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %113

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i32 3, i32* %52, align 8
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @proc_list_mlock, align 4
  %55 = load i32, i32* @PWAIT, align 4
  %56 = call i32 @msleep(i64* @proc_shutdown_exitcount, i32 %54, i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.timespec* %8)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %112

59:                                               ; preds = %51
  %60 = load %struct.proc*, %struct.proc** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @allproc, i32 0, i32 0), align 8
  store %struct.proc* %60, %struct.proc** %2, align 8
  br label %61

61:                                               ; preds = %80, %59
  %62 = load %struct.proc*, %struct.proc** %2, align 8
  %63 = icmp ne %struct.proc* %62, null
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load %struct.proc*, %struct.proc** %2, align 8
  %66 = getelementptr inbounds %struct.proc, %struct.proc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @P_LIST_EXITCOUNT, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @P_LIST_EXITCOUNT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load i32, i32* @P_LIST_EXITCOUNT, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.proc*, %struct.proc** %2, align 8
  %76 = getelementptr inbounds %struct.proc, %struct.proc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %72, %64
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.proc*, %struct.proc** %2, align 8
  %82 = getelementptr inbounds %struct.proc, %struct.proc* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.proc*, %struct.proc** %83, align 8
  store %struct.proc* %84, %struct.proc** %2, align 8
  br label %61

85:                                               ; preds = %61
  %86 = load %struct.proc*, %struct.proc** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @zombproc, i32 0, i32 0), align 8
  store %struct.proc* %86, %struct.proc** %2, align 8
  br label %87

87:                                               ; preds = %106, %85
  %88 = load %struct.proc*, %struct.proc** %2, align 8
  %89 = icmp ne %struct.proc* %88, null
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load %struct.proc*, %struct.proc** %2, align 8
  %92 = getelementptr inbounds %struct.proc, %struct.proc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @P_LIST_EXITCOUNT, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @P_LIST_EXITCOUNT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %90
  %99 = load i32, i32* @P_LIST_EXITCOUNT, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.proc*, %struct.proc** %2, align 8
  %102 = getelementptr inbounds %struct.proc, %struct.proc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %98, %90
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.proc*, %struct.proc** %2, align 8
  %108 = getelementptr inbounds %struct.proc, %struct.proc* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.proc*, %struct.proc** %109, align 8
  store %struct.proc* %110, %struct.proc** %2, align 8
  br label %87

111:                                              ; preds = %87
  br label %112

112:                                              ; preds = %111, %51
  br label %113

113:                                              ; preds = %112, %47
  %114 = call i32 (...) @proc_list_unlock()
  br label %115

115:                                              ; preds = %113, %44, %27
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @ETIMEDOUT, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %154

119:                                              ; preds = %115
  %120 = call i32 (...) @proc_list_lock()
  %121 = load %struct.proc*, %struct.proc** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @allproc, i32 0, i32 0), align 8
  store %struct.proc* %121, %struct.proc** %2, align 8
  br label %122

122:                                              ; preds = %147, %119
  %123 = load %struct.proc*, %struct.proc** %2, align 8
  %124 = icmp ne %struct.proc* %123, null
  br i1 %124, label %125, label %152

125:                                              ; preds = %122
  %126 = load %struct.proc*, %struct.proc** %2, align 8
  %127 = getelementptr inbounds %struct.proc, %struct.proc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %146

130:                                              ; preds = %125
  %131 = load %struct.proc*, %struct.proc** %2, align 8
  %132 = getelementptr inbounds %struct.proc, %struct.proc* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.proc*, %struct.proc** %2, align 8
  %135 = getelementptr inbounds %struct.proc, %struct.proc* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %133, i32 %136)
  %138 = load i32, i32* %1, align 4
  %139 = load %struct.proc*, %struct.proc** %2, align 8
  %140 = getelementptr inbounds %struct.proc, %struct.proc* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.proc*, %struct.proc** %2, align 8
  %143 = getelementptr inbounds %struct.proc, %struct.proc* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @sd_log(i32 %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %141, i32 %144)
  br label %146

146:                                              ; preds = %130, %125
  br label %147

147:                                              ; preds = %146
  %148 = load %struct.proc*, %struct.proc** %2, align 8
  %149 = getelementptr inbounds %struct.proc, %struct.proc* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load %struct.proc*, %struct.proc** %150, align 8
  store %struct.proc* %151, %struct.proc** %2, align 8
  br label %122

152:                                              ; preds = %122
  %153 = call i32 (...) @proc_list_unlock()
  br label %154

154:                                              ; preds = %152, %115
  %155 = load i32, i32* %4, align 4
  %156 = getelementptr inbounds %struct.sd_filterargs, %struct.sd_filterargs* %5, i32 0, i32 0
  store i32 %155, i32* %156, align 4
  %157 = getelementptr inbounds %struct.sd_filterargs, %struct.sd_filterargs* %5, i32 0, i32 1
  store i32 2, i32* %157, align 4
  %158 = load i64, i64* @SIGKILL, align 8
  %159 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 3
  store i64 %158, i64* %159, align 8
  %160 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 0
  store i32 2, i32* %160, align 8
  %161 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 1
  store i32 1, i32* %161, align 4
  %162 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 2
  store i64 0, i64* %162, align 8
  %163 = load i32, i32* @sd_callback2, align 4
  %164 = bitcast %struct.sd_iterargs* %6 to i8*
  %165 = load i32, i32* @sd_filt2, align 4
  %166 = bitcast %struct.sd_filterargs* %5 to i8*
  %167 = call i32 @proc_rebootscan(i32 %163, i8* %164, i32 %165, i8* %166)
  store i32 0, i32* %7, align 4
  %168 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %242

171:                                              ; preds = %154
  %172 = load i64, i64* @proc_shutdown_exitcount, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %242

174:                                              ; preds = %171
  %175 = call i32 (...) @proc_list_lock()
  %176 = load i64, i64* @proc_shutdown_exitcount, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %240

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i32 10, i32* %179, align 8
  %180 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  store i64 0, i64* %180, align 8
  %181 = load i32, i32* @proc_list_mlock, align 4
  %182 = load i32, i32* @PWAIT, align 4
  %183 = call i32 @msleep(i64* @proc_shutdown_exitcount, i32 %181, i32 %182, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.timespec* %8)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %239

186:                                              ; preds = %178
  %187 = load %struct.proc*, %struct.proc** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @allproc, i32 0, i32 0), align 8
  store %struct.proc* %187, %struct.proc** %2, align 8
  br label %188

188:                                              ; preds = %207, %186
  %189 = load %struct.proc*, %struct.proc** %2, align 8
  %190 = icmp ne %struct.proc* %189, null
  br i1 %190, label %191, label %212

191:                                              ; preds = %188
  %192 = load %struct.proc*, %struct.proc** %2, align 8
  %193 = getelementptr inbounds %struct.proc, %struct.proc* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @P_LIST_EXITCOUNT, align 4
  %196 = and i32 %194, %195
  %197 = load i32, i32* @P_LIST_EXITCOUNT, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %191
  %200 = load i32, i32* @P_LIST_EXITCOUNT, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.proc*, %struct.proc** %2, align 8
  %203 = getelementptr inbounds %struct.proc, %struct.proc* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %199, %191
  br label %207

207:                                              ; preds = %206
  %208 = load %struct.proc*, %struct.proc** %2, align 8
  %209 = getelementptr inbounds %struct.proc, %struct.proc* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load %struct.proc*, %struct.proc** %210, align 8
  store %struct.proc* %211, %struct.proc** %2, align 8
  br label %188

212:                                              ; preds = %188
  %213 = load %struct.proc*, %struct.proc** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @zombproc, i32 0, i32 0), align 8
  store %struct.proc* %213, %struct.proc** %2, align 8
  br label %214

214:                                              ; preds = %233, %212
  %215 = load %struct.proc*, %struct.proc** %2, align 8
  %216 = icmp ne %struct.proc* %215, null
  br i1 %216, label %217, label %238

217:                                              ; preds = %214
  %218 = load %struct.proc*, %struct.proc** %2, align 8
  %219 = getelementptr inbounds %struct.proc, %struct.proc* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @P_LIST_EXITCOUNT, align 4
  %222 = and i32 %220, %221
  %223 = load i32, i32* @P_LIST_EXITCOUNT, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %232

225:                                              ; preds = %217
  %226 = load i32, i32* @P_LIST_EXITCOUNT, align 4
  %227 = xor i32 %226, -1
  %228 = load %struct.proc*, %struct.proc** %2, align 8
  %229 = getelementptr inbounds %struct.proc, %struct.proc* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = and i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %225, %217
  br label %233

233:                                              ; preds = %232
  %234 = load %struct.proc*, %struct.proc** %2, align 8
  %235 = getelementptr inbounds %struct.proc, %struct.proc* %234, i32 0, i32 5
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load %struct.proc*, %struct.proc** %236, align 8
  store %struct.proc* %237, %struct.proc** %2, align 8
  br label %214

238:                                              ; preds = %214
  br label %239

239:                                              ; preds = %238, %178
  br label %240

240:                                              ; preds = %239, %174
  %241 = call i32 (...) @proc_list_unlock()
  br label %242

242:                                              ; preds = %240, %171, %154
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* @ETIMEDOUT, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %281

246:                                              ; preds = %242
  %247 = call i32 (...) @proc_list_lock()
  %248 = load %struct.proc*, %struct.proc** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @allproc, i32 0, i32 0), align 8
  store %struct.proc* %248, %struct.proc** %2, align 8
  br label %249

249:                                              ; preds = %274, %246
  %250 = load %struct.proc*, %struct.proc** %2, align 8
  %251 = icmp ne %struct.proc* %250, null
  br i1 %251, label %252, label %279

252:                                              ; preds = %249
  %253 = load %struct.proc*, %struct.proc** %2, align 8
  %254 = getelementptr inbounds %struct.proc, %struct.proc* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 2
  br i1 %256, label %257, label %273

257:                                              ; preds = %252
  %258 = load %struct.proc*, %struct.proc** %2, align 8
  %259 = getelementptr inbounds %struct.proc, %struct.proc* %258, i32 0, i32 2
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.proc*, %struct.proc** %2, align 8
  %262 = getelementptr inbounds %struct.proc, %struct.proc* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %260, i32 %263)
  %265 = load i32, i32* %1, align 4
  %266 = load %struct.proc*, %struct.proc** %2, align 8
  %267 = getelementptr inbounds %struct.proc, %struct.proc* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.proc*, %struct.proc** %2, align 8
  %270 = getelementptr inbounds %struct.proc, %struct.proc* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @sd_log(i32 %265, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %268, i32 %271)
  br label %273

273:                                              ; preds = %257, %252
  br label %274

274:                                              ; preds = %273
  %275 = load %struct.proc*, %struct.proc** %2, align 8
  %276 = getelementptr inbounds %struct.proc, %struct.proc* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load %struct.proc*, %struct.proc** %277, align 8
  store %struct.proc* %278, %struct.proc** %2, align 8
  br label %249

279:                                              ; preds = %249
  %280 = call i32 (...) @proc_list_unlock()
  br label %281

281:                                              ; preds = %279, %242
  %282 = load i32, i32* %4, align 4
  %283 = getelementptr inbounds %struct.sd_filterargs, %struct.sd_filterargs* %5, i32 0, i32 0
  store i32 %282, i32* %283, align 4
  %284 = getelementptr inbounds %struct.sd_filterargs, %struct.sd_filterargs* %5, i32 0, i32 1
  store i32 3, i32* %284, align 4
  %285 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 3
  store i64 0, i64* %285, align 8
  %286 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 0
  store i32 3, i32* %286, align 8
  %287 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 1
  store i32 0, i32* %287, align 4
  %288 = getelementptr inbounds %struct.sd_iterargs, %struct.sd_iterargs* %6, i32 0, i32 2
  store i64 0, i64* %288, align 8
  %289 = load i32, i32* @sd_callback3, align 4
  %290 = bitcast %struct.sd_iterargs* %6 to i8*
  %291 = load i32, i32* @sd_filt2, align 4
  %292 = bitcast %struct.sd_filterargs* %5 to i8*
  %293 = call i32 @proc_rebootscan(i32 %289, i8* %290, i32 %291, i8* %292)
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %295 = load i32, i32* %4, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %281
  store i32 1, i32* %4, align 4
  br label %27

298:                                              ; preds = %281
  %299 = load i32, i32* %1, align 4
  %300 = call i32 @sd_closelog(i32 %299)
  %301 = load %struct.proc*, %struct.proc** @initproc, align 8
  %302 = getelementptr inbounds %struct.proc, %struct.proc* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @task_suspend_internal(i32 %303)
  %305 = load %struct.proc*, %struct.proc** @initproc, align 8
  %306 = call i32 @proc_rele(%struct.proc* %305)
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i64 @current_proc(...) #1

declare dso_local %struct.proc* @proc_find(i32) #1

declare dso_local i32 @psignal(%struct.proc*, i64) #1

declare dso_local i32 @proc_rele(%struct.proc*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @proc_rebootscan(i32, i8*, i32, i8*) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @msleep(i64*, i32, i32, i8*, %struct.timespec*) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @sd_log(i32, i8*, i8*, i32) #1

declare dso_local i32 @sd_closelog(i32) #1

declare dso_local i32 @task_suspend_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
