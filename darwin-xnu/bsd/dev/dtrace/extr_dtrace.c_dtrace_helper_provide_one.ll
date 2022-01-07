; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper_provide_one.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper_provide_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* (i8*)*, i32 (i32, i8*, %struct.TYPE_19__*)*, i8* (i32, i32*, i32*)* }
%struct.TYPE_19__ = type { i8*, i8*, i8*, i8*, i32, i32, i32*, i64, i32*, i32, i32*, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i64 }
%struct.TYPE_20__ = type { i32, i32, i64 }
%struct.TYPE_24__ = type { i32, i64*, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_18__ = type { i8*, i32 }

@dtrace_meta_pid = common dso_local global %struct.TYPE_17__* null, align 8
@DOF_ID_VERSION = common dso_local global i64 0, align 8
@DOF_VERSION_1 = common dso_local global i64 0, align 8
@DOF_SECT_NONE = common dso_local global i32 0, align 4
@dtrace_cond_provider_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_20__*, i32*)* @dtrace_helper_provide_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_helper_provide_one(%struct.TYPE_23__* %0, %struct.TYPE_20__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_19__, align 8
  %24 = alloca %struct.TYPE_17__*, align 8
  %25 = alloca %struct.TYPE_16__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_18__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32* %2, i32** %6, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %33, %struct.TYPE_24__** %8, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** @dtrace_meta_pid, align 8
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %24, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 2
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %25, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %37, %40
  %42 = inttoptr i64 %41 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %42, %struct.TYPE_21__** %14, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = sext i32 %54 to i64
  %56 = add i64 %47, %55
  %57 = inttoptr i64 %56 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %57, %struct.TYPE_20__** %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %58, %61
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = sext i32 %69 to i64
  %71 = add i64 %62, %70
  %72 = inttoptr i64 %71 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %72, %struct.TYPE_20__** %10, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %73, %76
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = add i64 %77, %85
  %87 = inttoptr i64 %86 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %87, %struct.TYPE_20__** %11, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %88, %91
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = add i64 %92, %100
  %102 = inttoptr i64 %101 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %102, %struct.TYPE_20__** %12, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %103, %106
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %19, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %109, %112
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** %16, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %115, %118
  %120 = inttoptr i64 %119 to i32*
  store i32* %120, i32** %18, align 8
  store i32* null, i32** %17, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* @DOF_ID_VERSION, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @DOF_VERSION_1, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %157

129:                                              ; preds = %3
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @DOF_SECT_NONE, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %157

135:                                              ; preds = %129
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %136, %139
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = mul nsw i32 %143, %146
  %148 = sext i32 %147 to i64
  %149 = add i64 %140, %148
  %150 = inttoptr i64 %149 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %13, align 8
  %151 = load i64, i64* %7, align 8
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = add i64 %151, %154
  %156 = inttoptr i64 %155 to i32*
  store i32* %156, i32** %17, align 8
  br label %157

157:                                              ; preds = %135, %129, %3
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sdiv i32 %160, %163
  store i32 %164, i32* %21, align 4
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %166 = load i8*, i8** %19, align 8
  %167 = call i32 @dtrace_dofprov2hprov(i32* %22, %struct.TYPE_21__* %165, i8* %166)
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 2
  %170 = load i8* (i32, i32*, i32*)*, i8* (i32, i32*, i32*)** %169, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = call i8* %170(i32 %173, i32* %22, i32* %174)
  store i8* %175, i8** %26, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %178

177:                                              ; preds = %157
  br label %310

178:                                              ; preds = %157
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  store i32 0, i32* %20, align 4
  br label %183

183:                                              ; preds = %289, %178
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* %21, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %292

187:                                              ; preds = %183
  %188 = load i64, i64* %7, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = add i64 %188, %191
  %193 = load i32, i32* %20, align 4
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %193, %196
  %198 = sext i32 %197 to i64
  %199 = add i64 %192, %198
  %200 = inttoptr i64 %199 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %200, %struct.TYPE_22__** %15, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 12
  store i32 %203, i32* %204, align 4
  %205 = load i8*, i8** %19, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %205, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  store i8* %210, i8** %211, align 8
  %212 = load i8*, i8** %19, align 8
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %212, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 1
  store i8* %217, i8** %218, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 11
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 11
  store i32 %221, i32* %222, align 8
  %223 = load i32*, i32** %16, align 8
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 10
  store i32* %228, i32** %229, align 8
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 10
  %232 = load i32, i32* %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 9
  store i32 %232, i32* %233, align 8
  %234 = load i32*, i32** %17, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %248

236:                                              ; preds = %187
  %237 = load i32*, i32** %17, align 8
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %237, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 8
  store i32* %242, i32** %243, align 8
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 9
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 7
  store i64 %246, i64* %247, align 8
  br label %251

248:                                              ; preds = %187
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 8
  store i32* null, i32** %249, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 7
  store i64 0, i64* %250, align 8
  br label %251

251:                                              ; preds = %248, %236
  %252 = load i32*, i32** %18, align 8
  %253 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %252, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 6
  store i32* %257, i32** %258, align 8
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 8
  %261 = load i32, i32* %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 5
  store i32 %261, i32* %262, align 4
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 4
  store i32 %265, i32* %266, align 8
  %267 = load i8*, i8** %19, align 8
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %267, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 2
  store i8* %272, i8** %273, align 8
  %274 = load i8*, i8** %19, align 8
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %274, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 3
  store i8* %279, i8** %280, align 8
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 1
  %283 = load i32 (i32, i8*, %struct.TYPE_19__*)*, i32 (i32, i8*, %struct.TYPE_19__*)** %282, align 8
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i8*, i8** %26, align 8
  %288 = call i32 %283(i32 %286, i8* %287, %struct.TYPE_19__* %23)
  br label %289

289:                                              ; preds = %251
  %290 = load i32, i32* %20, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %20, align 4
  br label %183

292:                                              ; preds = %183
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 0
  %295 = load i8* (i8*)*, i8* (i8*)** %294, align 8
  %296 = load i8*, i8** %26, align 8
  %297 = call i8* %295(i8* %296)
  store i8* %297, i8** %27, align 8
  %298 = load i8*, i8** %27, align 8
  %299 = icmp ne i8* %298, null
  %300 = zext i1 %299 to i32
  %301 = call i32 @ASSERT(i32 %300)
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %303 = load i32, i32* @dtrace_cond_provider_match, align 4
  %304 = sext i32 %303 to i64
  %305 = inttoptr i64 %304 to i8*
  store i8* %305, i8** %302, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %307 = load i8*, i8** %27, align 8
  %308 = ptrtoint i8* %307 to i32
  store i32 %308, i32* %306, align 8
  %309 = call i32 @dtrace_enabling_matchall_with_cond(%struct.TYPE_18__* %28)
  br label %310

310:                                              ; preds = %292, %177
  ret void
}

declare dso_local i32 @dtrace_dofprov2hprov(i32*, %struct.TYPE_21__*, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_enabling_matchall_with_cond(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
