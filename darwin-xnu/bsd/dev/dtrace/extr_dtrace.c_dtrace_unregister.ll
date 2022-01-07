; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_unregister.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_17__*, i32, %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32 (i8*, i32, i8*)*, i32 (i32, i32, i32)* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_17__* }

@dtrace_enable_nullop = common dso_local global i64 0, align 8
@dtrace_provider = common dso_local global %struct.TYPE_17__* null, align 8
@dtrace_devi = common dso_local global i32* null, align 8
@dtrace_provider_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@mod_lock = common dso_local global i32 0, align 4
@dtrace_opens = common dso_local global i64 0, align 8
@dtrace_anon = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@dtrace_byprov = common dso_local global i32 0, align 4
@dtrace_probes = common dso_local global i32** null, align 8
@dtrace_bymod = common dso_local global i32 0, align 4
@dtrace_byfunc = common dso_local global i32 0, align 4
@dtrace_byname = common dso_local global i32 0, align 4
@dtrace_arena = common dso_local global i32 0, align 4
@dtrace_probe_t_zone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"attempt to unregister non-existent dtrace provider %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_unregister(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  store i64 %0, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  %13 = bitcast %struct.TYPE_18__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 40, i1 false)
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 6
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %14, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %18, align 8
  %20 = load i64, i64* @dtrace_enable_nullop, align 8
  %21 = inttoptr i64 %20 to i32 (i8*, i32, i8*)*
  %22 = icmp eq i32 (i8*, i32, i8*)* %19, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %1
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dtrace_provider, align 8
  %26 = icmp eq %struct.TYPE_17__* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load i32*, i32** @dtrace_devi, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %34 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_provider_lock, i32 %33)
  %35 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %36 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %35)
  store i32 1, i32* %6, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dtrace_provider, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = icmp ne %struct.TYPE_17__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %23
  %42 = load i32, i32* @EBUSY, align 4
  store i32 %42, i32* %2, align 4
  br label %271

43:                                               ; preds = %23
  br label %48

44:                                               ; preds = %1
  %45 = call i32 @lck_mtx_lock(i32* @dtrace_provider_lock)
  %46 = call i32 @lck_mtx_lock(i32* @mod_lock)
  %47 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  br label %48

48:                                               ; preds = %44, %43
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* @dtrace_opens, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dtrace_anon, i32 0, i32 0), align 8
  %58 = icmp ne %struct.TYPE_15__* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dtrace_anon, i32 0, i32 0), align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59, %53
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %69 = call i32 @lck_mtx_unlock(i32* @mod_lock)
  %70 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* @EBUSY, align 4
  store i32 %72, i32* %2, align 4
  br label %271

73:                                               ; preds = %59, %56, %48
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %83 = call i32 @lck_mtx_unlock(i32* @mod_lock)
  %84 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* @EBUSY, align 4
  store i32 %86, i32* %2, align 4
  br label %271

87:                                               ; preds = %73
  %88 = load i32, i32* @dtrace_byprov, align 4
  %89 = call %struct.TYPE_18__* @dtrace_hash_lookup(i32 %88, %struct.TYPE_18__* %10)
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %7, align 8
  br label %90

90:                                               ; preds = %133, %87
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %92 = icmp ne %struct.TYPE_18__* %91, null
  br i1 %92, label %93, label %138

93:                                               ; preds = %90
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 6
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = icmp ne %struct.TYPE_17__* %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %133

100:                                              ; preds = %93
  %101 = load i32**, i32*** @dtrace_probes, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %101, i64 %106
  store i32* null, i32** %107, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* @dtrace_bymod, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = call i32 @dtrace_hash_remove(i32 %112, %struct.TYPE_18__* %113)
  %115 = load i32, i32* @dtrace_byfunc, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %117 = call i32 @dtrace_hash_remove(i32 %115, %struct.TYPE_18__* %116)
  %118 = load i32, i32* @dtrace_byname, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %120 = call i32 @dtrace_hash_remove(i32 %118, %struct.TYPE_18__* %119)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %122 = icmp eq %struct.TYPE_18__* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %100
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %124, %struct.TYPE_18__** %8, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 5
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %126, align 8
  br label %132

127:                                              ; preds = %100
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 5
  store %struct.TYPE_18__* %128, %struct.TYPE_18__** %130, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %131, %struct.TYPE_18__** %8, align 8
  br label %132

132:                                              ; preds = %127, %123
  br label %133

133:                                              ; preds = %132, %99
  %134 = load i32, i32* @dtrace_byprov, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %136 = call %struct.TYPE_18__** @DTRACE_HASHNEXT(i32 %134, %struct.TYPE_18__* %135)
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  store %struct.TYPE_18__* %137, %struct.TYPE_18__** %7, align 8
  br label %90

138:                                              ; preds = %90
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %139, %struct.TYPE_18__** %7, align 8
  br label %140

140:                                              ; preds = %150, %138
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %142 = icmp ne %struct.TYPE_18__* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %140
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  store %struct.TYPE_18__* %146, %struct.TYPE_18__** %9, align 8
  %147 = load i32, i32* @dtrace_byprov, align 4
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %149 = call i32 @dtrace_hash_remove(i32 %147, %struct.TYPE_18__* %148)
  br label %150

150:                                              ; preds = %143
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %151, %struct.TYPE_18__** %7, align 8
  br label %140

152:                                              ; preds = %140
  %153 = call i32 (...) @dtrace_sync()
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %154, %struct.TYPE_18__** %7, align 8
  br label %155

155:                                              ; preds = %198, %152
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %157 = icmp ne %struct.TYPE_18__* %156, null
  br i1 %157, label %158, label %200

158:                                              ; preds = %155
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  store %struct.TYPE_18__* %161, %struct.TYPE_18__** %9, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %164, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = call i32 %165(i32 %168, i32 %171, i32 %174)
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @dtrace_strunref(i32 %178)
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @dtrace_strunref(i32 %182)
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @dtrace_strunref(i32 %186)
  %188 = load i32, i32* @dtrace_arena, align 4
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = inttoptr i64 %192 to i8*
  %194 = call i32 @vmem_free(i32 %188, i8* %193, i32 1)
  %195 = load i32, i32* @dtrace_probe_t_zone, align 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %197 = call i32 @zfree(i32 %195, %struct.TYPE_18__* %196)
  br label %198

198:                                              ; preds = %158
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %199, %struct.TYPE_18__** %7, align 8
  br label %155

200:                                              ; preds = %155
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dtrace_provider, align 8
  store %struct.TYPE_17__* %201, %struct.TYPE_17__** %5, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %203 = icmp eq %struct.TYPE_17__* %201, %202
  br i1 %203, label %204, label %228

204:                                              ; preds = %200
  %205 = load i32, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32*, i32** @dtrace_devi, align 8
  %209 = icmp eq i32* %208, null
  br label %210

210:                                              ; preds = %207, %204
  %211 = phi i1 [ true, %204 ], [ %209, %207 ]
  %212 = zext i1 %211 to i32
  %213 = call i32 @ASSERT(i32 %212)
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %215, align 8
  %217 = icmp eq %struct.TYPE_17__* %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %210
  %219 = load i32*, i32** @dtrace_devi, align 8
  %220 = icmp eq i32* %219, null
  br label %221

221:                                              ; preds = %218, %210
  %222 = phi i1 [ true, %210 ], [ %220, %218 ]
  %223 = zext i1 %222 to i32
  %224 = call i32 @ASSERT(i32 %223)
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  store %struct.TYPE_17__* %227, %struct.TYPE_17__** @dtrace_provider, align 8
  br label %257

228:                                              ; preds = %200
  br label %229

229:                                              ; preds = %240, %228
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %231 = icmp ne %struct.TYPE_17__* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %234, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %237 = icmp ne %struct.TYPE_17__* %235, %236
  br label %238

238:                                              ; preds = %232, %229
  %239 = phi i1 [ false, %229 ], [ %237, %232 ]
  br i1 %239, label %240, label %244

240:                                              ; preds = %238
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %242, align 8
  store %struct.TYPE_17__* %243, %struct.TYPE_17__** %5, align 8
  br label %229

244:                                              ; preds = %238
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %246 = icmp eq %struct.TYPE_17__* %245, null
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = load i64, i64* %3, align 8
  %249 = inttoptr i64 %248 to i8*
  %250 = call i32 @panic(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %249)
  br label %251

251:                                              ; preds = %247, %244
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %253, align 8
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 2
  store %struct.TYPE_17__* %254, %struct.TYPE_17__** %256, align 8
  br label %257

257:                                              ; preds = %251, %221
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @dtrace_strunref(i32 %260)
  %262 = load i32, i32* %6, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %257
  %265 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %266 = call i32 @lck_mtx_unlock(i32* @mod_lock)
  %267 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  br label %268

268:                                              ; preds = %264, %257
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %270 = call i32 @kmem_free(%struct.TYPE_17__* %269, i32 56)
  store i32 0, i32* %2, align 4
  br label %271

271:                                              ; preds = %268, %85, %71, %41
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #2

declare dso_local i32 @lck_mtx_lock(i32*) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

declare dso_local %struct.TYPE_18__* @dtrace_hash_lookup(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @dtrace_hash_remove(i32, %struct.TYPE_18__*) #2

declare dso_local %struct.TYPE_18__** @DTRACE_HASHNEXT(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @dtrace_sync(...) #2

declare dso_local i32 @dtrace_strunref(i32) #2

declare dso_local i32 @vmem_free(i32, i8*, i32) #2

declare dso_local i32 @zfree(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @panic(i8*, i8*) #2

declare dso_local i32 @kmem_free(%struct.TYPE_17__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
