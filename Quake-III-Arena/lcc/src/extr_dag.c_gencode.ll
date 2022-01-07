; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_dag.c_gencode.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_dag.c_gencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 (%struct.TYPE_31__*)*, i32 (i32)*, i32 (i32*)*, i32 (i32*)*, i32 (i32, i32, i32)*, i32 (%struct.TYPE_31__*)*, i32 }
%struct.TYPE_31__ = type { i64, i64, double }
%struct.TYPE_22__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, %struct.TYPE_30__, %struct.TYPE_32__*, %struct.TYPE_32__* }
%struct.TYPE_30__ = type { %struct.TYPE_31__*, i32, %struct.TYPE_29__, %struct.TYPE_28__*, %struct.TYPE_25__, %struct.TYPE_23__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_31__** }
%struct.TYPE_23__ = type { i32, i32, i32 }

@prunetemps = common dso_local global i32 0, align 4
@IR = common dso_local global %struct.TYPE_24__* null, align 8
@src = common dso_local global i32 0, align 4
@assignargs = common dso_local global i64 0, align 8
@codehead = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@codelist = common dso_local global %struct.TYPE_32__* null, align 8
@glevel = common dso_local global i64 0, align 8
@CODE = common dso_local global i32 0, align 4
@errcnt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gencode(%struct.TYPE_31__** %0, %struct.TYPE_31__** %1) #0 {
  %3 = alloca %struct.TYPE_31__**, align 8
  %4 = alloca %struct.TYPE_31__**, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca %struct.TYPE_31__**, align 8
  store %struct.TYPE_31__** %0, %struct.TYPE_31__*** %3, align 8
  store %struct.TYPE_31__** %1, %struct.TYPE_31__*** %4, align 8
  %14 = load i32, i32* @prunetemps, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* @prunetemps, align 4
  br label %23

23:                                               ; preds = %16, %2
  %24 = load i32, i32* @src, align 4
  store i32 %24, i32* %6, align 4
  %25 = load i64, i64* @assignargs, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %81

27:                                               ; preds = %23
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @codehead, i32 0, i32 0), align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %29, align 8
  store %struct.TYPE_32__* %30, %struct.TYPE_32__** %5, align 8
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @codehead, i32 0, i32 0), align 8
  store %struct.TYPE_32__* %31, %struct.TYPE_32__** @codelist, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %71, %27
  %33 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %33, i64 %35
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  store %struct.TYPE_31__* %37, %struct.TYPE_31__** %8, align 8
  %38 = icmp ne %struct.TYPE_31__* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %40, i64 %42
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %43, align 8
  store %struct.TYPE_31__* %44, %struct.TYPE_31__** %9, align 8
  %45 = icmp ne %struct.TYPE_31__* %44, null
  br label %46

46:                                               ; preds = %39, %32
  %47 = phi i1 [ false, %32 ], [ %45, %39 ]
  br i1 %47, label %48, label %74

48:                                               ; preds = %46
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56, %48
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %67 = call i32 @idtree(%struct.TYPE_31__* %66)
  %68 = call i32 @asgn(%struct.TYPE_31__* %65, i32 %67)
  %69 = call i32 @walk(i32 %68, i32 0, i32 0)
  br label %70

70:                                               ; preds = %64, %56
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %32

74:                                               ; preds = %46
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %76 = load %struct.TYPE_32__*, %struct.TYPE_32__** @codelist, align 8
  %77 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %76, i32 0, i32 2
  store %struct.TYPE_32__* %75, %struct.TYPE_32__** %77, align 8
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** @codelist, align 8
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 3
  store %struct.TYPE_32__* %78, %struct.TYPE_32__** %80, align 8
  br label %81

81:                                               ; preds = %74, %23
  %82 = load i64, i64* @glevel, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %140

84:                                               ; preds = %81
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 5
  %87 = load i32 (%struct.TYPE_31__*)*, i32 (%struct.TYPE_31__*)** %86, align 8
  %88 = icmp ne i32 (%struct.TYPE_31__*)* %87, null
  br i1 %88, label %89, label %140

89:                                               ; preds = %84
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %134, %89
  %91 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %4, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %91, i64 %93
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %94, align 8
  store %struct.TYPE_31__* %95, %struct.TYPE_31__** %11, align 8
  %96 = icmp ne %struct.TYPE_31__* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %98, i64 %100
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %101, align 8
  store %struct.TYPE_31__* %102, %struct.TYPE_31__** %12, align 8
  %103 = icmp ne %struct.TYPE_31__* %102, null
  br label %104

104:                                              ; preds = %97, %90
  %105 = phi i1 [ false, %90 ], [ %103, %97 ]
  br i1 %105, label %106, label %137

106:                                              ; preds = %104
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 5
  %109 = load i32 (%struct.TYPE_31__*)*, i32 (%struct.TYPE_31__*)** %108, align 8
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %111 = call i32 %109(%struct.TYPE_31__* %110)
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %106
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %119, %106
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 5
  %130 = load i32 (%struct.TYPE_31__*)*, i32 (%struct.TYPE_31__*)** %129, align 8
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %132 = call i32 %130(%struct.TYPE_31__* %131)
  br label %133

133:                                              ; preds = %127, %119
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %90

137:                                              ; preds = %104
  %138 = load i32, i32* @CODE, align 4
  %139 = call i32 @swtoseg(i32 %138)
  br label %140

140:                                              ; preds = %137, %84, %81
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @codehead, i32 0, i32 0), align 8
  store %struct.TYPE_32__* %141, %struct.TYPE_32__** %5, align 8
  br label %142

142:                                              ; preds = %281, %140
  %143 = load i64, i64* @errcnt, align 8
  %144 = icmp sle i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %147 = icmp ne %struct.TYPE_32__* %146, null
  br label %148

148:                                              ; preds = %145, %142
  %149 = phi i1 [ false, %142 ], [ %147, %145 ]
  br i1 %149, label %150, label %285

150:                                              ; preds = %148
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  switch i32 %153, label %278 [
    i32 136, label %154
    i32 135, label %174
    i32 134, label %221
    i32 133, label %233
    i32 132, label %239
    i32 131, label %239
    i32 130, label %239
    i32 129, label %268
    i32 128, label %277
  ]

154:                                              ; preds = %150
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 4
  %157 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %156, align 8
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 %157(i32 %162, i32 %167, i32 %172)
  br label %280

174:                                              ; preds = %150
  %175 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %178, align 8
  store %struct.TYPE_31__** %179, %struct.TYPE_31__*** %13, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 3
  %182 = load i32 (i32*)*, i32 (i32*)** %181, align 8
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 0
  %187 = call i32 %182(i32* %186)
  br label %188

188:                                              ; preds = %217, %174
  %189 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %13, align 8
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %189, align 8
  %191 = icmp ne %struct.TYPE_31__* %190, null
  br i1 %191, label %192, label %220

192:                                              ; preds = %188
  %193 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %13, align 8
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 2
  %196 = load double, double* %195, align 8
  %197 = fcmp une double %196, 0.000000e+00
  br i1 %197, label %198, label %205

198:                                              ; preds = %192
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  %201 = load i32 (%struct.TYPE_31__*)*, i32 (%struct.TYPE_31__*)** %200, align 8
  %202 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %13, align 8
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %202, align 8
  %204 = call i32 %201(%struct.TYPE_31__* %203)
  br label %216

205:                                              ; preds = %192
  %206 = load i64, i64* @glevel, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 0
  %211 = load i32 (%struct.TYPE_31__*)*, i32 (%struct.TYPE_31__*)** %210, align 8
  %212 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %13, align 8
  %213 = load %struct.TYPE_31__*, %struct.TYPE_31__** %212, align 8
  %214 = call i32 %211(%struct.TYPE_31__* %213)
  br label %215

215:                                              ; preds = %208, %205
  br label %216

216:                                              ; preds = %215, %198
  br label %217

217:                                              ; preds = %216
  %218 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %218, i32 1
  store %struct.TYPE_31__** %219, %struct.TYPE_31__*** %13, align 8
  br label %188

220:                                              ; preds = %188
  br label %280

221:                                              ; preds = %150
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 2
  %224 = load i32 (i32*)*, i32 (i32*)** %223, align 8
  %225 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 0
  %232 = call i32 %224(i32* %231)
  br label %280

233:                                              ; preds = %150
  %234 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* @src, align 4
  br label %280

239:                                              ; preds = %150, %150, %150
  %240 = load i32, i32* @prunetemps, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %239
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @prune(i32 %246)
  %248 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %249, i32 0, i32 1
  store i32 %247, i32* %250, align 8
  br label %251

251:                                              ; preds = %242, %239
  %252 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @fixup(i32 %255)
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 1
  %259 = load i32 (i32)*, i32 (i32)** %258, align 8
  %260 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i32 %259(i32 %263)
  %265 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %266, i32 0, i32 1
  store i32 %264, i32* %267, align 8
  br label %280

268:                                              ; preds = %150
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 0
  %271 = load i32 (%struct.TYPE_31__*)*, i32 (%struct.TYPE_31__*)** %270, align 8
  %272 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %274, align 8
  %276 = call i32 %271(%struct.TYPE_31__* %275)
  br label %280

277:                                              ; preds = %150
  br label %280

278:                                              ; preds = %150
  %279 = call i32 @assert(i32 0)
  br label %280

280:                                              ; preds = %278, %277, %268, %251, %233, %221, %220, %154
  br label %281

281:                                              ; preds = %280
  %282 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %282, i32 0, i32 2
  %284 = load %struct.TYPE_32__*, %struct.TYPE_32__** %283, align 8
  store %struct.TYPE_32__* %284, %struct.TYPE_32__** %5, align 8
  br label %142

285:                                              ; preds = %148
  %286 = load i32, i32* %6, align 4
  store i32 %286, i32* @src, align 4
  ret void
}

declare dso_local i32 @walk(i32, i32, i32) #1

declare dso_local i32 @asgn(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @idtree(%struct.TYPE_31__*) #1

declare dso_local i32 @swtoseg(i32) #1

declare dso_local i32 @prune(i32) #1

declare dso_local i32 @fixup(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
