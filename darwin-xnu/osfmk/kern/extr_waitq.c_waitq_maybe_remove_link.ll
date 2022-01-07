; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_maybe_remove_link.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_maybe_remove_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64 }
%struct.waitq_link = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"S1, L+R\00", align 1
@WQ_ITERATE_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"S1, L\00", align 1
@WQ_ITERATE_UNLINKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"S1, R\00", align 1
@WQL_LINK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"S2, Ll+Lr\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"S2, Ll\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"S2, Lr\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"S2, Rl+Rr\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"S2, Rl\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"S2, Rr\00", align 1
@WQ_ITERATE_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waitq*, i64, %struct.waitq_link*, %struct.waitq_link*, %struct.waitq_link*)* @waitq_maybe_remove_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitq_maybe_remove_link(%struct.waitq* %0, i64 %1, %struct.waitq_link* %2, %struct.waitq_link* %3, %struct.waitq_link* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.waitq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.waitq_link*, align 8
  %10 = alloca %struct.waitq_link*, align 8
  %11 = alloca %struct.waitq_link*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.waitq_link*, align 8
  %16 = alloca %struct.waitq_link*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.waitq_link*, align 8
  %20 = alloca %struct.waitq_link*, align 8
  store %struct.waitq* %0, %struct.waitq** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.waitq_link* %2, %struct.waitq_link** %9, align 8
  store %struct.waitq_link* %3, %struct.waitq_link** %10, align 8
  store %struct.waitq_link* %4, %struct.waitq_link** %11, align 8
  %21 = load %struct.waitq*, %struct.waitq** %7, align 8
  %22 = getelementptr inbounds %struct.waitq, %struct.waitq* %21, i32 0, i32 0
  store i64* %22, i64** %12, align 8
  %23 = load i64*, i64** %12, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.waitq_link*, %struct.waitq_link** %9, align 8
  %26 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %24, %28
  br i1 %29, label %30, label %111

30:                                               ; preds = %5
  %31 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %32 = icmp ne %struct.waitq_link* %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %35 = icmp ne %struct.waitq_link* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load %struct.waitq_link*, %struct.waitq_link** %9, align 8
  %38 = call i32 @wql_invalidate(%struct.waitq_link* %37)
  %39 = call i32 @wqdbg_v(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %40 = load i64*, i64** %12, align 8
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @WQ_ITERATE_INVALID, align 4
  store i32 %41, i32* %6, align 4
  br label %322

42:                                               ; preds = %33, %30
  %43 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %44 = icmp ne %struct.waitq_link* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %47 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %45, %42
  %53 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %54 = icmp ne %struct.waitq_link* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %57 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  br label %61

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %55
  %62 = phi i64 [ %59, %55 ], [ 0, %60 ]
  %63 = load i64*, i64** %12, align 8
  store i64 %62, i64* %63, align 8
  %64 = load %struct.waitq_link*, %struct.waitq_link** %9, align 8
  %65 = call i32 @wql_invalidate(%struct.waitq_link* %64)
  %66 = call i32 @wqdbg_v(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %68 = icmp ne %struct.waitq_link* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @WQ_ITERATE_UNLINKED, align 4
  br label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @WQ_ITERATE_INVALID, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %6, align 4
  br label %322

75:                                               ; preds = %45
  %76 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %77 = icmp ne %struct.waitq_link* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %80 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %78, %75
  %86 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %87 = icmp ne %struct.waitq_link* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %90 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  br label %94

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %88
  %95 = phi i64 [ %92, %88 ], [ 0, %93 ]
  %96 = load i64*, i64** %12, align 8
  store i64 %95, i64* %96, align 8
  %97 = load %struct.waitq_link*, %struct.waitq_link** %9, align 8
  %98 = call i32 @wql_invalidate(%struct.waitq_link* %97)
  %99 = call i32 @wqdbg_v(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %101 = icmp ne %struct.waitq_link* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* @WQ_ITERATE_UNLINKED, align 4
  br label %106

104:                                              ; preds = %94
  %105 = load i32, i32* @WQ_ITERATE_INVALID, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  store i32 %107, i32* %6, align 4
  br label %322

108:                                              ; preds = %78
  br label %109

109:                                              ; preds = %108
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110, %5
  %112 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %113 = icmp ne %struct.waitq_link* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %116 = icmp ne %struct.waitq_link* %115, null
  br label %117

117:                                              ; preds = %114, %111
  %118 = phi i1 [ true, %111 ], [ %116, %114 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %122 = icmp ne %struct.waitq_link* %121, null
  br i1 %122, label %123, label %220

123:                                              ; preds = %117
  %124 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %125 = call i64 @wql_type(%struct.waitq_link* %124)
  %126 = load i64, i64* @WQL_LINK, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %220

128:                                              ; preds = %123
  %129 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %130 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = icmp ne i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %138 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %13, align 8
  %141 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %142 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %14, align 8
  %145 = load i64, i64* %13, align 8
  %146 = call %struct.waitq_link* @wql_get_link(i64 %145)
  store %struct.waitq_link* %146, %struct.waitq_link** %15, align 8
  %147 = load i64, i64* %14, align 8
  %148 = call %struct.waitq_link* @wql_get_link(i64 %147)
  store %struct.waitq_link* %148, %struct.waitq_link** %16, align 8
  %149 = load %struct.waitq_link*, %struct.waitq_link** %15, align 8
  %150 = icmp ne %struct.waitq_link* %149, null
  br i1 %150, label %159, label %151

151:                                              ; preds = %128
  %152 = load %struct.waitq_link*, %struct.waitq_link** %16, align 8
  %153 = icmp ne %struct.waitq_link* %152, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %151
  %155 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %156 = call i32 @wql_invalidate(%struct.waitq_link* %155)
  %157 = call i32 @wqdbg_v(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %158 = load i32, i32* @WQ_ITERATE_INVALID, align 4
  store i32 %158, i32* %6, align 4
  br label %322

159:                                              ; preds = %151, %128
  %160 = load %struct.waitq_link*, %struct.waitq_link** %15, align 8
  %161 = icmp ne %struct.waitq_link* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* %8, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %186

166:                                              ; preds = %162, %159
  %167 = load i64, i64* %14, align 8
  %168 = load %struct.waitq_link*, %struct.waitq_link** %9, align 8
  %169 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  store i64 %167, i64* %170, align 8
  %171 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %172 = call i32 @wql_invalidate(%struct.waitq_link* %171)
  %173 = load %struct.waitq_link*, %struct.waitq_link** %15, align 8
  %174 = call i32 @wql_put_link(%struct.waitq_link* %173)
  %175 = load %struct.waitq_link*, %struct.waitq_link** %16, align 8
  %176 = call i32 @wql_put_link(%struct.waitq_link* %175)
  %177 = call i32 @wqdbg_v(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %178 = load %struct.waitq_link*, %struct.waitq_link** %15, align 8
  %179 = icmp ne %struct.waitq_link* %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %166
  %181 = load i32, i32* @WQ_ITERATE_UNLINKED, align 4
  br label %184

182:                                              ; preds = %166
  %183 = load i32, i32* @WQ_ITERATE_INVALID, align 4
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %181, %180 ], [ %183, %182 ]
  store i32 %185, i32* %6, align 4
  br label %322

186:                                              ; preds = %162
  %187 = load %struct.waitq_link*, %struct.waitq_link** %16, align 8
  %188 = icmp ne %struct.waitq_link* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* %8, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %213

193:                                              ; preds = %189, %186
  %194 = load i64, i64* %13, align 8
  %195 = load %struct.waitq_link*, %struct.waitq_link** %9, align 8
  %196 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  store i64 %194, i64* %197, align 8
  %198 = load %struct.waitq_link*, %struct.waitq_link** %10, align 8
  %199 = call i32 @wql_invalidate(%struct.waitq_link* %198)
  %200 = load %struct.waitq_link*, %struct.waitq_link** %16, align 8
  %201 = call i32 @wql_put_link(%struct.waitq_link* %200)
  %202 = load %struct.waitq_link*, %struct.waitq_link** %15, align 8
  %203 = call i32 @wql_put_link(%struct.waitq_link* %202)
  %204 = call i32 @wqdbg_v(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %205 = load %struct.waitq_link*, %struct.waitq_link** %16, align 8
  %206 = icmp ne %struct.waitq_link* %205, null
  br i1 %206, label %207, label %209

207:                                              ; preds = %193
  %208 = load i32, i32* @WQ_ITERATE_UNLINKED, align 4
  br label %211

209:                                              ; preds = %193
  %210 = load i32, i32* @WQ_ITERATE_INVALID, align 4
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i32 [ %208, %207 ], [ %210, %209 ]
  store i32 %212, i32* %6, align 4
  br label %322

213:                                              ; preds = %189
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214
  %216 = load %struct.waitq_link*, %struct.waitq_link** %15, align 8
  %217 = call i32 @wql_put_link(%struct.waitq_link* %216)
  %218 = load %struct.waitq_link*, %struct.waitq_link** %16, align 8
  %219 = call i32 @wql_put_link(%struct.waitq_link* %218)
  br label %220

220:                                              ; preds = %215, %123, %117
  %221 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %222 = icmp ne %struct.waitq_link* %221, null
  br i1 %222, label %223, label %320

223:                                              ; preds = %220
  %224 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %225 = call i64 @wql_type(%struct.waitq_link* %224)
  %226 = load i64, i64* @WQL_LINK, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %320

228:                                              ; preds = %223
  %229 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %230 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %8, align 8
  %234 = icmp ne i64 %232, %233
  %235 = zext i1 %234 to i32
  %236 = call i32 @assert(i32 %235)
  %237 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %238 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %17, align 8
  %241 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %242 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %18, align 8
  %245 = load i64, i64* %17, align 8
  %246 = call %struct.waitq_link* @wql_get_link(i64 %245)
  store %struct.waitq_link* %246, %struct.waitq_link** %19, align 8
  %247 = load i64, i64* %18, align 8
  %248 = call %struct.waitq_link* @wql_get_link(i64 %247)
  store %struct.waitq_link* %248, %struct.waitq_link** %20, align 8
  %249 = load %struct.waitq_link*, %struct.waitq_link** %19, align 8
  %250 = icmp ne %struct.waitq_link* %249, null
  br i1 %250, label %259, label %251

251:                                              ; preds = %228
  %252 = load %struct.waitq_link*, %struct.waitq_link** %20, align 8
  %253 = icmp ne %struct.waitq_link* %252, null
  br i1 %253, label %259, label %254

254:                                              ; preds = %251
  %255 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %256 = call i32 @wql_invalidate(%struct.waitq_link* %255)
  %257 = call i32 @wqdbg_v(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %258 = load i32, i32* @WQ_ITERATE_INVALID, align 4
  store i32 %258, i32* %6, align 4
  br label %322

259:                                              ; preds = %251, %228
  %260 = load %struct.waitq_link*, %struct.waitq_link** %19, align 8
  %261 = icmp ne %struct.waitq_link* %260, null
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = load i64, i64* %17, align 8
  %264 = load i64, i64* %8, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %286

266:                                              ; preds = %262, %259
  %267 = load i64, i64* %18, align 8
  %268 = load %struct.waitq_link*, %struct.waitq_link** %9, align 8
  %269 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  store i64 %267, i64* %270, align 8
  %271 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %272 = call i32 @wql_invalidate(%struct.waitq_link* %271)
  %273 = load %struct.waitq_link*, %struct.waitq_link** %19, align 8
  %274 = call i32 @wql_put_link(%struct.waitq_link* %273)
  %275 = load %struct.waitq_link*, %struct.waitq_link** %20, align 8
  %276 = call i32 @wql_put_link(%struct.waitq_link* %275)
  %277 = call i32 @wqdbg_v(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %278 = load %struct.waitq_link*, %struct.waitq_link** %19, align 8
  %279 = icmp ne %struct.waitq_link* %278, null
  br i1 %279, label %280, label %282

280:                                              ; preds = %266
  %281 = load i32, i32* @WQ_ITERATE_UNLINKED, align 4
  br label %284

282:                                              ; preds = %266
  %283 = load i32, i32* @WQ_ITERATE_INVALID, align 4
  br label %284

284:                                              ; preds = %282, %280
  %285 = phi i32 [ %281, %280 ], [ %283, %282 ]
  store i32 %285, i32* %6, align 4
  br label %322

286:                                              ; preds = %262
  %287 = load %struct.waitq_link*, %struct.waitq_link** %20, align 8
  %288 = icmp ne %struct.waitq_link* %287, null
  br i1 %288, label %289, label %293

289:                                              ; preds = %286
  %290 = load i64, i64* %18, align 8
  %291 = load i64, i64* %8, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %313

293:                                              ; preds = %289, %286
  %294 = load i64, i64* %17, align 8
  %295 = load %struct.waitq_link*, %struct.waitq_link** %9, align 8
  %296 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 1
  store i64 %294, i64* %297, align 8
  %298 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %299 = call i32 @wql_invalidate(%struct.waitq_link* %298)
  %300 = load %struct.waitq_link*, %struct.waitq_link** %19, align 8
  %301 = call i32 @wql_put_link(%struct.waitq_link* %300)
  %302 = load %struct.waitq_link*, %struct.waitq_link** %20, align 8
  %303 = call i32 @wql_put_link(%struct.waitq_link* %302)
  %304 = call i32 @wqdbg_v(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %305 = load %struct.waitq_link*, %struct.waitq_link** %20, align 8
  %306 = icmp ne %struct.waitq_link* %305, null
  br i1 %306, label %307, label %309

307:                                              ; preds = %293
  %308 = load i32, i32* @WQ_ITERATE_UNLINKED, align 4
  br label %311

309:                                              ; preds = %293
  %310 = load i32, i32* @WQ_ITERATE_INVALID, align 4
  br label %311

311:                                              ; preds = %309, %307
  %312 = phi i32 [ %308, %307 ], [ %310, %309 ]
  store i32 %312, i32* %6, align 4
  br label %322

313:                                              ; preds = %289
  br label %314

314:                                              ; preds = %313
  br label %315

315:                                              ; preds = %314
  %316 = load %struct.waitq_link*, %struct.waitq_link** %19, align 8
  %317 = call i32 @wql_put_link(%struct.waitq_link* %316)
  %318 = load %struct.waitq_link*, %struct.waitq_link** %20, align 8
  %319 = call i32 @wql_put_link(%struct.waitq_link* %318)
  br label %320

320:                                              ; preds = %315, %223, %220
  %321 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  store i32 %321, i32* %6, align 4
  br label %322

322:                                              ; preds = %320, %311, %284, %254, %211, %184, %154, %106, %73, %36
  %323 = load i32, i32* %6, align 4
  ret i32 %323
}

declare dso_local i32 @wql_invalidate(%struct.waitq_link*) #1

declare dso_local i32 @wqdbg_v(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @wql_type(%struct.waitq_link*) #1

declare dso_local %struct.waitq_link* @wql_get_link(i64) #1

declare dso_local i32 @wql_put_link(%struct.waitq_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
