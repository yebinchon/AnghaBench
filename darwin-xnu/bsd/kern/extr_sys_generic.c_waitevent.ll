; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_waitevent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_waitevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.eventqelt* }
%struct.eventqelt = type { %struct.eventreq64, i32 }
%struct.eventreq64 = type { i32, i64, i32, i32, i32, i64, i32 }
%struct.waitevent_args = type { i64, i32 }
%union.anon = type { %struct.eventreq64 }
%struct.timeval = type { i32, i32 }
%struct.user64_timeval = type { i32, i32 }
%struct.user32_timeval = type { i32, i32 }
%struct.eventreq32 = type { i32, i32, i32, i32, i64, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@DBG_MISC_WAIT = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@ee_plist = common dso_local global i32 0, align 4
@EV_QUEUED = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"waitevent\00", align 1
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitevent(%struct.TYPE_8__* %0, %struct.waitevent_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.waitevent_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.eventqelt*, align 8
  %10 = alloca %struct.eventreq64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %union.anon, align 8
  %15 = alloca %struct.timeval, align 4
  %16 = alloca %struct.user64_timeval, align 4
  %17 = alloca %struct.user32_timeval, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.waitevent_args* %1, %struct.waitevent_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %13, align 8
  %19 = bitcast %union.anon* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 48, i1 false)
  store i64 0, i64* %12, align 8
  %20 = load %struct.waitevent_args*, %struct.waitevent_args** %6, align 8
  %21 = getelementptr inbounds %struct.waitevent_args, %struct.waitevent_args* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %104

24:                                               ; preds = %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = call i64 @IS_64BIT_PROCESS(%struct.TYPE_8__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.waitevent_args*, %struct.waitevent_args** %6, align 8
  %30 = getelementptr inbounds %struct.waitevent_args, %struct.waitevent_args* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* @TRUE, align 8
  store i64 %34, i64* %13, align 8
  br label %35

35:                                               ; preds = %33, %28
  br label %44

36:                                               ; preds = %24
  %37 = load %struct.waitevent_args*, %struct.waitevent_args** %6, align 8
  %38 = getelementptr inbounds %struct.waitevent_args, %struct.waitevent_args* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %13, align 8
  br label %43

43:                                               ; preds = %41, %36
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @TRUE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.eventqelt*, %struct.eventqelt** %51, align 8
  %53 = icmp eq %struct.eventqelt* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* @DBG_MISC_WAIT, align 4
  %56 = load i32, i32* @DBG_FUNC_NONE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @KERNEL_DEBUG(i32 %57, i32 -1, i64 0, i32 0, i64 0, i32 0)
  %59 = load i32*, i32** %7, align 8
  store i32 1, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %282

60:                                               ; preds = %48
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = call i32 @proc_lock(%struct.TYPE_8__* %61)
  br label %111

63:                                               ; preds = %44
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = call i64 @IS_64BIT_PROCESS(%struct.TYPE_8__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load %struct.waitevent_args*, %struct.waitevent_args** %6, align 8
  %69 = getelementptr inbounds %struct.waitevent_args, %struct.waitevent_args* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = ptrtoint %struct.user64_timeval* %16 to i32
  %72 = call i32 @copyin(i64 %70, i32 %71, i32 8)
  store i32 %72, i32* %8, align 4
  %73 = getelementptr inbounds %struct.user64_timeval, %struct.user64_timeval* %16, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.user64_timeval, %struct.user64_timeval* %16, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  br label %91

79:                                               ; preds = %63
  %80 = load %struct.waitevent_args*, %struct.waitevent_args** %6, align 8
  %81 = getelementptr inbounds %struct.waitevent_args, %struct.waitevent_args* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = ptrtoint %struct.user32_timeval* %17 to i32
  %84 = call i32 @copyin(i64 %82, i32 %83, i32 8)
  store i32 %84, i32* %8, align 4
  %85 = getelementptr inbounds %struct.user32_timeval, %struct.user32_timeval* %17, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.user32_timeval, %struct.user32_timeval* %17, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %79, %67
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %282

96:                                               ; preds = %91
  %97 = call i64 @itimerfix(%struct.timeval* %15)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @EINVAL, align 4
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %282

102:                                              ; preds = %96
  %103 = call i64 @tvtoabstime(%struct.timeval* %15)
  store i64 %103, i64* %12, align 8
  br label %104

104:                                              ; preds = %102, %3
  %105 = load i32, i32* @DBG_MISC_WAIT, align 4
  %106 = load i32, i32* @DBG_FUNC_START, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @KERNEL_DEBUG(i32 %107, i32 0, i64 0, i32 0, i64 0, i32 0)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = call i32 @proc_lock(%struct.TYPE_8__* %109)
  br label %111

111:                                              ; preds = %260, %104, %60
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load %struct.eventqelt*, %struct.eventqelt** %114, align 8
  store %struct.eventqelt* %115, %struct.eventqelt** %9, align 8
  %116 = icmp ne %struct.eventqelt* %115, null
  br i1 %116, label %117, label %213

117:                                              ; preds = %111
  %118 = load %struct.eventqelt*, %struct.eventqelt** %9, align 8
  %119 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %118, i32 0, i32 0
  store %struct.eventreq64* %119, %struct.eventreq64** %10, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = call i64 @IS_64BIT_PROCESS(%struct.TYPE_8__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load %struct.eventreq64*, %struct.eventreq64** %10, align 8
  %125 = ptrtoint %struct.eventreq64* %124 to i32
  %126 = bitcast %union.anon* %14 to %struct.eventreq64*
  %127 = ptrtoint %struct.eventreq64* %126 to i32
  %128 = call i32 @bcopy(i32 %125, i32 %127, i32 48)
  br label %165

129:                                              ; preds = %117
  %130 = load %struct.eventreq64*, %struct.eventreq64** %10, align 8
  %131 = getelementptr inbounds %struct.eventreq64, %struct.eventreq64* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = bitcast %union.anon* %14 to %struct.eventreq32*
  %134 = getelementptr inbounds %struct.eventreq32, %struct.eventreq32* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 8
  %135 = load %struct.eventreq64*, %struct.eventreq64** %10, align 8
  %136 = getelementptr inbounds %struct.eventreq64, %struct.eventreq64* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = bitcast %union.anon* %14 to %struct.eventreq32*
  %139 = getelementptr inbounds %struct.eventreq32, %struct.eventreq32* %138, i32 0, i32 5
  store i64 %137, i64* %139, align 8
  %140 = load %struct.eventreq64*, %struct.eventreq64** %10, align 8
  %141 = getelementptr inbounds %struct.eventreq64, %struct.eventreq64* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = bitcast %union.anon* %14 to %struct.eventreq32*
  %144 = getelementptr inbounds %struct.eventreq32, %struct.eventreq32* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  %145 = load %struct.eventreq64*, %struct.eventreq64** %10, align 8
  %146 = getelementptr inbounds %struct.eventreq64, %struct.eventreq64* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = bitcast %union.anon* %14 to %struct.eventreq32*
  %149 = getelementptr inbounds %struct.eventreq32, %struct.eventreq32* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load %struct.eventreq64*, %struct.eventreq64** %10, align 8
  %151 = getelementptr inbounds %struct.eventreq64, %struct.eventreq64* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = bitcast %union.anon* %14 to %struct.eventreq32*
  %154 = getelementptr inbounds %struct.eventreq32, %struct.eventreq32* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.eventreq64*, %struct.eventreq64** %10, align 8
  %156 = getelementptr inbounds %struct.eventreq64, %struct.eventreq64* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = bitcast %union.anon* %14 to %struct.eventreq32*
  %159 = getelementptr inbounds %struct.eventreq32, %struct.eventreq32* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.eventreq64*, %struct.eventreq64** %10, align 8
  %161 = getelementptr inbounds %struct.eventreq64, %struct.eventreq64* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = bitcast %union.anon* %14 to %struct.eventreq32*
  %164 = getelementptr inbounds %struct.eventreq32, %struct.eventreq32* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %129, %123
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load %struct.eventqelt*, %struct.eventqelt** %9, align 8
  %169 = load i32, i32* @ee_plist, align 4
  %170 = call i32 @TAILQ_REMOVE(%struct.TYPE_9__* %167, %struct.eventqelt* %168, i32 %169)
  %171 = load i32, i32* @EV_QUEUED, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.eventqelt*, %struct.eventqelt** %9, align 8
  %174 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %178 = call i32 @proc_unlock(%struct.TYPE_8__* %177)
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %180 = call i64 @IS_64BIT_PROCESS(%struct.TYPE_8__* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %165
  %183 = bitcast %union.anon* %14 to %struct.eventreq64*
  %184 = ptrtoint %struct.eventreq64* %183 to i32
  %185 = load %struct.waitevent_args*, %struct.waitevent_args** %6, align 8
  %186 = getelementptr inbounds %struct.waitevent_args, %struct.waitevent_args* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @copyout(i32 %184, i32 %187, i32 48)
  store i32 %188, i32* %8, align 4
  br label %196

189:                                              ; preds = %165
  %190 = bitcast %union.anon* %14 to %struct.eventreq32*
  %191 = ptrtoint %struct.eventreq32* %190 to i32
  %192 = load %struct.waitevent_args*, %struct.waitevent_args** %6, align 8
  %193 = getelementptr inbounds %struct.waitevent_args, %struct.waitevent_args* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @copyout(i32 %191, i32 %194, i32 40)
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %189, %182
  %197 = load i32, i32* @DBG_MISC_WAIT, align 4
  %198 = load i32, i32* @DBG_FUNC_END, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.eventqelt*, %struct.eventqelt** %9, align 8
  %202 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.eventreq64, %struct.eventreq64* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.eventqelt*, %struct.eventqelt** %9, align 8
  %206 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.eventreq64, %struct.eventreq64* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.eventqelt*, %struct.eventqelt** %9, align 8
  %210 = ptrtoint %struct.eventqelt* %209 to i64
  %211 = call i32 @KERNEL_DEBUG(i32 %199, i32 %200, i64 %204, i32 %208, i64 %210, i32 0)
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %4, align 4
  br label %282

213:                                              ; preds = %111
  %214 = load %struct.waitevent_args*, %struct.waitevent_args** %6, align 8
  %215 = getelementptr inbounds %struct.waitevent_args, %struct.waitevent_args* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %213
  %219 = load i64, i64* %12, align 8
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %218
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %223 = call i32 @proc_unlock(%struct.TYPE_8__* %222)
  %224 = load i32*, i32** %7, align 8
  store i32 1, i32* %224, align 4
  %225 = load i32, i32* @DBG_MISC_WAIT, align 4
  %226 = load i32, i32* @DBG_FUNC_END, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @KERNEL_DEBUG(i32 %227, i32 %228, i64 0, i32 0, i64 0, i32 0)
  %230 = load i32, i32* %8, align 4
  store i32 %230, i32* %4, align 4
  br label %282

231:                                              ; preds = %218, %213
  %232 = load i64, i64* %12, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i64, i64* %12, align 8
  %236 = call i32 @clock_absolutetime_interval_to_deadline(i64 %235, i64* %11)
  br label %238

237:                                              ; preds = %231
  store i64 0, i64* %11, align 8
  br label %238

238:                                              ; preds = %237, %234
  %239 = load i32, i32* @DBG_MISC_WAIT, align 4
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = ptrtoint %struct.TYPE_9__* %241 to i64
  %243 = call i32 @KERNEL_DEBUG(i32 %239, i32 1, i64 %242, i32 0, i64 0, i32 0)
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  %248 = load i32, i32* @PSOCK, align 4
  %249 = load i32, i32* @PCATCH, align 4
  %250 = or i32 %248, %249
  %251 = load i64, i64* %11, align 8
  %252 = call i32 @msleep1(%struct.TYPE_9__* %245, i32* %247, i32 %250, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %251)
  store i32 %252, i32* %8, align 4
  %253 = load i32, i32* @DBG_MISC_WAIT, align 4
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = ptrtoint %struct.TYPE_9__* %255 to i64
  %257 = call i32 @KERNEL_DEBUG(i32 %253, i32 2, i64 %256, i32 0, i64 0, i32 0)
  %258 = load i32, i32* %8, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %238
  br label %111

261:                                              ; preds = %238
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* @ERESTART, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = load i32, i32* @EINTR, align 4
  store i32 %266, i32* %8, align 4
  br label %267

267:                                              ; preds = %265, %261
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* @EWOULDBLOCK, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %267
  %272 = load i32*, i32** %7, align 8
  store i32 1, i32* %272, align 4
  store i32 0, i32* %8, align 4
  br label %273

273:                                              ; preds = %271, %267
  br label %274

274:                                              ; preds = %273
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %276 = call i32 @proc_unlock(%struct.TYPE_8__* %275)
  %277 = load i32, i32* @DBG_MISC_WAIT, align 4
  %278 = load i32, i32* @DBG_FUNC_END, align 4
  %279 = or i32 %277, %278
  %280 = call i32 @KERNEL_DEBUG(i32 %279, i32 0, i64 0, i32 0, i64 0, i32 0)
  %281 = load i32, i32* %8, align 4
  store i32 %281, i32* %4, align 4
  br label %282

282:                                              ; preds = %274, %221, %196, %99, %94, %54
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @IS_64BIT_PROCESS(%struct.TYPE_8__*) #2

declare dso_local i32 @KERNEL_DEBUG(i32, i32, i64, i32, i64, i32) #2

declare dso_local i32 @proc_lock(%struct.TYPE_8__*) #2

declare dso_local i32 @copyin(i64, i32, i32) #2

declare dso_local i64 @itimerfix(%struct.timeval*) #2

declare dso_local i64 @tvtoabstime(%struct.timeval*) #2

declare dso_local i32 @bcopy(i32, i32, i32) #2

declare dso_local i32 @TAILQ_REMOVE(%struct.TYPE_9__*, %struct.eventqelt*, i32) #2

declare dso_local i32 @proc_unlock(%struct.TYPE_8__*) #2

declare dso_local i32 @copyout(i32, i32, i32) #2

declare dso_local i32 @clock_absolutetime_interval_to_deadline(i64, i64*) #2

declare dso_local i32 @msleep1(%struct.TYPE_9__*, i32*, i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
