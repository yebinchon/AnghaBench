; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_dealloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32, i32, i32, i32, %struct.proc* }
%struct.proc = type { %struct.filedesc* }
%struct.filedesc = type { i32, i64, i32*, i32* }
%struct.knote = type { i32 }
%struct.kqworkloop = type { i64, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.turnstile = type { i32 }
%struct.kqworkq = type { i64, i32, i32*, %struct.TYPE_2__ }
%struct.kqfile = type { i64, i32, i32*, %struct.TYPE_2__ }

@KQ_WORKLOOP = common dso_local global i32 0, align 4
@knlc = common dso_local global i32 0, align 4
@KNOTE_KQ_LOCK_ON_SUCCESS = common dso_local global i32 0, align 4
@kn_link = common dso_local global i32 0, align 4
@KQR_ALLOCATED_TURNSTILE = common dso_local global i32 0, align 4
@kq_lck_grp = common dso_local global i32 0, align 4
@KQ_WORKQ = common dso_local global i32 0, align 4
@kqworkq_zone = common dso_local global i32 0, align 4
@kqworkloop_zone = common dso_local global i32 0, align 4
@kqfile_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kqueue_dealloc(%struct.kqueue* %0) #0 {
  %2 = alloca %struct.kqueue*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.filedesc*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kqworkloop*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.turnstile*, align 8
  %10 = alloca %struct.kqworkloop*, align 8
  store %struct.kqueue* %0, %struct.kqueue** %2, align 8
  %11 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %12 = icmp eq %struct.kqueue* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %253

14:                                               ; preds = %1
  %15 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %16 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %15, i32 0, i32 4
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %3, align 8
  %18 = load %struct.proc*, %struct.proc** %3, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 0
  %20 = load %struct.filedesc*, %struct.filedesc** %19, align 8
  store %struct.filedesc* %20, %struct.filedesc** %4, align 8
  %21 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %22 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @KQ_WORKLOOP, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %156

27:                                               ; preds = %14
  %28 = load i32, i32* @knlc, align 4
  %29 = call i32 @KNOTE_LOCK_CTX(i32 %28)
  %30 = load %struct.proc*, %struct.proc** %3, align 8
  %31 = call i32 @proc_fdlock(%struct.proc* %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %83, %27
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %35 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %32
  %39 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %40 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call %struct.knote* @SLIST_FIRST(i32* %44)
  store %struct.knote* %45, %struct.knote** %5, align 8
  br label %46

46:                                               ; preds = %78, %68, %38
  %47 = load %struct.knote*, %struct.knote** %5, align 8
  %48 = icmp ne %struct.knote* %47, null
  br i1 %48, label %49, label %82

49:                                               ; preds = %46
  %50 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %51 = load %struct.knote*, %struct.knote** %5, align 8
  %52 = call %struct.kqueue* @knote_get_kq(%struct.knote* %51)
  %53 = icmp eq %struct.kqueue* %50, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %56 = call i32 @kqlock(%struct.kqueue* %55)
  %57 = load %struct.proc*, %struct.proc** %3, align 8
  %58 = call i32 @proc_fdunlock(%struct.proc* %57)
  %59 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %60 = load %struct.knote*, %struct.knote** %5, align 8
  %61 = load i32, i32* @KNOTE_KQ_LOCK_ON_SUCCESS, align 4
  %62 = call i64 @knote_lock(%struct.kqueue* %59, %struct.knote* %60, i32* @knlc, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %66 = load %struct.knote*, %struct.knote** %5, align 8
  %67 = call i32 @knote_drop(%struct.kqueue* %65, %struct.knote* %66, i32* @knlc)
  br label %68

68:                                               ; preds = %64, %54
  %69 = load %struct.proc*, %struct.proc** %3, align 8
  %70 = call i32 @proc_fdlock(%struct.proc* %69)
  %71 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %72 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call %struct.knote* @SLIST_FIRST(i32* %76)
  store %struct.knote* %77, %struct.knote** %5, align 8
  br label %46

78:                                               ; preds = %49
  %79 = load %struct.knote*, %struct.knote** %5, align 8
  %80 = load i32, i32* @kn_link, align 4
  %81 = call %struct.knote* @SLIST_NEXT(%struct.knote* %79, i32 %80)
  store %struct.knote* %81, %struct.knote** %5, align 8
  br label %46

82:                                               ; preds = %46
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %32

86:                                               ; preds = %32
  %87 = load %struct.proc*, %struct.proc** %3, align 8
  %88 = call i32 @knhash_lock(%struct.proc* %87)
  %89 = load %struct.proc*, %struct.proc** %3, align 8
  %90 = call i32 @proc_fdunlock(%struct.proc* %89)
  %91 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %92 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %153

95:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %149, %95
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %99 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = add nsw i32 %101, 1
  %103 = icmp slt i32 %97, %102
  br i1 %103, label %104, label %152

104:                                              ; preds = %96
  %105 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %106 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = call %struct.knote* @SLIST_FIRST(i32* %110)
  store %struct.knote* %111, %struct.knote** %5, align 8
  br label %112

112:                                              ; preds = %144, %134, %104
  %113 = load %struct.knote*, %struct.knote** %5, align 8
  %114 = icmp ne %struct.knote* %113, null
  br i1 %114, label %115, label %148

115:                                              ; preds = %112
  %116 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %117 = load %struct.knote*, %struct.knote** %5, align 8
  %118 = call %struct.kqueue* @knote_get_kq(%struct.knote* %117)
  %119 = icmp eq %struct.kqueue* %116, %118
  br i1 %119, label %120, label %144

120:                                              ; preds = %115
  %121 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %122 = call i32 @kqlock(%struct.kqueue* %121)
  %123 = load %struct.proc*, %struct.proc** %3, align 8
  %124 = call i32 @knhash_unlock(%struct.proc* %123)
  %125 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %126 = load %struct.knote*, %struct.knote** %5, align 8
  %127 = load i32, i32* @KNOTE_KQ_LOCK_ON_SUCCESS, align 4
  %128 = call i64 @knote_lock(%struct.kqueue* %125, %struct.knote* %126, i32* @knlc, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %120
  %131 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %132 = load %struct.knote*, %struct.knote** %5, align 8
  %133 = call i32 @knote_drop(%struct.kqueue* %131, %struct.knote* %132, i32* @knlc)
  br label %134

134:                                              ; preds = %130, %120
  %135 = load %struct.proc*, %struct.proc** %3, align 8
  %136 = call i32 @knhash_lock(%struct.proc* %135)
  %137 = load %struct.filedesc*, %struct.filedesc** %4, align 8
  %138 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = call %struct.knote* @SLIST_FIRST(i32* %142)
  store %struct.knote* %143, %struct.knote** %5, align 8
  br label %112

144:                                              ; preds = %115
  %145 = load %struct.knote*, %struct.knote** %5, align 8
  %146 = load i32, i32* @kn_link, align 4
  %147 = call %struct.knote* @SLIST_NEXT(%struct.knote* %145, i32 %146)
  store %struct.knote* %147, %struct.knote** %5, align 8
  br label %112

148:                                              ; preds = %112
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %96

152:                                              ; preds = %96
  br label %153

153:                                              ; preds = %152, %86
  %154 = load %struct.proc*, %struct.proc** %3, align 8
  %155 = call i32 @knhash_unlock(%struct.proc* %154)
  br label %156

156:                                              ; preds = %153, %14
  %157 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %158 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @KQ_WORKLOOP, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %199

163:                                              ; preds = %156
  %164 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %165 = bitcast %struct.kqueue* %164 to %struct.kqworkloop*
  store %struct.kqworkloop* %165, %struct.kqworkloop** %7, align 8
  %166 = load %struct.kqworkloop*, %struct.kqworkloop** %7, align 8
  %167 = bitcast %struct.kqworkloop* %166 to %struct.kqworkq*
  %168 = call i64 @kqworkloop_invalidate(%struct.kqworkq* %167)
  store i64 %168, i64* %8, align 8
  %169 = load i64, i64* %8, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %163
  %172 = load i64, i64* %8, align 8
  %173 = call i32 @thread_deallocate(i64 %172)
  br label %174

174:                                              ; preds = %171, %163
  %175 = load %struct.kqworkloop*, %struct.kqworkloop** %7, align 8
  %176 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @KQR_ALLOCATED_TURNSTILE, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %174
  %183 = load %struct.kqworkloop*, %struct.kqworkloop** %7, align 8
  %184 = ptrtoint %struct.kqworkloop* %183 to i64
  %185 = load %struct.kqworkloop*, %struct.kqworkloop** %7, align 8
  %186 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %185, i32 0, i32 2
  %187 = call i32 @turnstile_complete(i64 %184, i32** %186, %struct.turnstile** %9)
  %188 = call i32 (...) @turnstile_cleanup()
  %189 = load %struct.turnstile*, %struct.turnstile** %9, align 8
  %190 = call i32 @turnstile_deallocate(%struct.turnstile* %189)
  br label %198

191:                                              ; preds = %174
  %192 = load %struct.kqworkloop*, %struct.kqworkloop** %7, align 8
  %193 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = icmp eq i32* %194, null
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  br label %198

198:                                              ; preds = %191, %182
  br label %199

199:                                              ; preds = %198, %156
  %200 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %201 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %200, i32 0, i32 3
  %202 = call i32 @waitq_set_deinit(i32* %201)
  %203 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %204 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %203, i32 0, i32 2
  %205 = load i32, i32* @kq_lck_grp, align 4
  %206 = call i32 @lck_spin_destroy(i32* %204, i32 %205)
  %207 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %208 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %207, i32 0, i32 1
  %209 = load i32, i32* @kq_lck_grp, align 4
  %210 = call i32 @lck_spin_destroy(i32* %208, i32 %209)
  %211 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %212 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @KQ_WORKQ, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %199
  %218 = load i32, i32* @kqworkq_zone, align 4
  %219 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %220 = bitcast %struct.kqueue* %219 to %struct.kqworkq*
  %221 = call i32 @zfree(i32 %218, %struct.kqworkq* %220)
  br label %253

222:                                              ; preds = %199
  %223 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %224 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @KQ_WORKLOOP, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %246

229:                                              ; preds = %222
  %230 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %231 = bitcast %struct.kqueue* %230 to %struct.kqworkloop*
  store %struct.kqworkloop* %231, %struct.kqworkloop** %10, align 8
  %232 = load %struct.kqworkloop*, %struct.kqworkloop** %10, align 8
  %233 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp eq i64 %234, 0
  %236 = zext i1 %235 to i32
  %237 = call i32 @assert(i32 %236)
  %238 = load %struct.kqworkloop*, %struct.kqworkloop** %10, align 8
  %239 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %238, i32 0, i32 1
  %240 = load i32, i32* @kq_lck_grp, align 4
  %241 = call i32 @lck_mtx_destroy(i32* %239, i32 %240)
  %242 = load i32, i32* @kqworkloop_zone, align 4
  %243 = load %struct.kqworkloop*, %struct.kqworkloop** %10, align 8
  %244 = bitcast %struct.kqworkloop* %243 to %struct.kqworkq*
  %245 = call i32 @zfree(i32 %242, %struct.kqworkq* %244)
  br label %252

246:                                              ; preds = %222
  %247 = load i32, i32* @kqfile_zone, align 4
  %248 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %249 = bitcast %struct.kqueue* %248 to %struct.kqfile*
  %250 = bitcast %struct.kqfile* %249 to %struct.kqworkq*
  %251 = call i32 @zfree(i32 %247, %struct.kqworkq* %250)
  br label %252

252:                                              ; preds = %246, %229
  br label %253

253:                                              ; preds = %13, %252, %217
  ret void
}

declare dso_local i32 @KNOTE_LOCK_CTX(i32) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local %struct.knote* @SLIST_FIRST(i32*) #1

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @kqlock(%struct.kqueue*) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

declare dso_local i64 @knote_lock(%struct.kqueue*, %struct.knote*, i32*, i32) #1

declare dso_local i32 @knote_drop(%struct.kqueue*, %struct.knote*, i32*) #1

declare dso_local %struct.knote* @SLIST_NEXT(%struct.knote*, i32) #1

declare dso_local i32 @knhash_lock(%struct.proc*) #1

declare dso_local i32 @knhash_unlock(%struct.proc*) #1

declare dso_local i64 @kqworkloop_invalidate(%struct.kqworkq*) #1

declare dso_local i32 @thread_deallocate(i64) #1

declare dso_local i32 @turnstile_complete(i64, i32**, %struct.turnstile**) #1

declare dso_local i32 @turnstile_cleanup(...) #1

declare dso_local i32 @turnstile_deallocate(%struct.turnstile*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_set_deinit(i32*) #1

declare dso_local i32 @lck_spin_destroy(i32*, i32) #1

declare dso_local i32 @zfree(i32, %struct.kqworkq*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
