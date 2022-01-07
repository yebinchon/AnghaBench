; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_freeup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_freeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuffreehead = type { i32 }
%struct.nfsbuf = type { i64, i32, i64, i32, i32, i32, i32*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.timeval = type { i64 }

@nfs_buf_mutex = common dso_local global i32 0, align 4
@nfsbufcnt = common dso_local global i64 0, align 8
@nfsbuffreecnt = common dso_local global i32 0, align 4
@nfsbuffreemetacnt = common dso_local global i32 0, align 4
@LRU_FREEUP_FRAC_ON_TIMER = common dso_local global i32 0, align 4
@LRU_TO_FREEUP = common dso_local global i32 0, align 4
@nfsbufmin = common dso_local global i64 0, align 8
@nfsbuffree = common dso_local global %struct.nfsbuffreehead zeroinitializer, align 4
@NFSBUF_LRU_STALE = common dso_local global i32 0, align 4
@NFSNOLIST = common dso_local global i64 0, align 8
@nb_vnbufs = common dso_local global i32 0, align 4
@nb_hash = common dso_local global i32 0, align 4
@nb_free = common dso_local global i32 0, align 4
@META_FREEUP_FRAC_ON_TIMER = common dso_local global i32 0, align 4
@META_TO_FREEUP = common dso_local global i32 0, align 4
@nfsbuffreemeta = common dso_local global %struct.nfsbuffreehead zeroinitializer, align 4
@NFSBUF_META_STALE = common dso_local global i32 0, align 4
@nfsbufmetacnt = common dso_local global i32 0, align 4
@NB_META = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_buf_freeup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfsbuf*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsbuffreehead, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 @TAILQ_INIT(%struct.nfsbuffreehead* %6)
  %8 = load i32, i32* @nfs_buf_mutex, align 4
  %9 = call i32 @lck_mtx_lock(i32 %8)
  %10 = call i32 @microuptime(%struct.timeval* %4)
  %11 = load i64, i64* @nfsbufcnt, align 8
  %12 = load i32, i32* @nfsbuffreecnt, align 4
  %13 = load i32, i32* @nfsbuffreemetacnt, align 4
  %14 = call i32 @FSDBG(i32 320, i64 %11, i32 %12, i32 %13, i32 0)
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @nfsbuffreecnt, align 4
  %19 = load i32, i32* @LRU_FREEUP_FRAC_ON_TIMER, align 4
  %20 = sdiv i32 %18, %19
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @LRU_TO_FREEUP, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %20, %17 ], [ %22, %21 ]
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %87, %23
  %26 = load i64, i64* @nfsbufcnt, align 8
  %27 = load i64, i64* @nfsbufmin, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  %32 = icmp sgt i32 %30, 0
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ false, %25 ], [ %32, %29 ]
  br i1 %34, label %35, label %96

35:                                               ; preds = %33
  %36 = call %struct.nfsbuf* @TAILQ_FIRST(%struct.nfsbuffreehead* @nfsbuffree)
  store %struct.nfsbuf* %36, %struct.nfsbuf** %3, align 8
  %37 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %38 = icmp ne %struct.nfsbuf* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %96

40:                                               ; preds = %35
  %41 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %42 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %96

46:                                               ; preds = %40
  %47 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %48 = call i64 @NBUFSTAMPVALID(%struct.nfsbuf* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %52 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @NFSBUF_LRU_STALE, align 4
  %55 = mul nsw i32 2, %54
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %96

62:                                               ; preds = %50, %46
  %63 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %64 = call i32 @nfs_buf_remfree(%struct.nfsbuf* %63)
  %65 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %66 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %87

69:                                               ; preds = %62
  %70 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %71 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NFSNOLIST, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %78 = load i32, i32* @nb_vnbufs, align 4
  %79 = call i32 @LIST_REMOVE(%struct.nfsbuf* %77, i32 %78)
  %80 = load i64, i64* @NFSNOLIST, align 8
  %81 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %82 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %76, %69
  %85 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %86 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %85, i32 0, i32 6
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %84, %62
  %88 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %89 = load i32, i32* @nb_hash, align 4
  %90 = call i32 @LIST_REMOVE(%struct.nfsbuf* %88, i32 %89)
  %91 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %92 = load i32, i32* @nb_free, align 4
  %93 = call i32 @TAILQ_INSERT_TAIL(%struct.nfsbuffreehead* %6, %struct.nfsbuf* %91, i32 %92)
  %94 = load i64, i64* @nfsbufcnt, align 8
  %95 = add nsw i64 %94, -1
  store i64 %95, i64* @nfsbufcnt, align 8
  br label %25

96:                                               ; preds = %61, %45, %39, %33
  %97 = load i32, i32* %2, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* @nfsbuffreemetacnt, align 4
  %101 = load i32, i32* @META_FREEUP_FRAC_ON_TIMER, align 4
  %102 = sdiv i32 %100, %101
  br label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @META_TO_FREEUP, align 4
  br label %105

105:                                              ; preds = %103, %99
  %106 = phi i32 [ %102, %99 ], [ %104, %103 ]
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %169, %105
  %108 = load i64, i64* @nfsbufcnt, align 8
  %109 = load i64, i64* @nfsbufmin, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %5, align 4
  %114 = icmp sgt i32 %112, 0
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i1 [ false, %107 ], [ %114, %111 ]
  br i1 %116, label %117, label %180

117:                                              ; preds = %115
  %118 = call %struct.nfsbuf* @TAILQ_FIRST(%struct.nfsbuffreehead* @nfsbuffreemeta)
  store %struct.nfsbuf* %118, %struct.nfsbuf** %3, align 8
  %119 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %120 = icmp ne %struct.nfsbuf* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  br label %180

122:                                              ; preds = %117
  %123 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %124 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %123, i32 0, i32 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %180

128:                                              ; preds = %122
  %129 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %130 = call i64 @NBUFSTAMPVALID(%struct.nfsbuf* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %134 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @NFSBUF_META_STALE, align 4
  %137 = mul nsw i32 2, %136
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %135, %138
  %140 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp sgt i64 %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %132
  br label %180

144:                                              ; preds = %132, %128
  %145 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %146 = call i32 @nfs_buf_remfree(%struct.nfsbuf* %145)
  %147 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %148 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %147, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %169

151:                                              ; preds = %144
  %152 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %153 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @NFSNOLIST, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %151
  %159 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %160 = load i32, i32* @nb_vnbufs, align 4
  %161 = call i32 @LIST_REMOVE(%struct.nfsbuf* %159, i32 %160)
  %162 = load i64, i64* @NFSNOLIST, align 8
  %163 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %164 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %163, i32 0, i32 7
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  store i64 %162, i64* %165, align 8
  br label %166

166:                                              ; preds = %158, %151
  %167 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %168 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %167, i32 0, i32 6
  store i32* null, i32** %168, align 8
  br label %169

169:                                              ; preds = %166, %144
  %170 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %171 = load i32, i32* @nb_hash, align 4
  %172 = call i32 @LIST_REMOVE(%struct.nfsbuf* %170, i32 %171)
  %173 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %174 = load i32, i32* @nb_free, align 4
  %175 = call i32 @TAILQ_INSERT_TAIL(%struct.nfsbuffreehead* %6, %struct.nfsbuf* %173, i32 %174)
  %176 = load i64, i64* @nfsbufcnt, align 8
  %177 = add nsw i64 %176, -1
  store i64 %177, i64* @nfsbufcnt, align 8
  %178 = load i32, i32* @nfsbufmetacnt, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* @nfsbufmetacnt, align 4
  br label %107

180:                                              ; preds = %143, %127, %121, %115
  %181 = load i64, i64* @nfsbufcnt, align 8
  %182 = load i32, i32* @nfsbuffreecnt, align 4
  %183 = load i32, i32* @nfsbuffreemetacnt, align 4
  %184 = call i32 @FSDBG(i32 320, i64 %181, i32 %182, i32 %183, i32 0)
  %185 = call i32 (...) @NFSBUFCNTCHK()
  %186 = load i32, i32* @nfs_buf_mutex, align 4
  %187 = call i32 @lck_mtx_unlock(i32 %186)
  br label %188

188:                                              ; preds = %234, %180
  %189 = call %struct.nfsbuf* @TAILQ_FIRST(%struct.nfsbuffreehead* %6)
  store %struct.nfsbuf* %189, %struct.nfsbuf** %3, align 8
  %190 = icmp ne %struct.nfsbuf* %189, null
  br i1 %190, label %191, label %238

191:                                              ; preds = %188
  %192 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %193 = load i32, i32* @nb_free, align 4
  %194 = call i32 @TAILQ_REMOVE(%struct.nfsbuffreehead* %6, %struct.nfsbuf* %192, i32 %193)
  %195 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %196 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @IS_VALID_CRED(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %191
  %201 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %202 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %201, i32 0, i32 5
  %203 = call i32 @kauth_cred_unref(i32* %202)
  br label %204

204:                                              ; preds = %200, %191
  %205 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %206 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @IS_VALID_CRED(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %212 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %211, i32 0, i32 4
  %213 = call i32 @kauth_cred_unref(i32* %212)
  br label %214

214:                                              ; preds = %210, %204
  %215 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %216 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @NB_META, align 4
  %219 = call i64 @ISSET(i32 %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %214
  %222 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %223 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %221
  %227 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %228 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %231 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @kfree(i64 %229, i32 %232)
  br label %234

234:                                              ; preds = %226, %221, %214
  %235 = load %struct.nfsbuf*, %struct.nfsbuf** %3, align 8
  %236 = load i32, i32* @M_TEMP, align 4
  %237 = call i32 @FREE(%struct.nfsbuf* %235, i32 %236)
  br label %188

238:                                              ; preds = %188
  ret void
}

declare dso_local i32 @TAILQ_INIT(%struct.nfsbuffreehead*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i32 @FSDBG(i32, i64, i32, i32, i32) #1

declare dso_local %struct.nfsbuf* @TAILQ_FIRST(%struct.nfsbuffreehead*) #1

declare dso_local i64 @NBUFSTAMPVALID(%struct.nfsbuf*) #1

declare dso_local i32 @nfs_buf_remfree(%struct.nfsbuf*) #1

declare dso_local i32 @LIST_REMOVE(%struct.nfsbuf*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.nfsbuffreehead*, %struct.nfsbuf*, i32) #1

declare dso_local i32 @NFSBUFCNTCHK(...) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.nfsbuffreehead*, %struct.nfsbuf*, i32) #1

declare dso_local i64 @IS_VALID_CRED(i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @kfree(i64, i32) #1

declare dso_local i32 @FREE(%struct.nfsbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
