; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_set_fxstate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_set_fxstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_fx_thread_state = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.x86_fx_thread_state* }
%struct.x86_avx_thread_state = type { %struct.TYPE_12__, i32, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_16__ = type { i32 }
%struct.x86_avx512_thread_state = type { i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i8* }
%union.anon = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@fpu_capability = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@mxcsr_capability_mask = common dso_local global i32 0, align 4
@fp_state_size = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"fpu_set_fxstate() UNDEFINED xstate\00", align 1
@FXSAVE64 = common dso_local global i32 0, align 4
@FXSAVE32 = common dso_local global i32 0, align 4
@XSAVE64 = common dso_local global i8* null, align 8
@XSAVE32 = common dso_local global i8* null, align 8
@AVX_XMASK = common dso_local global i32 0, align 4
@XFEM_SSE = common dso_local global i32 0, align 4
@XFEM_X87 = common dso_local global i32 0, align 4
@AVX512_XMASK = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpu_set_fxstate(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.x86_fx_thread_state*, align 8
  %9 = alloca %struct.x86_fx_thread_state*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.x86_avx_thread_state*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.x86_avx512_thread_state*, align 8
  %17 = alloca %union.anon, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* @fpu_capability, align 8
  %21 = icmp eq i64 %20, 132
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %23, i32* %4, align 4
  br label %346

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 129
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 128
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %24
  %31 = load i64, i64* @fpu_capability, align 8
  %32 = icmp slt i64 %31, 135
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %34, i32* %4, align 4
  br label %346

35:                                               ; preds = %30, %27
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 131
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %39, 130
  br i1 %40, label %41, label %52

41:                                               ; preds = %38, %35
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @thread_xstate(i64 %42)
  %44 = icmp eq i32 %43, 135
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @fpu_thread_promote_avx512(i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %50, i32* %4, align 4
  br label %346

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %41, %38
  %53 = load i64, i64* %6, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %10, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @THREAD_NULL, align 8
  %57 = icmp ne i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i64, i64* %5, align 8
  %61 = call %struct.TYPE_19__* @THREAD_TO_PCB(i64 %60)
  store %struct.TYPE_19__* %61, %struct.TYPE_19__** %11, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %63 = icmp eq %struct.TYPE_15__* %62, null
  br i1 %63, label %64, label %84

64:                                               ; preds = %52
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = call i32 @simple_lock(i32* %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  %70 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %69, align 8
  store %struct.x86_fx_thread_state* %70, %struct.x86_fx_thread_state** %8, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  store %struct.x86_fx_thread_state* null, %struct.x86_fx_thread_state** %72, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = call i32 @simple_unlock(i32* %74)
  %76 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %77 = icmp ne %struct.x86_fx_thread_state* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %64
  %79 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @thread_xstate(i64 %80)
  %82 = call i32 @fp_state_free(%struct.x86_fx_thread_state* %79, i32 %81)
  br label %83

83:                                               ; preds = %78, %64
  br label %344

84:                                               ; preds = %52
  store %struct.x86_fx_thread_state* null, %struct.x86_fx_thread_state** %9, align 8
  br label %85

85:                                               ; preds = %97, %84
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = call i32 @simple_lock(i32* %87)
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 2
  %91 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %90, align 8
  store %struct.x86_fx_thread_state* %91, %struct.x86_fx_thread_state** %8, align 8
  %92 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %93 = icmp eq %struct.x86_fx_thread_state* %92, null
  br i1 %93, label %94, label %114

94:                                               ; preds = %85
  %95 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %9, align 8
  %96 = icmp eq %struct.x86_fx_thread_state* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = call i32 @simple_unlock(i32* %99)
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @thread_xstate(i64 %101)
  %103 = call %struct.x86_fx_thread_state* @fp_state_alloc(i32 %102)
  store %struct.x86_fx_thread_state* %103, %struct.x86_fx_thread_state** %9, align 8
  br label %85

104:                                              ; preds = %94
  %105 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %9, align 8
  store %struct.x86_fx_thread_state* %105, %struct.x86_fx_thread_state** %8, align 8
  store %struct.x86_fx_thread_state* null, %struct.x86_fx_thread_state** %9, align 8
  %106 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  store %struct.x86_fx_thread_state* %106, %struct.x86_fx_thread_state** %108, align 8
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @thread_xstate(i64 %109)
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load i64, i64* @TRUE, align 8
  store i64 %113, i64* %13, align 8
  br label %114

114:                                              ; preds = %104, %85
  %115 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %116 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %12, align 8
  %118 = load i32, i32* @mxcsr_capability_mask, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = bitcast i32* %124 to i8*
  %126 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %127 = bitcast %struct.x86_fx_thread_state* %126 to i8*
  %128 = load i32*, i32** @fp_state_size, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 133
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @bcopy(i8* %125, i8* %127, i32 %130)
  %132 = load i64, i64* %5, align 8
  %133 = call i32 @thread_xstate(i64 %132)
  switch i32 %133, label %311 [
    i32 132, label %134
    i32 133, label %136
    i32 135, label %148
    i32 134, label %207
  ]

134:                                              ; preds = %114
  %135 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %311

136:                                              ; preds = %114
  %137 = load i64, i64* %5, align 8
  %138 = call i32 @thread_is_64bit_addr(i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i32, i32* @FXSAVE64, align 4
  br label %144

142:                                              ; preds = %136
  %143 = load i32, i32* @FXSAVE32, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  %146 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %147 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  br label %311

148:                                              ; preds = %114
  %149 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %150 = bitcast %struct.x86_fx_thread_state* %149 to i8*
  %151 = bitcast i8* %150 to %struct.x86_avx_thread_state*
  store %struct.x86_avx_thread_state* %151, %struct.x86_avx_thread_state** %14, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %153 = bitcast %struct.TYPE_15__* %152 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %153, %struct.TYPE_16__** %15, align 8
  %154 = load i64, i64* %5, align 8
  %155 = call i32 @thread_is_64bit_addr(i64 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = load i8*, i8** @XSAVE64, align 8
  br label %161

159:                                              ; preds = %148
  %160 = load i8*, i8** @XSAVE32, align 8
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i8* [ %158, %157 ], [ %160, %159 ]
  %163 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %14, align 8
  %164 = getelementptr inbounds %struct.x86_avx_thread_state, %struct.x86_avx_thread_state* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  store i8* %162, i8** %165, align 8
  %166 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %14, align 8
  %167 = getelementptr inbounds %struct.x86_avx_thread_state, %struct.x86_avx_thread_state* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = call i32 @bzero(i32* %170, i32 8)
  %172 = load i32, i32* @AVX_XMASK, align 4
  %173 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %14, align 8
  %174 = getelementptr inbounds %struct.x86_avx_thread_state, %struct.x86_avx_thread_state* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 8
  %176 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %14, align 8
  %177 = getelementptr inbounds %struct.x86_avx_thread_state, %struct.x86_avx_thread_state* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  store i32 0, i32* %178, align 4
  %179 = load i64, i64* %7, align 8
  %180 = icmp eq i64 %179, 129
  br i1 %180, label %181, label %188

181:                                              ; preds = %161
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %14, align 8
  %185 = getelementptr inbounds %struct.x86_avx_thread_state, %struct.x86_avx_thread_state* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @bcopy_nochk(i32* %183, i32 %186, i32 32)
  br label %206

188:                                              ; preds = %161
  %189 = load i64, i64* %7, align 8
  %190 = icmp eq i64 %189, 128
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %14, align 8
  %195 = getelementptr inbounds %struct.x86_avx_thread_state, %struct.x86_avx_thread_state* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @bcopy_nochk(i32* %193, i32 %196, i32 64)
  br label %205

198:                                              ; preds = %188
  %199 = load i32, i32* @XFEM_SSE, align 4
  %200 = load i32, i32* @XFEM_X87, align 4
  %201 = or i32 %199, %200
  %202 = load %struct.x86_avx_thread_state*, %struct.x86_avx_thread_state** %14, align 8
  %203 = getelementptr inbounds %struct.x86_avx_thread_state, %struct.x86_avx_thread_state* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 8
  br label %205

205:                                              ; preds = %198, %191
  br label %206

206:                                              ; preds = %205, %181
  br label %311

207:                                              ; preds = %114
  %208 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %209 = bitcast %struct.x86_fx_thread_state* %208 to i8*
  %210 = bitcast i8* %209 to %struct.x86_avx512_thread_state*
  store %struct.x86_avx512_thread_state* %210, %struct.x86_avx512_thread_state** %16, align 8
  %211 = bitcast %union.anon* %17 to i64*
  %212 = load i64, i64* %6, align 8
  store i64 %212, i64* %211, align 8
  %213 = load i64, i64* %5, align 8
  %214 = call i32 @thread_is_64bit_addr(i64 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %207
  %217 = load i8*, i8** @XSAVE64, align 8
  br label %220

218:                                              ; preds = %207
  %219 = load i8*, i8** @XSAVE32, align 8
  br label %220

220:                                              ; preds = %218, %216
  %221 = phi i8* [ %217, %216 ], [ %219, %218 ]
  %222 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %223 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  store i8* %221, i8** %224, align 8
  %225 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %226 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = call i32 @bzero(i32* %229, i32 8)
  %231 = load i32, i32* @AVX512_XMASK, align 4
  %232 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %233 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 1
  store i32 %231, i32* %234, align 4
  %235 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %236 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  store i32 0, i32* %237, align 8
  %238 = load i64, i64* %7, align 8
  switch i64 %238, label %310 [
    i64 131, label %239
    i64 129, label %263
    i64 130, label %271
    i64 128, label %302
  ]

239:                                              ; preds = %220
  %240 = bitcast %union.anon* %17 to %struct.TYPE_18__**
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 2
  %243 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %244 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @bcopy_nochk(i32* %242, i32 %245, i32 32)
  %247 = bitcast %union.anon* %17 to %struct.TYPE_18__**
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 1
  %250 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %251 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @bcopy_nochk(i32* %249, i32 %252, i32 32)
  %254 = bitcast %union.anon* %17 to %struct.TYPE_18__**
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 0
  %257 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %258 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @bcopy_nochk(i32* %256, i32 %259, i32 32)
  %261 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %262 = call i32 @DBG_AVX512_STATE(%struct.x86_avx512_thread_state* %261)
  br label %310

263:                                              ; preds = %220
  %264 = bitcast %union.anon* %17 to %struct.TYPE_18__**
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 0
  %267 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %268 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @bcopy_nochk(i32* %266, i32 %269, i32 32)
  br label %310

271:                                              ; preds = %220
  %272 = bitcast %union.anon* %17 to %struct.TYPE_17__**
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 3
  %275 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %276 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @bcopy_nochk(i32* %274, i32 %277, i32 32)
  %279 = bitcast %union.anon* %17 to %struct.TYPE_17__**
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 2
  %282 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %283 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @bcopy_nochk(i32* %281, i32 %284, i32 64)
  %286 = bitcast %union.anon* %17 to %struct.TYPE_17__**
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 1
  %289 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %290 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @bcopy_nochk(i32* %288, i32 %291, i32 64)
  %293 = bitcast %union.anon* %17 to %struct.TYPE_17__**
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 0
  %296 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %297 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @bcopy_nochk(i32* %295, i32 %298, i32 64)
  %300 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %301 = call i32 @DBG_AVX512_STATE(%struct.x86_avx512_thread_state* %300)
  br label %310

302:                                              ; preds = %220
  %303 = bitcast %union.anon* %17 to %struct.TYPE_17__**
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 0
  %306 = load %struct.x86_avx512_thread_state*, %struct.x86_avx512_thread_state** %16, align 8
  %307 = getelementptr inbounds %struct.x86_avx512_thread_state, %struct.x86_avx512_thread_state* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @bcopy_nochk(i32* %305, i32 %308, i32 64)
  br label %310

310:                                              ; preds = %220, %302, %271, %263, %239
  br label %311

311:                                              ; preds = %114, %310, %206, %144, %134
  %312 = load i64, i64* %12, align 8
  %313 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %314 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %313, i32 0, i32 0
  store i64 %312, i64* %314, align 8
  %315 = load i64, i64* %12, align 8
  %316 = load i64, i64* @FALSE, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %332

318:                                              ; preds = %311
  %319 = load i64, i64* @FALSE, align 8
  %320 = call i64 @ml_set_interrupts_enabled(i64 %319)
  store i64 %320, i64* %18, align 8
  %321 = load i64, i64* @TRUE, align 8
  %322 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %8, align 8
  %323 = getelementptr inbounds %struct.x86_fx_thread_state, %struct.x86_fx_thread_state* %322, i32 0, i32 0
  store i64 %321, i64* %323, align 8
  %324 = load i64, i64* %5, align 8
  %325 = call i64 (...) @current_thread()
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %329

327:                                              ; preds = %318
  %328 = call i32 (...) @set_ts()
  br label %329

329:                                              ; preds = %327, %318
  %330 = load i64, i64* %18, align 8
  %331 = call i64 @ml_set_interrupts_enabled(i64 %330)
  br label %332

332:                                              ; preds = %329, %311
  %333 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %333, i32 0, i32 1
  %335 = call i32 @simple_unlock(i32* %334)
  %336 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %9, align 8
  %337 = icmp ne %struct.x86_fx_thread_state* %336, null
  br i1 %337, label %338, label %343

338:                                              ; preds = %332
  %339 = load %struct.x86_fx_thread_state*, %struct.x86_fx_thread_state** %9, align 8
  %340 = load i64, i64* %5, align 8
  %341 = call i32 @thread_xstate(i64 %340)
  %342 = call i32 @fp_state_free(%struct.x86_fx_thread_state* %339, i32 %341)
  br label %343

343:                                              ; preds = %338, %332
  br label %344

344:                                              ; preds = %343, %83
  %345 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %345, i32* %4, align 4
  br label %346

346:                                              ; preds = %344, %49, %33, %22
  %347 = load i32, i32* %4, align 4
  ret i32 %347
}

declare dso_local i32 @thread_xstate(i64) #1

declare dso_local i32 @fpu_thread_promote_avx512(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_19__* @THREAD_TO_PCB(i64) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @fp_state_free(%struct.x86_fx_thread_state*, i32) #1

declare dso_local %struct.x86_fx_thread_state* @fp_state_alloc(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @thread_is_64bit_addr(i64) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy_nochk(i32*, i32, i32) #1

declare dso_local i32 @DBG_AVX512_STATE(%struct.x86_avx512_thread_state*) #1

declare dso_local i64 @ml_set_interrupts_enabled(i64) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @set_ts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
