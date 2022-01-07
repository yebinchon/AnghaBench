; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_module_unloaded.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_module_unloaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modctl = type { i64, i32, %struct.modctl*, i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 (i32, i32, i32)* }
%struct.kmod_info = type { i32 }

@dtrace_provider_lock = common dso_local global i32 0, align 4
@mod_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_bymod = common dso_local global i32* null, align 8
@dtrace_modctl_list = common dso_local global %struct.modctl* null, align 8
@dtrace_err_verbose = common dso_local global i64 0, align 8
@CE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unloaded module '%s' had enabled probes\00", align 1
@dtrace_probes = common dso_local global %struct.TYPE_11__** null, align 8
@dtrace_byprov = common dso_local global i32* null, align 8
@dtrace_byfunc = common dso_local global i32* null, align 8
@dtrace_byname = common dso_local global i32* null, align 8
@dtrace_arena = common dso_local global i32 0, align 4
@dtrace_probe_t_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmod_info*)* @dtrace_module_unloaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_module_unloaded(%struct.kmod_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kmod_info*, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.modctl*, align 8
  %10 = alloca %struct.modctl*, align 8
  %11 = alloca %struct.modctl*, align 8
  %12 = alloca i32, align 4
  store %struct.kmod_info* %0, %struct.kmod_info** %3, align 8
  store %struct.modctl* null, %struct.modctl** %9, align 8
  store %struct.modctl* null, %struct.modctl** %10, align 8
  store %struct.modctl* null, %struct.modctl** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = call i32 @lck_mtx_lock(i32* @dtrace_provider_lock)
  %14 = call i32 @lck_mtx_lock(i32* @mod_lock)
  %15 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %16 = load %struct.kmod_info*, %struct.kmod_info** %3, align 8
  %17 = icmp eq %struct.kmod_info* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %12, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.kmod_info*, %struct.kmod_info** %3, align 8
  %21 = call %struct.modctl* @dtrace_modctl_lookup(%struct.kmod_info* %20)
  store %struct.modctl* %21, %struct.modctl** %9, align 8
  %22 = load %struct.modctl*, %struct.modctl** %9, align 8
  %23 = icmp eq %struct.modctl* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %26 = call i32 @lck_mtx_unlock(i32* @mod_lock)
  %27 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  store i32 -1, i32* %2, align 4
  br label %244

28:                                               ; preds = %19
  %29 = load %struct.modctl*, %struct.modctl** %9, align 8
  %30 = getelementptr inbounds %struct.modctl, %struct.modctl* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.modctl*, %struct.modctl** %9, align 8
  %32 = getelementptr inbounds %struct.modctl, %struct.modctl* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.modctl*, %struct.modctl** %9, align 8
  %34 = getelementptr inbounds %struct.modctl, %struct.modctl* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %28, %18
  %36 = load i32*, i32** @dtrace_bymod, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.modctl*, %struct.modctl** %9, align 8
  %40 = icmp ne %struct.modctl* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.modctl*, %struct.modctl** %9, align 8
  %43 = call i32 @dtrace_modctl_remove(%struct.modctl* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %46 = call i32 @lck_mtx_unlock(i32* @mod_lock)
  %47 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  store i32 0, i32* %2, align 4
  br label %244

48:                                               ; preds = %35
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load %struct.modctl*, %struct.modctl** @dtrace_modctl_list, align 8
  store %struct.modctl* %52, %struct.modctl** %11, align 8
  br label %53

53:                                               ; preds = %51, %48
  br label %54

54:                                               ; preds = %239, %104, %53
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %54
  %58 = load %struct.modctl*, %struct.modctl** %11, align 8
  store %struct.modctl* %58, %struct.modctl** %10, align 8
  br label %59

59:                                               ; preds = %69, %57
  %60 = load %struct.modctl*, %struct.modctl** %10, align 8
  %61 = icmp ne %struct.modctl* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load %struct.modctl*, %struct.modctl** %10, align 8
  %64 = getelementptr inbounds %struct.modctl, %struct.modctl* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %73

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.modctl*, %struct.modctl** %10, align 8
  %71 = getelementptr inbounds %struct.modctl, %struct.modctl* %70, i32 0, i32 2
  %72 = load %struct.modctl*, %struct.modctl** %71, align 8
  store %struct.modctl* %72, %struct.modctl** %10, align 8
  br label %59

73:                                               ; preds = %67, %59
  %74 = load %struct.modctl*, %struct.modctl** %10, align 8
  %75 = icmp eq %struct.modctl* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %78 = call i32 @lck_mtx_unlock(i32* @mod_lock)
  %79 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  store i32 0, i32* %2, align 4
  br label %244

80:                                               ; preds = %73
  %81 = load %struct.modctl*, %struct.modctl** %10, align 8
  %82 = getelementptr inbounds %struct.modctl, %struct.modctl* %81, i32 0, i32 2
  %83 = load %struct.modctl*, %struct.modctl** %82, align 8
  store %struct.modctl* %83, %struct.modctl** %11, align 8
  %84 = load %struct.modctl*, %struct.modctl** %10, align 8
  store %struct.modctl* %84, %struct.modctl** %9, align 8
  br label %85

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %54
  %87 = load %struct.modctl*, %struct.modctl** %9, align 8
  %88 = getelementptr inbounds %struct.modctl, %struct.modctl* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** @dtrace_bymod, align 8
  %92 = call %struct.TYPE_11__* @dtrace_hash_lookup(i32* %91, %struct.TYPE_11__* %4)
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %5, align 8
  br label %93

93:                                               ; preds = %119, %86
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = icmp ne %struct.TYPE_11__* %94, null
  br i1 %95, label %96, label %123

96:                                               ; preds = %93
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %54

105:                                              ; preds = %101
  %106 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %107 = call i32 @lck_mtx_unlock(i32* @mod_lock)
  %108 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  %109 = load i64, i64* @dtrace_err_verbose, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load i32, i32* @CE_WARN, align 4
  %113 = load %struct.modctl*, %struct.modctl** %9, align 8
  %114 = getelementptr inbounds %struct.modctl, %struct.modctl* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @cmn_err(i32 %112, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %111, %105
  store i32 -1, i32* %2, align 4
  br label %244

118:                                              ; preds = %96
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 6
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %5, align 8
  br label %93

123:                                              ; preds = %93
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %6, align 8
  br label %125

125:                                              ; preds = %181, %123
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %127 = icmp ne %struct.TYPE_11__* %126, null
  br i1 %127, label %128, label %183

128:                                              ; preds = %125
  %129 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @dtrace_probes, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %129, i64 %134
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = icmp eq %struct.TYPE_11__* %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @ASSERT(i32 %139)
  %141 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @dtrace_probes, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %141, i64 %146
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %147, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %151, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 6
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  store %struct.TYPE_11__* %156, %struct.TYPE_11__** %7, align 8
  %157 = load i32*, i32** @dtrace_byprov, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %159 = call i32 @dtrace_hash_remove(i32* %157, %struct.TYPE_11__* %158)
  %160 = load i32*, i32** @dtrace_bymod, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = call i32 @dtrace_hash_remove(i32* %160, %struct.TYPE_11__* %161)
  %163 = load i32*, i32** @dtrace_byfunc, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = call i32 @dtrace_hash_remove(i32* %163, %struct.TYPE_11__* %164)
  %166 = load i32*, i32** @dtrace_byname, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %168 = call i32 @dtrace_hash_remove(i32* %166, %struct.TYPE_11__* %167)
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %170 = icmp eq %struct.TYPE_11__* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %128
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %172, %struct.TYPE_11__** %6, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 6
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %174, align 8
  br label %180

175:                                              ; preds = %128
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 6
  store %struct.TYPE_11__* %176, %struct.TYPE_11__** %178, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %179, %struct.TYPE_11__** %6, align 8
  br label %180

180:                                              ; preds = %175, %171
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %182, %struct.TYPE_11__** %5, align 8
  br label %125

183:                                              ; preds = %125
  %184 = call i32 (...) @dtrace_sync()
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %185, %struct.TYPE_11__** %5, align 8
  br label %186

186:                                              ; preds = %232, %183
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %188 = icmp ne %struct.TYPE_11__* %187, null
  br i1 %188, label %189, label %234

189:                                              ; preds = %186
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 6
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  store %struct.TYPE_11__* %192, %struct.TYPE_11__** %6, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 5
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  store %struct.TYPE_10__* %195, %struct.TYPE_10__** %8, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %198, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = call i32 %199(i32 %202, i32 %205, i32 %208)
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @dtrace_strunref(i32 %212)
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @dtrace_strunref(i32 %216)
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @dtrace_strunref(i32 %220)
  %222 = load i32, i32* @dtrace_arena, align 4
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = inttoptr i64 %226 to i8*
  %228 = call i32 @vmem_free(i32 %222, i8* %227, i32 1)
  %229 = load i32, i32* @dtrace_probe_t_zone, align 4
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %231 = call i32 @zfree(i32 %229, %struct.TYPE_11__* %230)
  br label %232

232:                                              ; preds = %189
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %233, %struct.TYPE_11__** %5, align 8
  br label %186

234:                                              ; preds = %186
  %235 = load %struct.modctl*, %struct.modctl** %9, align 8
  %236 = call i32 @dtrace_modctl_remove(%struct.modctl* %235)
  %237 = load i32, i32* %12, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %54

240:                                              ; preds = %234
  %241 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %242 = call i32 @lck_mtx_unlock(i32* @mod_lock)
  %243 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  store i32 0, i32* %2, align 4
  br label %244

244:                                              ; preds = %240, %117, %76, %44, %24
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local %struct.modctl* @dtrace_modctl_lookup(%struct.kmod_info*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @dtrace_modctl_remove(%struct.modctl*) #1

declare dso_local %struct.TYPE_11__* @dtrace_hash_lookup(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @cmn_err(i32, i8*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_hash_remove(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @dtrace_sync(...) #1

declare dso_local i32 @dtrace_strunref(i32) #1

declare dso_local i32 @vmem_free(i32, i8*, i32) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
