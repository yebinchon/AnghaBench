; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_write_finish.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_write_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { i32, i32, i32, i64, i64, i64, %struct.TYPE_7__, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@NB_ERROR = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@NB_EINTR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NFS_WRITE_UNSTABLE = common dso_local global i64 0, align 8
@NB_NEEDCOMMIT = common dso_local global i32 0, align 4
@NB_WRITEINPROG = common dso_local global i32 0, align 4
@NB_INVAL = common dso_local global i32 0, align 4
@NB_DELWRI = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32 0, align 4
@nfs_nbdwrite = common dso_local global i32 0, align 4
@NB_ASYNC = common dso_local global i32 0, align 4
@NFSNOLIST = common dso_local global i64 0, align 8
@nb_vnbufs = common dso_local global i32 0, align 4
@NWRITEERR = common dso_local global i32 0, align 4
@NNEEDINVALIDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_buf_write_finish(%struct.nfsbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nfsbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nfsbuf* %0, %struct.nfsbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %13 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %12, i32 0, i32 9
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %7, align 8
  %15 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %16 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NB_ERROR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %23 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ %24, %21 ], [ 0, %25 ]
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @EINTR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ERESTART, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %31, %26
  %36 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %37 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NB_ERROR, align 4
  %40 = call i32 @CLR(i32 %38, i32 %39)
  %41 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %42 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NB_EINTR, align 4
  %45 = call i32 @SET(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %35, %31
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %78, label %49

49:                                               ; preds = %46
  %50 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %51 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @round_page_32(i64 %52)
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %57 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @trunc_page_32(i64 %58)
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  %65 = shl i32 1, %64
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 1, %67
  %69 = sub nsw i32 %68, 1
  %70 = xor i32 %69, -1
  %71 = and i32 %66, %70
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %75 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %49, %46
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %119, label %81

81:                                               ; preds = %78
  %82 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %83 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NFS_WRITE_UNSTABLE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %119

87:                                               ; preds = %81
  %88 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %89 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @NB_NEEDCOMMIT, align 4
  %92 = call i64 @ISSET(i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %87
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %96 = call i32 @nfs_node_lock_force(%struct.TYPE_8__* %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %102 = call i32 @nfs_node_unlock(%struct.TYPE_8__* %101)
  %103 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %104 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @NB_NEEDCOMMIT, align 4
  %107 = call i32 @SET(i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %94, %87
  %109 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %110 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %109, i32 0, i32 8
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %113 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %112, i32 0, i32 5
  store i64 %111, i64* %113, align 8
  %114 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %115 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %118 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %117, i32 0, i32 4
  store i64 %116, i64* %118, align 8
  br label %143

119:                                              ; preds = %81, %78
  %120 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %121 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @NB_NEEDCOMMIT, align 4
  %124 = call i64 @ISSET(i32 %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %119
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %128 = call i32 @nfs_node_lock_force(%struct.TYPE_8__* %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %130, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = call i32 @CHECK_NEEDCOMMITCNT(%struct.TYPE_8__* %133)
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %136 = call i32 @nfs_node_unlock(%struct.TYPE_8__* %135)
  %137 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %138 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @NB_NEEDCOMMIT, align 4
  %141 = call i32 @CLR(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %126, %119
  br label %143

143:                                              ; preds = %142, %108
  %144 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %145 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @NB_WRITEINPROG, align 4
  %148 = call i32 @CLR(i32 %146, i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @EINTR, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %166, label %152

152:                                              ; preds = %143
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @ERESTART, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %166, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %220, label %159

159:                                              ; preds = %156
  %160 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %161 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @NB_NEEDCOMMIT, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %220

166:                                              ; preds = %159, %152, %143
  %167 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %168 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @NB_INVAL, align 4
  %171 = call i32 @CLR(i32 %169, i32 %170)
  %172 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %173 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @NB_DELWRI, align 4
  %176 = call i64 @ISSET(i32 %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %191, label %178

178:                                              ; preds = %166
  %179 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %180 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @NB_DELWRI, align 4
  %183 = call i32 @SET(i32 %181, i32 %182)
  %184 = load i32, i32* @nfs_buf_mutex, align 4
  %185 = call i32 @lck_mtx_lock(i32 %184)
  %186 = load i32, i32* @nfs_nbdwrite, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* @nfs_nbdwrite, align 4
  %188 = call i32 (...) @NFSBUFCNTCHK()
  %189 = load i32, i32* @nfs_buf_mutex, align 4
  %190 = call i32 @lck_mtx_unlock(i32 %189)
  br label %191

191:                                              ; preds = %178, %166
  %192 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %193 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @NB_ASYNC, align 4
  %196 = call i64 @ISSET(i32 %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %219

198:                                              ; preds = %191
  %199 = load i32, i32* @nfs_buf_mutex, align 4
  %200 = call i32 @lck_mtx_lock(i32 %199)
  %201 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %202 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %201, i32 0, i32 6
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @NFSNOLIST, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %198
  %208 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %209 = load i32, i32* @nb_vnbufs, align 4
  %210 = call i32 @LIST_REMOVE(%struct.nfsbuf* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %198
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 2
  %214 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %215 = load i32, i32* @nb_vnbufs, align 4
  %216 = call i32 @LIST_INSERT_HEAD(i32* %213, %struct.nfsbuf* %214, i32 %215)
  %217 = load i32, i32* @nfs_buf_mutex, align 4
  %218 = call i32 @lck_mtx_unlock(i32 %217)
  br label %219

219:                                              ; preds = %211, %191
  br label %245

220:                                              ; preds = %159, %156
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %240

223:                                              ; preds = %220
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %225 = call i32 @nfs_node_lock_force(%struct.TYPE_8__* %224)
  %226 = load i32, i32* %8, align 4
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* @NWRITEERR, align 4
  %230 = load i32, i32* @NNEEDINVALIDATE, align 4
  %231 = or i32 %229, %230
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 4
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %237 = call i32 @NATTRINVALIDATE(%struct.TYPE_8__* %236)
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %239 = call i32 @nfs_node_unlock(%struct.TYPE_8__* %238)
  br label %240

240:                                              ; preds = %223, %220
  %241 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %242 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %241, i32 0, i32 4
  store i64 0, i64* %242, align 8
  %243 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %244 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %243, i32 0, i32 5
  store i64 0, i64* %244, align 8
  br label %245

245:                                              ; preds = %240, %219
  %246 = load i32, i32* %8, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %258, label %248

248:                                              ; preds = %245
  %249 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %250 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @nfs_buf_write_dirty_pages(%struct.nfsbuf* %254, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %253, %248, %245
  %259 = load %struct.nfsbuf*, %struct.nfsbuf** %4, align 8
  %260 = call i32 @nfs_buf_iodone(%struct.nfsbuf* %259)
  ret void
}

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @SET(i32, i32) #1

declare dso_local i32 @round_page_32(i64) #1

declare dso_local i32 @trunc_page_32(i64) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @nfs_node_lock_force(%struct.TYPE_8__*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @CHECK_NEEDCOMMITCNT(%struct.TYPE_8__*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @NFSBUFCNTCHK(...) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.nfsbuf*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.nfsbuf*, i32) #1

declare dso_local i32 @NATTRINVALIDATE(%struct.TYPE_8__*) #1

declare dso_local i32 @nfs_buf_write_dirty_pages(%struct.nfsbuf*, i32, i32) #1

declare dso_local i32 @nfs_buf_iodone(%struct.nfsbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
