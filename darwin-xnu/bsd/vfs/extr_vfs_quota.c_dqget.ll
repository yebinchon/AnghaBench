; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqget.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_dqget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, %struct.quotafile*, i32, i32, %struct.TYPE_2__ }
%struct.quotafile = type { i64, i64, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.TYPE_2__ = type { %struct.dquot* }
%struct.dqhash = type { %struct.dquot* }
%struct.timeval = type { i64 }

@NODQUOT = common dso_local global %struct.dquot* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.vnode* null, align 8
@DQ_MOD = common dso_local global i32 0, align 4
@dqdirtylist = common dso_local global i32 0, align 4
@dq_freelist = common dso_local global i32 0, align 4
@dqfreelist = common dso_local global i32 0, align 4
@M_DQUOT = common dso_local global i32 0, align 4
@numdquot = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4
@desiredvnodes = common dso_local global i32 0, align 4
@DQUOTINC = common dso_local global i64 0, align 8
@desireddquot = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"dquot\00", align 1
@EUSERS = common dso_local global i32 0, align 4
@dq_hash = common dso_local global i32 0, align 4
@DQ_FAKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dqget(i64 %0, %struct.quotafile* %1, i32 %2, %struct.dquot** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.quotafile*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dquot**, align 8
  %10 = alloca %struct.dquot*, align 8
  %11 = alloca %struct.dquot*, align 8
  %12 = alloca %struct.dquot*, align 8
  %13 = alloca %struct.dqhash*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.timeval, align 8
  store i64 %0, i64* %6, align 8
  store %struct.quotafile* %1, %struct.quotafile** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dquot** %3, %struct.dquot*** %9, align 8
  store %struct.dquot* null, %struct.dquot** %11, align 8
  store %struct.dquot* null, %struct.dquot** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = call i32 (...) @dqisinitialized()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %22 = load %struct.dquot**, %struct.dquot*** %9, align 8
  store %struct.dquot* %21, %struct.dquot** %22, align 8
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %5, align 4
  br label %403

24:                                               ; preds = %4
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %29 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %28, i32 0, i32 2
  %30 = load %struct.vnode*, %struct.vnode** %29, align 8
  %31 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %32 = icmp eq %struct.vnode* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %24
  %34 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %35 = load %struct.dquot**, %struct.dquot*** %9, align 8
  store %struct.dquot* %34, %struct.dquot** %35, align 8
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %5, align 4
  br label %403

37:                                               ; preds = %27
  %38 = call i32 (...) @dq_list_lock()
  %39 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %40 = call i64 @qf_ref(%struct.quotafile* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = call i32 (...) @dq_list_unlock()
  %44 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %45 = load %struct.dquot**, %struct.dquot*** %9, align 8
  store %struct.dquot* %44, %struct.dquot** %45, align 8
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %5, align 4
  br label %403

47:                                               ; preds = %37
  %48 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %49 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %48, i32 0, i32 2
  %50 = load %struct.vnode*, %struct.vnode** %49, align 8
  store %struct.vnode* %50, %struct.vnode** %14, align 8
  %51 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8
  %52 = icmp eq %struct.vnode* %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %55 = call i32 @qf_rele(%struct.quotafile* %54)
  %56 = call i32 (...) @dq_list_unlock()
  %57 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %58 = load %struct.dquot**, %struct.dquot*** %9, align 8
  store %struct.dquot* %57, %struct.dquot** %58, align 8
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %5, align 4
  br label %403

60:                                               ; preds = %47
  %61 = load %struct.vnode*, %struct.vnode** %14, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call %struct.dqhash* @DQHASH(%struct.vnode* %61, i64 %62)
  store %struct.dqhash* %63, %struct.dqhash** %13, align 8
  br label %64

64:                                               ; preds = %276, %265, %246, %194, %115, %93, %60
  %65 = call i32 (...) @dq_list_lock_val()
  store i32 %65, i32* %16, align 4
  %66 = load %struct.dqhash*, %struct.dqhash** %13, align 8
  %67 = getelementptr inbounds %struct.dqhash, %struct.dqhash* %66, i32 0, i32 0
  %68 = load %struct.dquot*, %struct.dquot** %67, align 8
  store %struct.dquot* %68, %struct.dquot** %10, align 8
  br label %69

69:                                               ; preds = %162, %64
  %70 = load %struct.dquot*, %struct.dquot** %10, align 8
  %71 = icmp ne %struct.dquot* %70, null
  br i1 %71, label %72, label %167

72:                                               ; preds = %69
  %73 = load %struct.dquot*, %struct.dquot** %10, align 8
  %74 = getelementptr inbounds %struct.dquot, %struct.dquot* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %72
  %79 = load %struct.dquot*, %struct.dquot** %10, align 8
  %80 = getelementptr inbounds %struct.dquot, %struct.dquot* %79, i32 0, i32 10
  %81 = load %struct.quotafile*, %struct.quotafile** %80, align 8
  %82 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %81, i32 0, i32 2
  %83 = load %struct.vnode*, %struct.vnode** %82, align 8
  %84 = load %struct.vnode*, %struct.vnode** %14, align 8
  %85 = icmp ne %struct.vnode* %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78, %72
  br label %162

87:                                               ; preds = %78
  %88 = load %struct.dquot*, %struct.dquot** %10, align 8
  %89 = call i32 @dq_lock_internal(%struct.dquot* %88)
  %90 = load i32, i32* %16, align 4
  %91 = call i64 @dq_list_lock_changed(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.dquot*, %struct.dquot** %10, align 8
  %95 = call i32 @dq_unlock_internal(%struct.dquot* %94)
  br label %64

96:                                               ; preds = %87
  %97 = load %struct.dquot*, %struct.dquot** %10, align 8
  %98 = getelementptr inbounds %struct.dquot, %struct.dquot* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %115, label %102

102:                                              ; preds = %96
  %103 = load %struct.dquot*, %struct.dquot** %10, align 8
  %104 = getelementptr inbounds %struct.dquot, %struct.dquot* %103, i32 0, i32 10
  %105 = load %struct.quotafile*, %struct.quotafile** %104, align 8
  %106 = icmp eq %struct.quotafile* %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %102
  %108 = load %struct.dquot*, %struct.dquot** %10, align 8
  %109 = getelementptr inbounds %struct.dquot, %struct.dquot* %108, i32 0, i32 10
  %110 = load %struct.quotafile*, %struct.quotafile** %109, align 8
  %111 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %110, i32 0, i32 2
  %112 = load %struct.vnode*, %struct.vnode** %111, align 8
  %113 = load %struct.vnode*, %struct.vnode** %14, align 8
  %114 = icmp ne %struct.vnode* %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %107, %102, %96
  %116 = load %struct.dquot*, %struct.dquot** %10, align 8
  %117 = call i32 @dq_unlock_internal(%struct.dquot* %116)
  br label %64

118:                                              ; preds = %107
  %119 = load %struct.dquot*, %struct.dquot** %10, align 8
  %120 = getelementptr inbounds %struct.dquot, %struct.dquot* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = icmp eq i32 %121, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %118
  %125 = load %struct.dquot*, %struct.dquot** %10, align 8
  %126 = getelementptr inbounds %struct.dquot, %struct.dquot* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @DQ_MOD, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load %struct.dquot*, %struct.dquot** %10, align 8
  %133 = load i32, i32* @dq_freelist, align 4
  %134 = call i32 @TAILQ_REMOVE(i32* @dqdirtylist, %struct.dquot* %132, i32 %133)
  br label %139

135:                                              ; preds = %124
  %136 = load %struct.dquot*, %struct.dquot** %10, align 8
  %137 = load i32, i32* @dq_freelist, align 4
  %138 = call i32 @TAILQ_REMOVE(i32* @dqfreelist, %struct.dquot* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %131
  br label %140

140:                                              ; preds = %139, %118
  %141 = load %struct.dquot*, %struct.dquot** %10, align 8
  %142 = call i32 @dq_unlock_internal(%struct.dquot* %141)
  %143 = load %struct.dquot*, %struct.dquot** %12, align 8
  %144 = icmp ne %struct.dquot* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load %struct.dquot*, %struct.dquot** %12, align 8
  %147 = load i32, i32* @dq_freelist, align 4
  %148 = call i32 @TAILQ_INSERT_HEAD(i32* @dqfreelist, %struct.dquot* %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %140
  %150 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %151 = call i32 @qf_rele(%struct.quotafile* %150)
  %152 = call i32 (...) @dq_list_unlock()
  %153 = load %struct.dquot*, %struct.dquot** %11, align 8
  %154 = icmp ne %struct.dquot* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load %struct.dquot*, %struct.dquot** %11, align 8
  %157 = load i32, i32* @M_DQUOT, align 4
  %158 = call i32 @_FREE(%struct.dquot* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %149
  %160 = load %struct.dquot*, %struct.dquot** %10, align 8
  %161 = load %struct.dquot**, %struct.dquot*** %9, align 8
  store %struct.dquot* %160, %struct.dquot** %161, align 8
  store i32 0, i32* %5, align 4
  br label %403

162:                                              ; preds = %86
  %163 = load %struct.dquot*, %struct.dquot** %10, align 8
  %164 = getelementptr inbounds %struct.dquot, %struct.dquot* %163, i32 0, i32 13
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load %struct.dquot*, %struct.dquot** %165, align 8
  store %struct.dquot* %166, %struct.dquot** %10, align 8
  br label %69

167:                                              ; preds = %69
  %168 = call i64 @TAILQ_EMPTY(i32* @dqfreelist)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load i32, i32* @numdquot, align 4
  %172 = load i32, i32* @MAXQUOTAS, align 4
  %173 = load i32, i32* @desiredvnodes, align 4
  %174 = mul nsw i32 %172, %173
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = load i64, i64* @DQUOTINC, align 8
  %178 = load i32, i32* @desireddquot, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* @desireddquot, align 4
  br label %182

182:                                              ; preds = %176, %170, %167
  %183 = load %struct.dquot*, %struct.dquot** %12, align 8
  %184 = icmp ne %struct.dquot* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load %struct.dquot*, %struct.dquot** %12, align 8
  store %struct.dquot* %186, %struct.dquot** %10, align 8
  store %struct.dquot* null, %struct.dquot** %12, align 8
  br label %270

187:                                              ; preds = %182
  %188 = load i32, i32* @numdquot, align 4
  %189 = load i32, i32* @desireddquot, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %209

191:                                              ; preds = %187
  %192 = load %struct.dquot*, %struct.dquot** %11, align 8
  %193 = icmp eq %struct.dquot* %192, null
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = call i32 (...) @dq_list_unlock()
  %196 = load i32, i32* @M_DQUOT, align 4
  %197 = load i32, i32* @M_WAITOK, align 4
  %198 = call i64 @_MALLOC(i32 96, i32 %196, i32 %197)
  %199 = inttoptr i64 %198 to %struct.dquot*
  store %struct.dquot* %199, %struct.dquot** %11, align 8
  %200 = load %struct.dquot*, %struct.dquot** %11, align 8
  %201 = bitcast %struct.dquot* %200 to i8*
  %202 = call i32 @bzero(i8* %201, i32 96)
  %203 = call i32 (...) @dq_list_lock()
  store i32 %203, i32* %16, align 4
  br label %64

204:                                              ; preds = %191
  %205 = load %struct.dquot*, %struct.dquot** %11, align 8
  store %struct.dquot* %205, %struct.dquot** %10, align 8
  store %struct.dquot* null, %struct.dquot** %11, align 8
  %206 = load i32, i32* @numdquot, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* @numdquot, align 4
  br label %208

208:                                              ; preds = %204
  br label %269

209:                                              ; preds = %187
  %210 = call i64 @TAILQ_EMPTY(i32* @dqfreelist)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %227

212:                                              ; preds = %209
  %213 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %214 = call i32 @qf_rele(%struct.quotafile* %213)
  %215 = call i32 (...) @dq_list_unlock()
  %216 = load %struct.dquot*, %struct.dquot** %11, align 8
  %217 = icmp ne %struct.dquot* %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load %struct.dquot*, %struct.dquot** %11, align 8
  %220 = load i32, i32* @M_DQUOT, align 4
  %221 = call i32 @_FREE(%struct.dquot* %219, i32 %220)
  br label %222

222:                                              ; preds = %218, %212
  %223 = call i32 @tablefull(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %224 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %225 = load %struct.dquot**, %struct.dquot*** %9, align 8
  store %struct.dquot* %224, %struct.dquot** %225, align 8
  %226 = load i32, i32* @EUSERS, align 4
  store i32 %226, i32* %5, align 4
  br label %403

227:                                              ; preds = %209
  %228 = call %struct.dquot* @TAILQ_FIRST(i32* @dqfreelist)
  store %struct.dquot* %228, %struct.dquot** %10, align 8
  %229 = load %struct.dquot*, %struct.dquot** %10, align 8
  %230 = call i32 @dq_lock_internal(%struct.dquot* %229)
  %231 = load i32, i32* %16, align 4
  %232 = call i64 @dq_list_lock_changed(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %246, label %234

234:                                              ; preds = %227
  %235 = load %struct.dquot*, %struct.dquot** %10, align 8
  %236 = getelementptr inbounds %struct.dquot, %struct.dquot* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %234
  %240 = load %struct.dquot*, %struct.dquot** %10, align 8
  %241 = getelementptr inbounds %struct.dquot, %struct.dquot* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @DQ_MOD, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %239, %234, %227
  %247 = load %struct.dquot*, %struct.dquot** %10, align 8
  %248 = call i32 @dq_unlock_internal(%struct.dquot* %247)
  br label %64

249:                                              ; preds = %239
  %250 = load %struct.dquot*, %struct.dquot** %10, align 8
  %251 = load i32, i32* @dq_freelist, align 4
  %252 = call i32 @TAILQ_REMOVE(i32* @dqfreelist, %struct.dquot* %250, i32 %251)
  %253 = load %struct.dquot*, %struct.dquot** %10, align 8
  %254 = getelementptr inbounds %struct.dquot, %struct.dquot* %253, i32 0, i32 10
  %255 = load %struct.quotafile*, %struct.quotafile** %254, align 8
  %256 = icmp ne %struct.quotafile* %255, null
  br i1 %256, label %257, label %265

257:                                              ; preds = %249
  %258 = load %struct.dquot*, %struct.dquot** %10, align 8
  %259 = load i32, i32* @dq_hash, align 4
  %260 = call i32 @LIST_REMOVE(%struct.dquot* %258, i32 %259)
  %261 = load %struct.dquot*, %struct.dquot** %10, align 8
  %262 = getelementptr inbounds %struct.dquot, %struct.dquot* %261, i32 0, i32 10
  store %struct.quotafile* null, %struct.quotafile** %262, align 8
  %263 = load %struct.dquot*, %struct.dquot** %10, align 8
  %264 = getelementptr inbounds %struct.dquot, %struct.dquot* %263, i32 0, i32 0
  store i64 0, i64* %264, align 8
  br label %265

265:                                              ; preds = %257, %249
  %266 = load %struct.dquot*, %struct.dquot** %10, align 8
  %267 = call i32 @dq_unlock_internal(%struct.dquot* %266)
  %268 = load %struct.dquot*, %struct.dquot** %10, align 8
  store %struct.dquot* %268, %struct.dquot** %12, align 8
  br label %64

269:                                              ; preds = %208
  br label %270

270:                                              ; preds = %269, %185
  %271 = load %struct.dquot*, %struct.dquot** %10, align 8
  %272 = call i32 @dq_lock_internal(%struct.dquot* %271)
  %273 = load i32, i32* %16, align 4
  %274 = call i64 @dq_list_lock_changed(i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %270
  %277 = load %struct.dquot*, %struct.dquot** %10, align 8
  %278 = call i32 @dq_unlock_internal(%struct.dquot* %277)
  br label %64

279:                                              ; preds = %270
  %280 = load %struct.dquot*, %struct.dquot** %10, align 8
  %281 = getelementptr inbounds %struct.dquot, %struct.dquot* %280, i32 0, i32 1
  store i32 1, i32* %281, align 8
  %282 = load %struct.dquot*, %struct.dquot** %10, align 8
  %283 = getelementptr inbounds %struct.dquot, %struct.dquot* %282, i32 0, i32 2
  store i32 0, i32* %283, align 4
  %284 = load i64, i64* %6, align 8
  %285 = load %struct.dquot*, %struct.dquot** %10, align 8
  %286 = getelementptr inbounds %struct.dquot, %struct.dquot* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  %287 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %288 = load %struct.dquot*, %struct.dquot** %10, align 8
  %289 = getelementptr inbounds %struct.dquot, %struct.dquot* %288, i32 0, i32 10
  store %struct.quotafile* %287, %struct.quotafile** %289, align 8
  %290 = load i32, i32* %8, align 4
  %291 = load %struct.dquot*, %struct.dquot** %10, align 8
  %292 = getelementptr inbounds %struct.dquot, %struct.dquot* %291, i32 0, i32 3
  store i32 %290, i32* %292, align 8
  %293 = load %struct.dqhash*, %struct.dqhash** %13, align 8
  %294 = load %struct.dquot*, %struct.dquot** %10, align 8
  %295 = load i32, i32* @dq_hash, align 4
  %296 = call i32 @LIST_INSERT_HEAD(%struct.dqhash* %293, %struct.dquot* %294, i32 %295)
  %297 = call i32 (...) @dq_list_unlock()
  %298 = load %struct.dquot*, %struct.dquot** %11, align 8
  %299 = icmp ne %struct.dquot* %298, null
  br i1 %299, label %300, label %304

300:                                              ; preds = %279
  %301 = load %struct.dquot*, %struct.dquot** %11, align 8
  %302 = load i32, i32* @M_DQUOT, align 4
  %303 = call i32 @_FREE(%struct.dquot* %301, i32 %302)
  br label %304

304:                                              ; preds = %300, %279
  %305 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %306 = load i64, i64* %6, align 8
  %307 = load %struct.dquot*, %struct.dquot** %10, align 8
  %308 = getelementptr inbounds %struct.dquot, %struct.dquot* %307, i32 0, i32 12
  %309 = load %struct.dquot*, %struct.dquot** %10, align 8
  %310 = getelementptr inbounds %struct.dquot, %struct.dquot* %309, i32 0, i32 11
  %311 = call i32 @dqlookup(%struct.quotafile* %305, i64 %306, i32* %308, i32* %310)
  store i32 %311, i32* %15, align 4
  %312 = load i32, i32* %15, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %333

314:                                              ; preds = %304
  %315 = call i32 (...) @dq_list_lock()
  %316 = load %struct.dquot*, %struct.dquot** %10, align 8
  %317 = getelementptr inbounds %struct.dquot, %struct.dquot* %316, i32 0, i32 0
  store i64 0, i64* %317, align 8
  %318 = load %struct.dquot*, %struct.dquot** %10, align 8
  %319 = getelementptr inbounds %struct.dquot, %struct.dquot* %318, i32 0, i32 10
  store %struct.quotafile* null, %struct.quotafile** %319, align 8
  %320 = load %struct.dquot*, %struct.dquot** %10, align 8
  %321 = load i32, i32* @dq_hash, align 4
  %322 = call i32 @LIST_REMOVE(%struct.dquot* %320, i32 %321)
  %323 = load %struct.dquot*, %struct.dquot** %10, align 8
  %324 = call i32 @dq_unlock_internal(%struct.dquot* %323)
  %325 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %326 = call i32 @qf_rele(%struct.quotafile* %325)
  %327 = call i32 (...) @dq_list_unlock()
  %328 = load %struct.dquot*, %struct.dquot** %10, align 8
  %329 = call i32 @dqrele(%struct.dquot* %328)
  %330 = load %struct.dquot*, %struct.dquot** @NODQUOT, align 8
  %331 = load %struct.dquot**, %struct.dquot*** %9, align 8
  store %struct.dquot* %330, %struct.dquot** %331, align 8
  %332 = load i32, i32* %15, align 4
  store i32 %332, i32* %5, align 4
  br label %403

333:                                              ; preds = %304
  %334 = load %struct.dquot*, %struct.dquot** %10, align 8
  %335 = getelementptr inbounds %struct.dquot, %struct.dquot* %334, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %359

338:                                              ; preds = %333
  %339 = load %struct.dquot*, %struct.dquot** %10, align 8
  %340 = getelementptr inbounds %struct.dquot, %struct.dquot* %339, i32 0, i32 5
  %341 = load i64, i64* %340, align 8
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %343, label %359

343:                                              ; preds = %338
  %344 = load %struct.dquot*, %struct.dquot** %10, align 8
  %345 = getelementptr inbounds %struct.dquot, %struct.dquot* %344, i32 0, i32 6
  %346 = load i64, i64* %345, align 8
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %359

348:                                              ; preds = %343
  %349 = load %struct.dquot*, %struct.dquot** %10, align 8
  %350 = getelementptr inbounds %struct.dquot, %struct.dquot* %349, i32 0, i32 7
  %351 = load i64, i64* %350, align 8
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %348
  %354 = load i32, i32* @DQ_FAKE, align 4
  %355 = load %struct.dquot*, %struct.dquot** %10, align 8
  %356 = getelementptr inbounds %struct.dquot, %struct.dquot* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = or i32 %357, %354
  store i32 %358, i32* %356, align 4
  br label %359

359:                                              ; preds = %353, %348, %343, %338, %333
  %360 = load %struct.dquot*, %struct.dquot** %10, align 8
  %361 = getelementptr inbounds %struct.dquot, %struct.dquot* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %394

364:                                              ; preds = %359
  %365 = call i32 @microtime(%struct.timeval* %17)
  %366 = load %struct.dquot*, %struct.dquot** %10, align 8
  %367 = getelementptr inbounds %struct.dquot, %struct.dquot* %366, i32 0, i32 8
  %368 = load i64, i64* %367, align 8
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %370, label %379

370:                                              ; preds = %364
  %371 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %374 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = add nsw i64 %372, %375
  %377 = load %struct.dquot*, %struct.dquot** %10, align 8
  %378 = getelementptr inbounds %struct.dquot, %struct.dquot* %377, i32 0, i32 8
  store i64 %376, i64* %378, align 8
  br label %379

379:                                              ; preds = %370, %364
  %380 = load %struct.dquot*, %struct.dquot** %10, align 8
  %381 = getelementptr inbounds %struct.dquot, %struct.dquot* %380, i32 0, i32 9
  %382 = load i64, i64* %381, align 8
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %393

384:                                              ; preds = %379
  %385 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %388 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %386, %389
  %391 = load %struct.dquot*, %struct.dquot** %10, align 8
  %392 = getelementptr inbounds %struct.dquot, %struct.dquot* %391, i32 0, i32 9
  store i64 %390, i64* %392, align 8
  br label %393

393:                                              ; preds = %384, %379
  br label %394

394:                                              ; preds = %393, %359
  %395 = call i32 (...) @dq_list_lock()
  %396 = load %struct.dquot*, %struct.dquot** %10, align 8
  %397 = call i32 @dq_unlock_internal(%struct.dquot* %396)
  %398 = load %struct.quotafile*, %struct.quotafile** %7, align 8
  %399 = call i32 @qf_rele(%struct.quotafile* %398)
  %400 = call i32 (...) @dq_list_unlock()
  %401 = load %struct.dquot*, %struct.dquot** %10, align 8
  %402 = load %struct.dquot**, %struct.dquot*** %9, align 8
  store %struct.dquot* %401, %struct.dquot** %402, align 8
  store i32 0, i32* %5, align 4
  br label %403

403:                                              ; preds = %394, %314, %222, %159, %53, %42, %33, %20
  %404 = load i32, i32* %5, align 4
  ret i32 %404
}

declare dso_local i32 @dqisinitialized(...) #1

declare dso_local i32 @dq_list_lock(...) #1

declare dso_local i64 @qf_ref(%struct.quotafile*) #1

declare dso_local i32 @dq_list_unlock(...) #1

declare dso_local i32 @qf_rele(%struct.quotafile*) #1

declare dso_local %struct.dqhash* @DQHASH(%struct.vnode*, i64) #1

declare dso_local i32 @dq_list_lock_val(...) #1

declare dso_local i32 @dq_lock_internal(%struct.dquot*) #1

declare dso_local i64 @dq_list_lock_changed(i32) #1

declare dso_local i32 @dq_unlock_internal(%struct.dquot*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.dquot*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.dquot*, i32) #1

declare dso_local i32 @_FREE(%struct.dquot*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i64 @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @tablefull(i8*) #1

declare dso_local %struct.dquot* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.dquot*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.dqhash*, %struct.dquot*, i32) #1

declare dso_local i32 @dqlookup(%struct.quotafile*, i64, i32*, i32*) #1

declare dso_local i32 @dqrele(%struct.dquot*) #1

declare dso_local i32 @microtime(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
