; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_types.c_compose.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_types.c_compose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_23__, %struct.TYPE_24__*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_24__** }

@PERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @compose(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__**, align 8
  %8 = alloca %struct.TYPE_24__**, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %14 = icmp eq %struct.TYPE_24__* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %3, align 8
  br label %270

17:                                               ; preds = %2
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %268 [
    i32 129, label %30
    i32 259, label %39
    i32 131, label %49
    i32 128, label %49
    i32 132, label %61
    i32 130, label %143
  ]

30:                                               ; preds = %17
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %35, align 8
  %37 = call %struct.TYPE_24__* @compose(%struct.TYPE_24__* %33, %struct.TYPE_24__* %36)
  %38 = call %struct.TYPE_24__* @ptr(%struct.TYPE_24__* %37)
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %3, align 8
  br label %270

39:                                               ; preds = %17
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %41, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %44, align 8
  %46 = call %struct.TYPE_24__* @compose(%struct.TYPE_24__* %42, %struct.TYPE_24__* %45)
  %47 = call %struct.TYPE_24__* @qual(i32 128, %struct.TYPE_24__* %46)
  %48 = call %struct.TYPE_24__* @qual(i32 131, %struct.TYPE_24__* %47)
  store %struct.TYPE_24__* %48, %struct.TYPE_24__** %3, align 8
  br label %270

49:                                               ; preds = %17, %17
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %54, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %57, align 8
  %59 = call %struct.TYPE_24__* @compose(%struct.TYPE_24__* %55, %struct.TYPE_24__* %58)
  %60 = call %struct.TYPE_24__* @qual(i32 %52, %struct.TYPE_24__* %59)
  store %struct.TYPE_24__* %60, %struct.TYPE_24__** %3, align 8
  br label %270

61:                                               ; preds = %17
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %66, align 8
  %68 = call %struct.TYPE_24__* @compose(%struct.TYPE_24__* %64, %struct.TYPE_24__* %67)
  store %struct.TYPE_24__* %68, %struct.TYPE_24__** %6, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %61
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %80, %73
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %85, %80
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %97, %102
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call %struct.TYPE_24__* @array(%struct.TYPE_24__* %94, i32 %103, i32 %106)
  store %struct.TYPE_24__* %107, %struct.TYPE_24__** %3, align 8
  br label %270

108:                                              ; preds = %85, %61
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %108
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %113
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %120
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sdiv i32 %129, %134
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call %struct.TYPE_24__* @array(%struct.TYPE_24__* %126, i32 %135, i32 %138)
  store %struct.TYPE_24__* %139, %struct.TYPE_24__** %3, align 8
  br label %270

140:                                              ; preds = %120, %113, %108
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %142 = call %struct.TYPE_24__* @array(%struct.TYPE_24__* %141, i32 0, i32 0)
  store %struct.TYPE_24__* %142, %struct.TYPE_24__** %3, align 8
  br label %270

143:                                              ; preds = %17
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %147, align 8
  store %struct.TYPE_24__** %148, %struct.TYPE_24__*** %7, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %152, align 8
  store %struct.TYPE_24__** %153, %struct.TYPE_24__*** %8, align 8
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %155, align 8
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 3
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %158, align 8
  %160 = call %struct.TYPE_24__* @compose(%struct.TYPE_24__* %156, %struct.TYPE_24__* %159)
  store %struct.TYPE_24__* %160, %struct.TYPE_24__** %9, align 8
  store i32* null, i32** %10, align 8
  %161 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %162 = icmp eq %struct.TYPE_24__** %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %143
  %164 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %165 = icmp eq %struct.TYPE_24__** %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %168 = call %struct.TYPE_24__* @func(%struct.TYPE_24__* %167, %struct.TYPE_24__** null, i32 1)
  store %struct.TYPE_24__* %168, %struct.TYPE_24__** %3, align 8
  br label %270

169:                                              ; preds = %163, %143
  %170 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %171 = icmp ne %struct.TYPE_24__** %170, null
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  %173 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %174 = icmp eq %struct.TYPE_24__** %173, null
  br i1 %174, label %175, label %184

175:                                              ; preds = %172
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %177 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call %struct.TYPE_24__* @func(%struct.TYPE_24__* %176, %struct.TYPE_24__** %177, i32 %182)
  store %struct.TYPE_24__* %183, %struct.TYPE_24__** %3, align 8
  br label %270

184:                                              ; preds = %172, %169
  %185 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %186 = icmp ne %struct.TYPE_24__** %185, null
  br i1 %186, label %187, label %199

187:                                              ; preds = %184
  %188 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %189 = icmp eq %struct.TYPE_24__** %188, null
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %192 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call %struct.TYPE_24__* @func(%struct.TYPE_24__* %191, %struct.TYPE_24__** %192, i32 %197)
  store %struct.TYPE_24__* %198, %struct.TYPE_24__** %3, align 8
  br label %270

199:                                              ; preds = %187, %184
  br label %200

200:                                              ; preds = %247, %199
  %201 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %201, align 8
  %203 = icmp ne %struct.TYPE_24__* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %200
  %205 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %205, align 8
  %207 = icmp ne %struct.TYPE_24__* %206, null
  br label %208

208:                                              ; preds = %204, %200
  %209 = phi i1 [ false, %200 ], [ %207, %204 ]
  br i1 %209, label %210, label %252

210:                                              ; preds = %208
  %211 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %211, align 8
  %213 = call %struct.TYPE_24__* @unqual(%struct.TYPE_24__* %212)
  %214 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %214, align 8
  %216 = call %struct.TYPE_24__* @unqual(%struct.TYPE_24__* %215)
  %217 = call %struct.TYPE_24__* @compose(%struct.TYPE_24__* %213, %struct.TYPE_24__* %216)
  store %struct.TYPE_24__* %217, %struct.TYPE_24__** %11, align 8
  %218 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %218, align 8
  %220 = call i32 @isconst(%struct.TYPE_24__* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %210
  %223 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %223, align 8
  %225 = call i32 @isconst(%struct.TYPE_24__* %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %222, %210
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %229 = call %struct.TYPE_24__* @qual(i32 131, %struct.TYPE_24__* %228)
  store %struct.TYPE_24__* %229, %struct.TYPE_24__** %11, align 8
  br label %230

230:                                              ; preds = %227, %222
  %231 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %231, align 8
  %233 = call i32 @isvolatile(%struct.TYPE_24__* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %230
  %236 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %236, align 8
  %238 = call i32 @isvolatile(%struct.TYPE_24__* %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %235, %230
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %242 = call %struct.TYPE_24__* @qual(i32 128, %struct.TYPE_24__* %241)
  store %struct.TYPE_24__* %242, %struct.TYPE_24__** %11, align 8
  br label %243

243:                                              ; preds = %240, %235
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %245 = load i32*, i32** %10, align 8
  %246 = call i32* @append(%struct.TYPE_24__* %244, i32* %245)
  store i32* %246, i32** %10, align 8
  br label %247

247:                                              ; preds = %243
  %248 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %248, i32 1
  store %struct.TYPE_24__** %249, %struct.TYPE_24__*** %7, align 8
  %250 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %250, i32 1
  store %struct.TYPE_24__** %251, %struct.TYPE_24__*** %8, align 8
  br label %200

252:                                              ; preds = %208
  %253 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %7, align 8
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %253, align 8
  %255 = icmp eq %struct.TYPE_24__* %254, null
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %257, align 8
  %259 = icmp eq %struct.TYPE_24__* %258, null
  br label %260

260:                                              ; preds = %256, %252
  %261 = phi i1 [ false, %252 ], [ %259, %256 ]
  %262 = zext i1 %261 to i32
  %263 = call i32 @assert(i32 %262)
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %265 = load i32, i32* @PERM, align 4
  %266 = call %struct.TYPE_24__** @ltov(i32** %10, i32 %265)
  %267 = call %struct.TYPE_24__* @func(%struct.TYPE_24__* %264, %struct.TYPE_24__** %266, i32 0)
  store %struct.TYPE_24__* %267, %struct.TYPE_24__** %3, align 8
  br label %270

268:                                              ; preds = %17
  %269 = call i32 @assert(i32 0)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  br label %270

270:                                              ; preds = %268, %260, %190, %175, %166, %140, %125, %93, %49, %39, %30, %15
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  ret %struct.TYPE_24__* %271
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_24__* @ptr(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @qual(i32, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @array(%struct.TYPE_24__*, i32, i32) #1

declare dso_local %struct.TYPE_24__* @func(%struct.TYPE_24__*, %struct.TYPE_24__**, i32) #1

declare dso_local %struct.TYPE_24__* @unqual(%struct.TYPE_24__*) #1

declare dso_local i32 @isconst(%struct.TYPE_24__*) #1

declare dso_local i32 @isvolatile(%struct.TYPE_24__*) #1

declare dso_local i32* @append(%struct.TYPE_24__*, i32*) #1

declare dso_local %struct.TYPE_24__** @ltov(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
