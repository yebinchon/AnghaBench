; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_howmany.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_m_howmany.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MC_BIGCL = common dso_local global i32 0, align 4
@MC_16KCL = common dso_local global i32 0, align 4
@mbuf_mlock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@MC_MBUF = common dso_local global i32 0, align 4
@NMBPCLSHIFT = common dso_local global i32 0, align 4
@MC_CL = common dso_local global i32 0, align 4
@NCLPBGSHIFT = common dso_local global i32 0, align 4
@nclusters = common dso_local global i32 0, align 4
@njcl = common dso_local global i32 0, align 4
@NCLPJCLSHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"maxed out nclusters (%u >= %u) or njcl (%u >= %u)\00", align 1
@MBUF_GROWTH_NORMAL_THRESH = common dso_local global i32 0, align 4
@MB_GROWTH_NORMAL = common dso_local global i32 0, align 4
@MB_GROWTH_AGGRESSIVE = common dso_local global i32 0, align 4
@MBIGCL_LOWAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @m_howmany to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_howmany(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* @MC_BIGCL, align 4
  %24 = call i64 @m_maxsize(i32 %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @MC_16KCL, align 4
  %29 = call i64 @m_maxsize(i32 %28)
  %30 = icmp eq i64 %27, %29
  br label %31

31:                                               ; preds = %26, %2
  %32 = phi i1 [ true, %2 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @VERIFY(i32 %33)
  %35 = load i32, i32* @mbuf_mlock, align 4
  %36 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %37 = call i32 @LCK_MTX_ASSERT(i32 %35, i32 %36)
  %38 = load i32, i32* @MC_MBUF, align 4
  %39 = call i32 @m_total(i32 %38)
  %40 = load i32, i32* @NMBPCLSHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @MC_CL, align 4
  %43 = call i32 @m_total(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @MC_BIGCL, align 4
  %45 = call i32 @m_total(i32 %44)
  %46 = load i32, i32* @NCLPBGSHIFT, align 4
  %47 = shl i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @MC_16KCL, align 4
  %49 = call i32 @m_total(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* @MC_MBUF, align 4
  %56 = call i32 @m_infree(i32 %55)
  %57 = load i32, i32* @NMBPCLSHIFT, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* @MC_CL, align 4
  %60 = call i32 @m_infree(i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* @MC_BIGCL, align 4
  %62 = call i32 @m_infree(i32 %61)
  %63 = load i32, i32* @NCLPBGSHIFT, align 4
  %64 = shl i32 %62, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* @MC_16KCL, align 4
  %66 = call i32 @m_infree(i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %17, align 4
  %72 = load i64, i64* %5, align 8
  %73 = load i32, i32* @MC_BIGCL, align 4
  %74 = call i64 @m_maxsize(i32 %73)
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %31
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @nclusters, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %94, label %80

80:                                               ; preds = %76, %31
  %81 = load i32, i32* @njcl, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load i64, i64* %5, align 8
  %85 = load i32, i32* @MC_16KCL, align 4
  %86 = call i64 @m_maxsize(i32 %85)
  %87 = icmp eq i64 %84, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @NCLPJCLSHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* @njcl, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88, %76
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* @nclusters, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @NCLPJCLSHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* @njcl, align 4
  %101 = call i32 @mbwdog_logger(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96, i32 %99, i32 %100)
  store i32 0, i32* %3, align 4
  br label %291

102:                                              ; preds = %88, %83, %80
  %103 = load i64, i64* %5, align 8
  %104 = load i32, i32* @MC_BIGCL, align 4
  %105 = call i64 @m_maxsize(i32 %104)
  %106 = icmp eq i64 %103, %105
  br i1 %106, label %107, label %245

107:                                              ; preds = %102
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @MC_BIGCL, align 4
  %110 = call i32 @m_minlimit(i32 %109)
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* @MC_BIGCL, align 4
  %114 = call i32 @m_minlimit(i32 %113)
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %3, align 4
  br label %291

117:                                              ; preds = %107
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %17, align 4
  %120 = sub nsw i32 %118, %119
  %121 = mul nsw i32 %120, 100
  %122 = load i32, i32* %16, align 4
  %123 = sdiv i32 %121, %122
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %16, align 4
  %125 = mul nsw i32 %124, 100
  %126 = load i32, i32* @nclusters, align 4
  %127 = sdiv i32 %125, %126
  store i32 %127, i32* %19, align 4
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* @MBUF_GROWTH_NORMAL_THRESH, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %117
  %132 = load i32, i32* @MB_GROWTH_NORMAL, align 4
  store i32 %132, i32* %20, align 4
  br label %135

133:                                              ; preds = %117
  %134 = load i32, i32* @MB_GROWTH_AGGRESSIVE, align 4
  store i32 %134, i32* %20, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = load i32, i32* %19, align 4
  %137 = icmp slt i32 %136, 5
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %6, align 4
  br label %203

140:                                              ; preds = %135
  %141 = load i32, i32* @MC_BIGCL, align 4
  %142 = call i32 @m_infree(i32 %141)
  %143 = load i32, i32* @MBIGCL_LOWAT, align 4
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = load i32, i32* @MC_BIGCL, align 4
  %147 = call i32 @m_total(i32 %146)
  %148 = load i32, i32* @MBIGCL_LOWAT, align 4
  %149 = load i32, i32* @MC_BIGCL, align 4
  %150 = call i32 @m_minlimit(i32 %149)
  %151 = add nsw i32 %148, %150
  %152 = icmp sge i32 %147, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  store i32 0, i32* %3, align 4
  br label %291

154:                                              ; preds = %145, %140
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @MC_BIGCL, align 4
  %157 = call i32 @m_infree(i32 %156)
  %158 = icmp sge i32 %155, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @MC_BIGCL, align 4
  %162 = call i32 @m_infree(i32 %161)
  %163 = sub nsw i32 %160, %162
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %159, %154
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @MC_BIGCL, align 4
  %167 = call i32 @m_total(i32 %166)
  %168 = load i32, i32* @MC_BIGCL, align 4
  %169 = call i32 @m_minlimit(i32 %168)
  %170 = sub nsw i32 %167, %169
  %171 = icmp sgt i32 %165, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %164
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @MC_BIGCL, align 4
  %175 = call i32 @m_total(i32 %174)
  %176 = load i32, i32* @MC_BIGCL, align 4
  %177 = call i32 @m_minlimit(i32 %176)
  %178 = sub nsw i32 %175, %177
  %179 = sub nsw i32 %173, %178
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %172, %164
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @MAX(i32 %181, i32 %182)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %20, align 4
  %185 = shl i32 1, %184
  %186 = sdiv i32 100, %185
  %187 = sub nsw i32 100, %186
  store i32 %187, i32* %21, align 4
  %188 = load i32, i32* %18, align 4
  %189 = load i32, i32* %21, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %180
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i32, i32* %20, align 4
  %196 = ashr i32 %194, %195
  %197 = load i32, i32* %17, align 4
  %198 = sub nsw i32 %196, %197
  store i32 %198, i32* %7, align 4
  br label %199

199:                                              ; preds = %191, %180
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @MAX(i32 %200, i32 %201)
  store i32 %202, i32* %6, align 4
  br label %203

203:                                              ; preds = %199, %138
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32, i32* @MC_BIGCL, align 4
  %208 = call i32 @m_maxlimit(i32 %207)
  %209 = icmp sge i32 %206, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = load i32, i32* @MC_BIGCL, align 4
  %212 = call i32 @m_maxlimit(i32 %211)
  %213 = load i32, i32* %10, align 4
  %214 = sub nsw i32 %212, %213
  store i32 %214, i32* %6, align 4
  br label %215

215:                                              ; preds = %210, %203
  %216 = load i32, i32* %6, align 4
  %217 = shl i32 %216, 1
  %218 = load i32, i32* %16, align 4
  %219 = add nsw i32 %217, %218
  %220 = load i32, i32* @nclusters, align 4
  %221 = icmp sge i32 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %215
  %223 = load i32, i32* @nclusters, align 4
  %224 = load i32, i32* %16, align 4
  %225 = sub nsw i32 %223, %224
  %226 = ashr i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %227

227:                                              ; preds = %222, %215
  %228 = load i32, i32* @MC_BIGCL, align 4
  %229 = call i32 @m_total(i32 %228)
  %230 = load i32, i32* %6, align 4
  %231 = add nsw i32 %229, %230
  %232 = load i32, i32* @MC_BIGCL, align 4
  %233 = call i32 @m_maxlimit(i32 %232)
  %234 = icmp sle i32 %231, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 @VERIFY(i32 %235)
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %6, align 4
  %239 = shl i32 %238, 1
  %240 = add nsw i32 %237, %239
  %241 = load i32, i32* @nclusters, align 4
  %242 = icmp sle i32 %240, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 @VERIFY(i32 %243)
  br label %289

245:                                              ; preds = %102
  %246 = load i32, i32* @njcl, align 4
  %247 = icmp sgt i32 %246, 0
  %248 = zext i1 %247 to i32
  %249 = call i32 @VERIFY(i32 %248)
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* %15, align 4
  %252 = icmp sge i32 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %245
  %254 = load i32, i32* %4, align 4
  %255 = load i32, i32* %15, align 4
  %256 = sub nsw i32 %254, %255
  store i32 %256, i32* %6, align 4
  br label %257

257:                                              ; preds = %253, %245
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* %4, align 4
  %260 = add nsw i32 %258, %259
  %261 = ashr i32 %260, 1
  %262 = load i32, i32* %15, align 4
  %263 = icmp sgt i32 %261, %262
  br i1 %263, label %264, label %271

264:                                              ; preds = %257
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* %4, align 4
  %267 = add nsw i32 %265, %266
  %268 = ashr i32 %267, 1
  %269 = load i32, i32* %15, align 4
  %270 = sub nsw i32 %268, %269
  store i32 %270, i32* %7, align 4
  br label %271

271:                                              ; preds = %264, %257
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* %7, align 4
  %274 = call i32 @MAX(i32 %272, i32 %273)
  store i32 %274, i32* %6, align 4
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* @MC_16KCL, align 4
  %277 = call i32 @m_total(i32 %276)
  %278 = add nsw i32 %275, %277
  %279 = load i32, i32* @MC_16KCL, align 4
  %280 = call i32 @m_maxlimit(i32 %279)
  %281 = icmp sge i32 %278, %280
  br i1 %281, label %282, label %288

282:                                              ; preds = %271
  %283 = load i32, i32* @MC_16KCL, align 4
  %284 = call i32 @m_maxlimit(i32 %283)
  %285 = load i32, i32* @MC_16KCL, align 4
  %286 = call i32 @m_total(i32 %285)
  %287 = sub nsw i32 %284, %286
  store i32 %287, i32* %6, align 4
  br label %288

288:                                              ; preds = %282, %271
  br label %289

289:                                              ; preds = %288, %227
  %290 = load i32, i32* %6, align 4
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %289, %153, %112, %94
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @m_maxsize(i32) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @m_total(i32) #1

declare dso_local i32 @m_infree(i32) #1

declare dso_local i32 @mbwdog_logger(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @m_minlimit(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @m_maxlimit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
