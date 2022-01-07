; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_pcb.c_arm_debug_set64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_pcb.c_arm_debug_set64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64*, i64*, i32, i32*, i32* }
%struct.cpu_data = type { %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@PSR64_SS = common dso_local global i32 0, align 4
@ARM_DBG_CR_HIGHER_MODE_ENABLE = common dso_local global i32 0, align 4
@ARM_DBG_CR_MODE_CONTROL_PRIVILEGED = common dso_local global i32 0, align 4
@ISB_SY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_debug_set64(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.cpu_data*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %10 = call %struct.TYPE_14__* (...) @arm_debug_info()
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @ml_set_interrupts_enabled(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = call %struct.cpu_data* (...) @getCpuDatap()
  store %struct.cpu_data* %13, %struct.cpu_data** %3, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = load %struct.cpu_data*, %struct.cpu_data** %3, align 8
  %16 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %15, i32 0, i32 0
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %16, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = icmp eq %struct.TYPE_13__* null, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @bzero(%struct.TYPE_13__* %7, i32 40)
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %2, align 8
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %329 [
    i32 16, label %25
    i32 15, label %44
    i32 14, label %63
    i32 13, label %82
    i32 12, label %101
    i32 11, label %120
    i32 10, label %139
    i32 9, label %158
    i32 8, label %177
    i32 7, label %196
    i32 6, label %215
    i32 5, label %234
    i32 4, label %253
    i32 3, label %272
    i32 2, label %291
    i32 1, label %310
  ]

25:                                               ; preds = %21
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 15
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SET_DBGBVRn(i32 15, i32 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 15
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @SET_DBGBCRn(i32 15, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %21, %25
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 14
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @SET_DBGBVRn(i32 14, i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 14
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @SET_DBGBCRn(i32 14, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %21, %44
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 13
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SET_DBGBVRn(i32 13, i32 %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 13
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @SET_DBGBCRn(i32 13, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %21, %63
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 12
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SET_DBGBVRn(i32 12, i32 %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 12
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @SET_DBGBCRn(i32 12, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %21, %82
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 11
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @SET_DBGBVRn(i32 11, i32 %108)
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 11
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @SET_DBGBCRn(i32 11, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %21, %101
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 10
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @SET_DBGBVRn(i32 10, i32 %127)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 10
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @SET_DBGBCRn(i32 10, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %21, %120
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 9
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @SET_DBGBVRn(i32 9, i32 %146)
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 9
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @SET_DBGBCRn(i32 9, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %21, %139
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 8
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @SET_DBGBVRn(i32 8, i32 %165)
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 8
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @SET_DBGBCRn(i32 8, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %21, %158
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 7
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @SET_DBGBVRn(i32 7, i32 %184)
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 7
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @SET_DBGBCRn(i32 7, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %21, %177
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 6
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @SET_DBGBVRn(i32 6, i32 %203)
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 6
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @SET_DBGBCRn(i32 6, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %21, %196
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 5
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @SET_DBGBVRn(i32 5, i32 %222)
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i64*, i64** %227, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 5
  %230 = load i64, i64* %229, align 8
  %231 = trunc i64 %230 to i32
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @SET_DBGBCRn(i32 5, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %21, %215
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 4
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @SET_DBGBVRn(i32 4, i32 %241)
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = load i64*, i64** %246, align 8
  %248 = getelementptr inbounds i64, i64* %247, i64 4
  %249 = load i64, i64* %248, align 8
  %250 = trunc i64 %249 to i32
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @SET_DBGBCRn(i32 4, i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %21, %234
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 4
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 3
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @SET_DBGBVRn(i32 3, i32 %260)
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = load i64*, i64** %265, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 3
  %268 = load i64, i64* %267, align 8
  %269 = trunc i64 %268 to i32
  %270 = load i32, i32* %9, align 4
  %271 = call i32 @SET_DBGBCRn(i32 3, i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %21, %253
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 4
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 2
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @SET_DBGBVRn(i32 2, i32 %279)
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 0
  %285 = load i64*, i64** %284, align 8
  %286 = getelementptr inbounds i64, i64* %285, i64 2
  %287 = load i64, i64* %286, align 8
  %288 = trunc i64 %287 to i32
  %289 = load i32, i32* %9, align 4
  %290 = call i32 @SET_DBGBCRn(i32 2, i32 %288, i32 %289)
  br label %291

291:                                              ; preds = %21, %272
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 4
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @SET_DBGBVRn(i32 1, i32 %298)
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 0
  %304 = load i64*, i64** %303, align 8
  %305 = getelementptr inbounds i64, i64* %304, i64 1
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  %308 = load i32, i32* %9, align 4
  %309 = call i32 @SET_DBGBCRn(i32 1, i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %21, %291
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 4
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @SET_DBGBVRn(i32 0, i32 %317)
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 0
  %323 = load i64*, i64** %322, align 8
  %324 = getelementptr inbounds i64, i64* %323, i64 0
  %325 = load i64, i64* %324, align 8
  %326 = trunc i64 %325 to i32
  %327 = load i32, i32* %9, align 4
  %328 = call i32 @SET_DBGBCRn(i32 0, i32 %326, i32 %327)
  br label %329

329:                                              ; preds = %21, %310
  br label %330

330:                                              ; preds = %329
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  switch i32 %333, label %638 [
    i32 16, label %334
    i32 15, label %353
    i32 14, label %372
    i32 13, label %391
    i32 12, label %410
    i32 11, label %429
    i32 10, label %448
    i32 9, label %467
    i32 8, label %486
    i32 7, label %505
    i32 6, label %524
    i32 5, label %543
    i32 4, label %562
    i32 3, label %581
    i32 2, label %600
    i32 1, label %619
  ]

334:                                              ; preds = %330
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 3
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 15
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @SET_DBGWVRn(i32 15, i32 %341)
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 1
  %347 = load i64*, i64** %346, align 8
  %348 = getelementptr inbounds i64, i64* %347, i64 15
  %349 = load i64, i64* %348, align 8
  %350 = trunc i64 %349 to i32
  %351 = load i32, i32* %9, align 4
  %352 = call i32 @SET_DBGWCRn(i32 15, i32 %350, i32 %351)
  br label %353

353:                                              ; preds = %330, %334
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 3
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 14
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @SET_DBGWVRn(i32 14, i32 %360)
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 1
  %366 = load i64*, i64** %365, align 8
  %367 = getelementptr inbounds i64, i64* %366, i64 14
  %368 = load i64, i64* %367, align 8
  %369 = trunc i64 %368 to i32
  %370 = load i32, i32* %9, align 4
  %371 = call i32 @SET_DBGWCRn(i32 14, i32 %369, i32 %370)
  br label %372

372:                                              ; preds = %330, %353
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %375, i32 0, i32 3
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 13
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @SET_DBGWVRn(i32 13, i32 %379)
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i32 0, i32 1
  %385 = load i64*, i64** %384, align 8
  %386 = getelementptr inbounds i64, i64* %385, i64 13
  %387 = load i64, i64* %386, align 8
  %388 = trunc i64 %387 to i32
  %389 = load i32, i32* %9, align 4
  %390 = call i32 @SET_DBGWCRn(i32 13, i32 %388, i32 %389)
  br label %391

391:                                              ; preds = %330, %372
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %394, i32 0, i32 3
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 12
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @SET_DBGWVRn(i32 12, i32 %398)
  %400 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 1
  %404 = load i64*, i64** %403, align 8
  %405 = getelementptr inbounds i64, i64* %404, i64 12
  %406 = load i64, i64* %405, align 8
  %407 = trunc i64 %406 to i32
  %408 = load i32, i32* %9, align 4
  %409 = call i32 @SET_DBGWCRn(i32 12, i32 %407, i32 %408)
  br label %410

410:                                              ; preds = %330, %391
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %412 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 3
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 11
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @SET_DBGWVRn(i32 11, i32 %417)
  %419 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 1
  %423 = load i64*, i64** %422, align 8
  %424 = getelementptr inbounds i64, i64* %423, i64 11
  %425 = load i64, i64* %424, align 8
  %426 = trunc i64 %425 to i32
  %427 = load i32, i32* %9, align 4
  %428 = call i32 @SET_DBGWCRn(i32 11, i32 %426, i32 %427)
  br label %429

429:                                              ; preds = %330, %410
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 3
  %434 = load i32*, i32** %433, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 10
  %436 = load i32, i32* %435, align 4
  %437 = call i32 @SET_DBGWVRn(i32 10, i32 %436)
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %439 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 1
  %442 = load i64*, i64** %441, align 8
  %443 = getelementptr inbounds i64, i64* %442, i64 10
  %444 = load i64, i64* %443, align 8
  %445 = trunc i64 %444 to i32
  %446 = load i32, i32* %9, align 4
  %447 = call i32 @SET_DBGWCRn(i32 10, i32 %445, i32 %446)
  br label %448

448:                                              ; preds = %330, %429
  %449 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %450 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %451, i32 0, i32 3
  %453 = load i32*, i32** %452, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 9
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @SET_DBGWVRn(i32 9, i32 %455)
  %457 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %459, i32 0, i32 1
  %461 = load i64*, i64** %460, align 8
  %462 = getelementptr inbounds i64, i64* %461, i64 9
  %463 = load i64, i64* %462, align 8
  %464 = trunc i64 %463 to i32
  %465 = load i32, i32* %9, align 4
  %466 = call i32 @SET_DBGWCRn(i32 9, i32 %464, i32 %465)
  br label %467

467:                                              ; preds = %330, %448
  %468 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %469 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 3
  %472 = load i32*, i32** %471, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 8
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @SET_DBGWVRn(i32 8, i32 %474)
  %476 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %477 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i32 0, i32 1
  %480 = load i64*, i64** %479, align 8
  %481 = getelementptr inbounds i64, i64* %480, i64 8
  %482 = load i64, i64* %481, align 8
  %483 = trunc i64 %482 to i32
  %484 = load i32, i32* %9, align 4
  %485 = call i32 @SET_DBGWCRn(i32 8, i32 %483, i32 %484)
  br label %486

486:                                              ; preds = %330, %467
  %487 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %488 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %489, i32 0, i32 3
  %491 = load i32*, i32** %490, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 7
  %493 = load i32, i32* %492, align 4
  %494 = call i32 @SET_DBGWVRn(i32 7, i32 %493)
  %495 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %496 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %497, i32 0, i32 1
  %499 = load i64*, i64** %498, align 8
  %500 = getelementptr inbounds i64, i64* %499, i64 7
  %501 = load i64, i64* %500, align 8
  %502 = trunc i64 %501 to i32
  %503 = load i32, i32* %9, align 4
  %504 = call i32 @SET_DBGWCRn(i32 7, i32 %502, i32 %503)
  br label %505

505:                                              ; preds = %330, %486
  %506 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %507 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %508, i32 0, i32 3
  %510 = load i32*, i32** %509, align 8
  %511 = getelementptr inbounds i32, i32* %510, i64 6
  %512 = load i32, i32* %511, align 4
  %513 = call i32 @SET_DBGWVRn(i32 6, i32 %512)
  %514 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %515 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %516, i32 0, i32 1
  %518 = load i64*, i64** %517, align 8
  %519 = getelementptr inbounds i64, i64* %518, i64 6
  %520 = load i64, i64* %519, align 8
  %521 = trunc i64 %520 to i32
  %522 = load i32, i32* %9, align 4
  %523 = call i32 @SET_DBGWCRn(i32 6, i32 %521, i32 %522)
  br label %524

524:                                              ; preds = %330, %505
  %525 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %526 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %527, i32 0, i32 3
  %529 = load i32*, i32** %528, align 8
  %530 = getelementptr inbounds i32, i32* %529, i64 5
  %531 = load i32, i32* %530, align 4
  %532 = call i32 @SET_DBGWVRn(i32 5, i32 %531)
  %533 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %534 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %535, i32 0, i32 1
  %537 = load i64*, i64** %536, align 8
  %538 = getelementptr inbounds i64, i64* %537, i64 5
  %539 = load i64, i64* %538, align 8
  %540 = trunc i64 %539 to i32
  %541 = load i32, i32* %9, align 4
  %542 = call i32 @SET_DBGWCRn(i32 5, i32 %540, i32 %541)
  br label %543

543:                                              ; preds = %330, %524
  %544 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %545 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %546, i32 0, i32 3
  %548 = load i32*, i32** %547, align 8
  %549 = getelementptr inbounds i32, i32* %548, i64 4
  %550 = load i32, i32* %549, align 4
  %551 = call i32 @SET_DBGWVRn(i32 4, i32 %550)
  %552 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %553 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %554, i32 0, i32 1
  %556 = load i64*, i64** %555, align 8
  %557 = getelementptr inbounds i64, i64* %556, i64 4
  %558 = load i64, i64* %557, align 8
  %559 = trunc i64 %558 to i32
  %560 = load i32, i32* %9, align 4
  %561 = call i32 @SET_DBGWCRn(i32 4, i32 %559, i32 %560)
  br label %562

562:                                              ; preds = %330, %543
  %563 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %564 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %563, i32 0, i32 0
  %565 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %565, i32 0, i32 3
  %567 = load i32*, i32** %566, align 8
  %568 = getelementptr inbounds i32, i32* %567, i64 3
  %569 = load i32, i32* %568, align 4
  %570 = call i32 @SET_DBGWVRn(i32 3, i32 %569)
  %571 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %572 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %573, i32 0, i32 1
  %575 = load i64*, i64** %574, align 8
  %576 = getelementptr inbounds i64, i64* %575, i64 3
  %577 = load i64, i64* %576, align 8
  %578 = trunc i64 %577 to i32
  %579 = load i32, i32* %9, align 4
  %580 = call i32 @SET_DBGWCRn(i32 3, i32 %578, i32 %579)
  br label %581

581:                                              ; preds = %330, %562
  %582 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %583 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %584, i32 0, i32 3
  %586 = load i32*, i32** %585, align 8
  %587 = getelementptr inbounds i32, i32* %586, i64 2
  %588 = load i32, i32* %587, align 4
  %589 = call i32 @SET_DBGWVRn(i32 2, i32 %588)
  %590 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %591 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %591, i32 0, i32 0
  %593 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %592, i32 0, i32 1
  %594 = load i64*, i64** %593, align 8
  %595 = getelementptr inbounds i64, i64* %594, i64 2
  %596 = load i64, i64* %595, align 8
  %597 = trunc i64 %596 to i32
  %598 = load i32, i32* %9, align 4
  %599 = call i32 @SET_DBGWCRn(i32 2, i32 %597, i32 %598)
  br label %600

600:                                              ; preds = %330, %581
  %601 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %602 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %601, i32 0, i32 0
  %603 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %602, i32 0, i32 0
  %604 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %603, i32 0, i32 3
  %605 = load i32*, i32** %604, align 8
  %606 = getelementptr inbounds i32, i32* %605, i64 1
  %607 = load i32, i32* %606, align 4
  %608 = call i32 @SET_DBGWVRn(i32 1, i32 %607)
  %609 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %610 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %610, i32 0, i32 0
  %612 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %611, i32 0, i32 1
  %613 = load i64*, i64** %612, align 8
  %614 = getelementptr inbounds i64, i64* %613, i64 1
  %615 = load i64, i64* %614, align 8
  %616 = trunc i64 %615 to i32
  %617 = load i32, i32* %9, align 4
  %618 = call i32 @SET_DBGWCRn(i32 1, i32 %616, i32 %617)
  br label %619

619:                                              ; preds = %330, %600
  %620 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %621 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %620, i32 0, i32 0
  %622 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %622, i32 0, i32 3
  %624 = load i32*, i32** %623, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 0
  %626 = load i32, i32* %625, align 4
  %627 = call i32 @SET_DBGWVRn(i32 0, i32 %626)
  %628 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %629 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %628, i32 0, i32 0
  %630 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %630, i32 0, i32 1
  %632 = load i64*, i64** %631, align 8
  %633 = getelementptr inbounds i64, i64* %632, i64 0
  %634 = load i64, i64* %633, align 8
  %635 = trunc i64 %634 to i32
  %636 = load i32, i32* %9, align 4
  %637 = call i32 @SET_DBGWCRn(i32 0, i32 %635, i32 %636)
  br label %638

638:                                              ; preds = %330, %619
  br label %639

639:                                              ; preds = %638
  store i64 0, i64* %8, align 8
  br label %640

640:                                              ; preds = %659, %639
  %641 = load i64, i64* %8, align 8
  %642 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %643 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %642, i32 0, i32 0
  %644 = load i32, i32* %643, align 4
  %645 = sext i32 %644 to i64
  %646 = icmp ult i64 %641, %645
  br i1 %646, label %647, label %662

647:                                              ; preds = %640
  %648 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %649 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %648, i32 0, i32 0
  %650 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %649, i32 0, i32 0
  %651 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %650, i32 0, i32 0
  %652 = load i64*, i64** %651, align 8
  %653 = load i64, i64* %8, align 8
  %654 = getelementptr inbounds i64, i64* %652, i64 %653
  %655 = load i64, i64* %654, align 8
  %656 = icmp ne i64 0, %655
  br i1 %656, label %657, label %658

657:                                              ; preds = %647
  store i32 1, i32* %6, align 4
  br label %662

658:                                              ; preds = %647
  br label %659

659:                                              ; preds = %658
  %660 = load i64, i64* %8, align 8
  %661 = add i64 %660, 1
  store i64 %661, i64* %8, align 8
  br label %640

662:                                              ; preds = %657, %640
  store i64 0, i64* %8, align 8
  br label %663

663:                                              ; preds = %682, %662
  %664 = load i64, i64* %8, align 8
  %665 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %666 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %665, i32 0, i32 1
  %667 = load i32, i32* %666, align 4
  %668 = sext i32 %667 to i64
  %669 = icmp ult i64 %664, %668
  br i1 %669, label %670, label %685

670:                                              ; preds = %663
  %671 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %672 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %671, i32 0, i32 0
  %673 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %672, i32 0, i32 0
  %674 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %673, i32 0, i32 1
  %675 = load i64*, i64** %674, align 8
  %676 = load i64, i64* %8, align 8
  %677 = getelementptr inbounds i64, i64* %675, i64 %676
  %678 = load i64, i64* %677, align 8
  %679 = icmp ne i64 0, %678
  br i1 %679, label %680, label %681

680:                                              ; preds = %670
  store i32 1, i32* %6, align 4
  br label %685

681:                                              ; preds = %670
  br label %682

682:                                              ; preds = %681
  %683 = load i64, i64* %8, align 8
  %684 = add i64 %683, 1
  store i64 %684, i64* %8, align 8
  br label %663

685:                                              ; preds = %680, %663
  %686 = load i32, i32* %6, align 4
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %690

688:                                              ; preds = %685
  %689 = call i32 @update_mdscr(i32 0, i32 32768)
  br label %690

690:                                              ; preds = %688, %685
  %691 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %692 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %692, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %693, i32 0, i32 2
  %695 = load i32, i32* %694, align 8
  %696 = and i32 %695, 1
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %698, label %712

698:                                              ; preds = %690
  %699 = call i32 @update_mdscr(i32 32768, i32 1)
  %700 = call %struct.TYPE_15__* (...) @current_thread()
  %701 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %700, i32 0, i32 0
  %702 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %701, i32 0, i32 0
  %703 = load i32, i32* %702, align 4
  %704 = call %struct.TYPE_15__* (...) @current_thread()
  %705 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %704, i32 0, i32 0
  %706 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %705, i32 0, i32 0
  %707 = load i32, i32* %706, align 4
  %708 = call i32 @get_saved_state_cpsr(i32 %707)
  %709 = load i32, i32* @PSR64_SS, align 4
  %710 = or i32 %708, %709
  %711 = call i32 @set_saved_state_cpsr(i32 %703, i32 %710)
  br label %714

712:                                              ; preds = %690
  %713 = call i32 @update_mdscr(i32 1, i32 0)
  br label %714

714:                                              ; preds = %712, %698
  %715 = load i32, i32* %5, align 4
  %716 = call i32 @ml_set_interrupts_enabled(i32 %715)
  ret void
}

declare dso_local %struct.TYPE_14__* @arm_debug_info(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local %struct.cpu_data* @getCpuDatap(...) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @SET_DBGBVRn(i32, i32) #1

declare dso_local i32 @SET_DBGBCRn(i32, i32, i32) #1

declare dso_local i32 @SET_DBGWVRn(i32, i32) #1

declare dso_local i32 @SET_DBGWCRn(i32, i32, i32) #1

declare dso_local i32 @update_mdscr(i32, i32) #1

declare dso_local i32 @set_saved_state_cpsr(i32, i32) #1

declare dso_local %struct.TYPE_15__* @current_thread(...) #1

declare dso_local i32 @get_saved_state_cpsr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
