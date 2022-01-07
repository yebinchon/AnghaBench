; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_tracepoint_disable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_tracepoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i64, %struct.TYPE_18__*, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_21__* }
%struct.TYPE_20__ = type { i64, i64, i8*, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__*, %struct.TYPE_21__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@fasttrap_tpoints = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@fasttrap_mod_gen = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_20__*, i64)* @fasttrap_tracepoint_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fasttrap_tracepoint_disable(%struct.TYPE_17__* %0, %struct.TYPE_20__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__**, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_18__**, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %11, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i64 @FASTTRAP_TPOINTS_INDEX(i64 %60, i64 %61)
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i64 %62
  store %struct.TYPE_22__* %63, %struct.TYPE_22__** %7, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = call i32 @lck_mtx_lock(i32* %65)
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  store %struct.TYPE_18__* %69, %struct.TYPE_18__** %10, align 8
  br label %70

70:                                               ; preds = %95, %3
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %72 = icmp ne %struct.TYPE_18__* %71, null
  br i1 %72, label %73, label %99

73:                                               ; preds = %70
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %14, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %99

94:                                               ; preds = %85, %79, %73
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  store %struct.TYPE_18__* %98, %struct.TYPE_18__** %10, align 8
  br label %70

99:                                               ; preds = %93, %70
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %101 = icmp ne %struct.TYPE_18__* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @ASSERT(i32 %102)
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %125 [
    i32 132, label %107
    i32 130, label %107
    i32 131, label %107
    i32 128, label %116
    i32 129, label %116
  ]

107:                                              ; preds = %99, %99, %99
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = icmp ne %struct.TYPE_21__* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i32 @ASSERT(i32 %112)
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 5
  store %struct.TYPE_21__** %115, %struct.TYPE_21__*** %12, align 8
  br label %127

116:                                              ; preds = %99, %99
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %118, align 8
  %120 = icmp ne %struct.TYPE_21__* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i32 @ASSERT(i32 %121)
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 4
  store %struct.TYPE_21__** %124, %struct.TYPE_21__*** %12, align 8
  br label %127

125:                                              ; preds = %99
  store %struct.TYPE_21__** null, %struct.TYPE_21__*** %12, align 8
  %126 = call i32 @ASSERT(i32 0)
  br label %127

127:                                              ; preds = %125, %116, %107
  br label %128

128:                                              ; preds = %135, %127
  %129 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %12, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %131, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %134 = icmp ne %struct.TYPE_20__* %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %128
  %136 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %12, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 2
  store %struct.TYPE_21__** %138, %struct.TYPE_21__*** %12, align 8
  %139 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %12, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = icmp ne %struct.TYPE_21__* %140, null
  %142 = zext i1 %141 to i32
  %143 = call i32 @ASSERT(i32 %142)
  br label %128

144:                                              ; preds = %128
  %145 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %12, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %145, align 8
  store %struct.TYPE_21__* %146, %struct.TYPE_21__** %11, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %148, align 8
  %150 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %12, align 8
  store %struct.TYPE_21__* %149, %struct.TYPE_21__** %150, align 8
  %151 = call i32 (...) @dtrace_membar_producer()
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %153, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %156 = icmp eq %struct.TYPE_20__* %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @ASSERT(i32 %157)
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %160, align 8
  %162 = icmp ne %struct.TYPE_21__* %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %144
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %165, align 8
  %167 = icmp ne %struct.TYPE_21__* %166, null
  br i1 %167, label %168, label %264

168:                                              ; preds = %163, %144
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = load i64, i64* %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = icmp eq %struct.TYPE_18__* %169, %176
  br i1 %177, label %178, label %257

178:                                              ; preds = %168
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 5
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %180, align 8
  %182 = icmp ne %struct.TYPE_21__* %181, null
  br i1 %182, label %183, label %199

183:                                              ; preds = %178
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 5
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %187, align 8
  store %struct.TYPE_20__* %188, %struct.TYPE_20__** %15, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 5
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %190, align 8
  %192 = call i64 @FASTTRAP_ID_INDEX(%struct.TYPE_21__* %191)
  store i64 %192, i64* %17, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %194, align 8
  %196 = load i64, i64* %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  store %struct.TYPE_18__** %198, %struct.TYPE_18__*** %16, align 8
  br label %215

199:                                              ; preds = %178
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %203, align 8
  store %struct.TYPE_20__* %204, %struct.TYPE_20__** %15, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 4
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %206, align 8
  %208 = call i64 @FASTTRAP_ID_INDEX(%struct.TYPE_21__* %207)
  store i64 %208, i64* %17, align 8
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = load i64, i64* %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  store %struct.TYPE_18__** %214, %struct.TYPE_18__*** %16, align 8
  br label %215

215:                                              ; preds = %199, %183
  %216 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %16, align 8
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %216, align 8
  %218 = icmp ne %struct.TYPE_18__* %217, null
  %219 = zext i1 %218 to i32
  %220 = call i32 @ASSERT(i32 %219)
  %221 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %16, align 8
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %221, align 8
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  %226 = load i64, i64* %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %228, align 8
  %230 = icmp ne %struct.TYPE_18__* %222, %229
  %231 = zext i1 %230 to i32
  %232 = call i32 @ASSERT(i32 %231)
  %233 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %16, align 8
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 5
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %235, align 8
  %237 = icmp eq %struct.TYPE_21__* %236, null
  %238 = zext i1 %237 to i32
  %239 = call i32 @ASSERT(i32 %238)
  %240 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %16, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 4
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %242, align 8
  %244 = icmp eq %struct.TYPE_21__* %243, null
  %245 = zext i1 %244 to i32
  %246 = call i32 @ASSERT(i32 %245)
  %247 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %16, align 8
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %247, align 8
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 3
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %250, align 8
  %252 = load i64, i64* %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  store %struct.TYPE_18__* %248, %struct.TYPE_18__** %254, align 8
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %256 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %16, align 8
  store %struct.TYPE_18__* %255, %struct.TYPE_18__** %256, align 8
  br label %257

257:                                              ; preds = %215, %168
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 0
  %260 = call i32 @lck_mtx_unlock(i32* %259)
  %261 = load i8*, i8** @fasttrap_mod_gen, align 8
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 2
  store i8* %261, i8** %263, align 8
  br label %321

264:                                              ; preds = %163
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 0
  %267 = call i32 @lck_mtx_unlock(i32* %266)
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %269 = icmp ne %struct.TYPE_17__* %268, null
  br i1 %269, label %270, label %284

270:                                              ; preds = %264
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %273 = call i64 @fasttrap_tracepoint_remove(%struct.TYPE_17__* %271, %struct.TYPE_18__* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %270
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %277 = load i64, i64* %14, align 8
  %278 = call i32 @fasttrap_sigtrap(%struct.TYPE_17__* %276, i32* null, i64 %277)
  br label %279

279:                                              ; preds = %275, %270
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %282, -1
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %279, %264
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %285, i32 0, i32 0
  %287 = call i32 @lck_mtx_lock(i32* %286)
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 1
  store %struct.TYPE_18__** %289, %struct.TYPE_18__*** %9, align 8
  %290 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %290, align 8
  %292 = icmp ne %struct.TYPE_18__* %291, null
  %293 = zext i1 %292 to i32
  %294 = call i32 @ASSERT(i32 %293)
  br label %295

295:                                              ; preds = %300, %284
  %296 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %296, align 8
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %299 = icmp ne %struct.TYPE_18__* %297, %298
  br i1 %299, label %300, label %309

300:                                              ; preds = %295
  %301 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 3
  store %struct.TYPE_18__** %303, %struct.TYPE_18__*** %9, align 8
  %304 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %304, align 8
  %306 = icmp ne %struct.TYPE_18__* %305, null
  %307 = zext i1 %306 to i32
  %308 = call i32 @ASSERT(i32 %307)
  br label %295

309:                                              ; preds = %295
  %310 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %310, i32 0, i32 3
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %311, align 8
  %313 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_18__* %312, %struct.TYPE_18__** %313, align 8
  %314 = call i32 (...) @dtrace_membar_producer()
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 0
  %317 = call i32 @lck_mtx_unlock(i32* %316)
  %318 = load i8*, i8** @fasttrap_mod_gen, align 8
  %319 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %319, i32 0, i32 2
  store i8* %318, i8** %320, align 8
  br label %321

321:                                              ; preds = %309, %257
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @FASTTRAP_TPOINTS_INDEX(i64, i64) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @dtrace_membar_producer(...) #1

declare dso_local i64 @FASTTRAP_ID_INDEX(%struct.TYPE_21__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @fasttrap_tracepoint_remove(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @fasttrap_sigtrap(%struct.TYPE_17__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
