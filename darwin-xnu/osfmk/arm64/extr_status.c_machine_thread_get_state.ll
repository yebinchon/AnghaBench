; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_machine_thread_get_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_status.c_machine_thread_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.arm_exception_state = type { i32, i32, i32 }
%struct.arm_saved_state32 = type { i32, i32, i32 }
%struct.arm_exception_state64 = type { i32, i32, i32 }
%struct.arm_saved_state64 = type { i32, i32, i32 }
%struct.arm_vfp_state = type { i32 }

@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@ARM_EXCEPTION_STATE_COUNT = common dso_local global i32 0, align 4
@ARM_EXCEPTION_STATE64_COUNT = common dso_local global i32 0, align 4
@ARM_LEGACY_DEBUG_STATE_COUNT = common dso_local global i32 0, align 4
@ARM_DEBUG_STATE32_COUNT = common dso_local global i32 0, align 4
@ARM_DEBUG_STATE64_COUNT = common dso_local global i32 0, align 4
@ARM_VFP_STATE_COUNT = common dso_local global i32 0, align 4
@ARM_VFPV2_STATE_COUNT = common dso_local global i32 0, align 4
@ARM_NEON_STATE_COUNT = common dso_local global i32 0, align 4
@ARM_NEON_STATE64_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_thread_get_state(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.arm_exception_state*, align 8
  %13 = alloca %struct.arm_saved_state32*, align 8
  %14 = alloca %struct.arm_exception_state64*, align 8
  %15 = alloca %struct.arm_saved_state64*, align 8
  %16 = alloca %struct.arm_vfp_state*, align 8
  %17 = alloca %struct.arm_vfp_state*, align 8
  %18 = alloca %struct.arm_vfp_state*, align 8
  %19 = alloca %struct.arm_vfp_state*, align 8
  %20 = alloca %struct.arm_vfp_state*, align 8
  %21 = alloca %struct.arm_vfp_state*, align 8
  %22 = alloca %struct.arm_vfp_state*, align 8
  %23 = alloca %struct.arm_vfp_state*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.arm_vfp_state*, align 8
  %26 = alloca %struct.arm_vfp_state*, align 8
  %27 = alloca %struct.arm_vfp_state*, align 8
  %28 = alloca %struct.arm_vfp_state*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %366 [
    i32 129, label %30
    i32 128, label %46
    i32 133, label %72
    i32 132, label %85
    i32 137, label %104
    i32 136, label %142
    i32 140, label %180
    i32 139, label %210
    i32 138, label %240
    i32 130, label %270
    i32 135, label %312
    i32 134, label %339
  ]

30:                                               ; preds = %4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %35, i32* %5, align 4
  br label %370

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 133, i32* %38, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 130, i32* %40, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 137, i32* %42, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 140, i32* %44, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 4, i32* %45, align 4
  br label %368

46:                                               ; preds = %4
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %51, i32* %5, align 4
  br label %370

52:                                               ; preds = %46
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 133, i32* %54, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 130, i32* %56, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = call i32 @thread_is_64bit_data(%struct.TYPE_8__* %57)
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 136, i32 137
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = call i32 @thread_is_64bit_data(%struct.TYPE_8__* %64)
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 138, i32 139
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 4, i32* %71, align 4
  br label %368

72:                                               ; preds = %4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @handle_get_arm_thread_state(i32* %73, i32* %74, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %5, align 4
  br label %370

84:                                               ; preds = %72
  br label %368

85:                                               ; preds = %4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = call i32 @thread_is_64bit_data(%struct.TYPE_8__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %90, i32* %5, align 4
  br label %370

91:                                               ; preds = %85
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @handle_get_arm32_thread_state(i32* %92, i32* %93, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %5, align 4
  br label %370

103:                                              ; preds = %91
  br label %368

104:                                              ; preds = %4
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ARM_EXCEPTION_STATE_COUNT, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %110, i32* %5, align 4
  br label %370

111:                                              ; preds = %104
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = call i32 @thread_is_64bit_data(%struct.TYPE_8__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %116, i32* %5, align 4
  br label %370

117:                                              ; preds = %111
  %118 = load i32*, i32** %8, align 8
  %119 = bitcast i32* %118 to %struct.arm_exception_state*
  store %struct.arm_exception_state* %119, %struct.arm_exception_state** %12, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.arm_saved_state32* @saved_state32(i32 %123)
  store %struct.arm_saved_state32* %124, %struct.arm_saved_state32** %13, align 8
  %125 = load %struct.arm_saved_state32*, %struct.arm_saved_state32** %13, align 8
  %126 = getelementptr inbounds %struct.arm_saved_state32, %struct.arm_saved_state32* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.arm_exception_state*, %struct.arm_exception_state** %12, align 8
  %129 = getelementptr inbounds %struct.arm_exception_state, %struct.arm_exception_state* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.arm_saved_state32*, %struct.arm_saved_state32** %13, align 8
  %131 = getelementptr inbounds %struct.arm_saved_state32, %struct.arm_saved_state32* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.arm_exception_state*, %struct.arm_exception_state** %12, align 8
  %134 = getelementptr inbounds %struct.arm_exception_state, %struct.arm_exception_state* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.arm_saved_state32*, %struct.arm_saved_state32** %13, align 8
  %136 = getelementptr inbounds %struct.arm_saved_state32, %struct.arm_saved_state32* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.arm_exception_state*, %struct.arm_exception_state** %12, align 8
  %139 = getelementptr inbounds %struct.arm_exception_state, %struct.arm_exception_state* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @ARM_EXCEPTION_STATE_COUNT, align 4
  %141 = load i32*, i32** %9, align 8
  store i32 %140, i32* %141, align 4
  br label %368

142:                                              ; preds = %4
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ARM_EXCEPTION_STATE64_COUNT, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %148, i32* %5, align 4
  br label %370

149:                                              ; preds = %142
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %151 = call i32 @thread_is_64bit_data(%struct.TYPE_8__* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %154, i32* %5, align 4
  br label %370

155:                                              ; preds = %149
  %156 = load i32*, i32** %8, align 8
  %157 = bitcast i32* %156 to %struct.arm_exception_state64*
  store %struct.arm_exception_state64* %157, %struct.arm_exception_state64** %14, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call %struct.arm_saved_state64* @saved_state64(i32 %161)
  store %struct.arm_saved_state64* %162, %struct.arm_saved_state64** %15, align 8
  %163 = load %struct.arm_saved_state64*, %struct.arm_saved_state64** %15, align 8
  %164 = getelementptr inbounds %struct.arm_saved_state64, %struct.arm_saved_state64* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.arm_exception_state64*, %struct.arm_exception_state64** %14, align 8
  %167 = getelementptr inbounds %struct.arm_exception_state64, %struct.arm_exception_state64* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  %168 = load %struct.arm_saved_state64*, %struct.arm_saved_state64** %15, align 8
  %169 = getelementptr inbounds %struct.arm_saved_state64, %struct.arm_saved_state64* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.arm_exception_state64*, %struct.arm_exception_state64** %14, align 8
  %172 = getelementptr inbounds %struct.arm_exception_state64, %struct.arm_exception_state64* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.arm_saved_state64*, %struct.arm_saved_state64** %15, align 8
  %174 = getelementptr inbounds %struct.arm_saved_state64, %struct.arm_saved_state64* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.arm_exception_state64*, %struct.arm_exception_state64** %14, align 8
  %177 = getelementptr inbounds %struct.arm_exception_state64, %struct.arm_exception_state64* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @ARM_EXCEPTION_STATE64_COUNT, align 4
  %179 = load i32*, i32** %9, align 8
  store i32 %178, i32* %179, align 4
  br label %368

180:                                              ; preds = %4
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @ARM_LEGACY_DEBUG_STATE_COUNT, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %186, i32* %5, align 4
  br label %370

187:                                              ; preds = %180
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %189 = call i32 @thread_is_64bit_data(%struct.TYPE_8__* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %192, i32* %5, align 4
  br label %370

193:                                              ; preds = %187
  %194 = load i32*, i32** %8, align 8
  %195 = bitcast i32* %194 to %struct.arm_vfp_state*
  store %struct.arm_vfp_state* %195, %struct.arm_vfp_state** %16, align 8
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %197 = call %struct.arm_vfp_state* @find_debug_state32(%struct.TYPE_8__* %196)
  store %struct.arm_vfp_state* %197, %struct.arm_vfp_state** %17, align 8
  %198 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %17, align 8
  %199 = icmp eq %struct.arm_vfp_state* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %16, align 8
  %202 = call i32 @bzero(%struct.arm_vfp_state* %201, i32 4)
  br label %207

203:                                              ; preds = %193
  %204 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %17, align 8
  %205 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %16, align 8
  %206 = call i32 @bcopy(%struct.arm_vfp_state* %204, %struct.arm_vfp_state* %205, i32 4)
  br label %207

207:                                              ; preds = %203, %200
  %208 = load i32, i32* @ARM_LEGACY_DEBUG_STATE_COUNT, align 4
  %209 = load i32*, i32** %9, align 8
  store i32 %208, i32* %209, align 4
  br label %368

210:                                              ; preds = %4
  %211 = load i32*, i32** %9, align 8
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @ARM_DEBUG_STATE32_COUNT, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %216, i32* %5, align 4
  br label %370

217:                                              ; preds = %210
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %219 = call i32 @thread_is_64bit_data(%struct.TYPE_8__* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %222, i32* %5, align 4
  br label %370

223:                                              ; preds = %217
  %224 = load i32*, i32** %8, align 8
  %225 = bitcast i32* %224 to %struct.arm_vfp_state*
  store %struct.arm_vfp_state* %225, %struct.arm_vfp_state** %18, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %227 = call %struct.arm_vfp_state* @find_debug_state32(%struct.TYPE_8__* %226)
  store %struct.arm_vfp_state* %227, %struct.arm_vfp_state** %19, align 8
  %228 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %19, align 8
  %229 = icmp eq %struct.arm_vfp_state* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %223
  %231 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %18, align 8
  %232 = call i32 @bzero(%struct.arm_vfp_state* %231, i32 4)
  br label %237

233:                                              ; preds = %223
  %234 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %19, align 8
  %235 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %18, align 8
  %236 = call i32 @bcopy(%struct.arm_vfp_state* %234, %struct.arm_vfp_state* %235, i32 4)
  br label %237

237:                                              ; preds = %233, %230
  %238 = load i32, i32* @ARM_DEBUG_STATE32_COUNT, align 4
  %239 = load i32*, i32** %9, align 8
  store i32 %238, i32* %239, align 4
  br label %368

240:                                              ; preds = %4
  %241 = load i32*, i32** %9, align 8
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @ARM_DEBUG_STATE64_COUNT, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %240
  %246 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %246, i32* %5, align 4
  br label %370

247:                                              ; preds = %240
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %249 = call i32 @thread_is_64bit_data(%struct.TYPE_8__* %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %252, i32* %5, align 4
  br label %370

253:                                              ; preds = %247
  %254 = load i32*, i32** %8, align 8
  %255 = bitcast i32* %254 to %struct.arm_vfp_state*
  store %struct.arm_vfp_state* %255, %struct.arm_vfp_state** %20, align 8
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %257 = call %struct.arm_vfp_state* @find_debug_state64(%struct.TYPE_8__* %256)
  store %struct.arm_vfp_state* %257, %struct.arm_vfp_state** %21, align 8
  %258 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %21, align 8
  %259 = icmp eq %struct.arm_vfp_state* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %253
  %261 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %20, align 8
  %262 = call i32 @bzero(%struct.arm_vfp_state* %261, i32 4)
  br label %267

263:                                              ; preds = %253
  %264 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %21, align 8
  %265 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %20, align 8
  %266 = call i32 @bcopy(%struct.arm_vfp_state* %264, %struct.arm_vfp_state* %265, i32 4)
  br label %267

267:                                              ; preds = %263, %260
  %268 = load i32, i32* @ARM_DEBUG_STATE64_COUNT, align 4
  %269 = load i32*, i32** %9, align 8
  store i32 %268, i32* %269, align 4
  br label %368

270:                                              ; preds = %4
  %271 = load i32*, i32** %9, align 8
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @ARM_VFP_STATE_COUNT, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %286

275:                                              ; preds = %270
  %276 = load i32*, i32** %9, align 8
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @ARM_VFPV2_STATE_COUNT, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %275
  %281 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %281, i32* %5, align 4
  br label %370

282:                                              ; preds = %275
  %283 = load i32, i32* @ARM_VFPV2_STATE_COUNT, align 4
  %284 = load i32*, i32** %9, align 8
  store i32 %283, i32* %284, align 4
  br label %285

285:                                              ; preds = %282
  br label %286

286:                                              ; preds = %285, %270
  %287 = load i32*, i32** %9, align 8
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @ARM_VFPV2_STATE_COUNT, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %286
  store i32 32, i32* %24, align 4
  br label %293

292:                                              ; preds = %286
  store i32 64, i32* %24, align 4
  br label %293

293:                                              ; preds = %292, %291
  %294 = load i32*, i32** %8, align 8
  %295 = bitcast i32* %294 to %struct.arm_vfp_state*
  store %struct.arm_vfp_state* %295, %struct.arm_vfp_state** %22, align 8
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call %struct.arm_vfp_state* @neon_state32(i32 %299)
  store %struct.arm_vfp_state* %300, %struct.arm_vfp_state** %23, align 8
  %301 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %23, align 8
  %302 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %22, align 8
  %303 = load i32, i32* %24, align 4
  %304 = add i32 %303, 1
  %305 = zext i32 %304 to i64
  %306 = mul i64 %305, 4
  %307 = trunc i64 %306 to i32
  %308 = call i32 @bcopy(%struct.arm_vfp_state* %301, %struct.arm_vfp_state* %302, i32 %307)
  %309 = load i32, i32* %24, align 4
  %310 = add i32 %309, 1
  %311 = load i32*, i32** %9, align 8
  store i32 %310, i32* %311, align 4
  br label %368

312:                                              ; preds = %4
  %313 = load i32*, i32** %9, align 8
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @ARM_NEON_STATE_COUNT, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %318, i32* %5, align 4
  br label %370

319:                                              ; preds = %312
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %321 = call i32 @thread_is_64bit_data(%struct.TYPE_8__* %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %319
  %324 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %324, i32* %5, align 4
  br label %370

325:                                              ; preds = %319
  %326 = load i32*, i32** %8, align 8
  %327 = bitcast i32* %326 to %struct.arm_vfp_state*
  store %struct.arm_vfp_state* %327, %struct.arm_vfp_state** %25, align 8
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = call %struct.arm_vfp_state* @neon_state32(i32 %331)
  store %struct.arm_vfp_state* %332, %struct.arm_vfp_state** %26, align 8
  %333 = call i32 @assert(i32 1)
  %334 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %26, align 8
  %335 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %25, align 8
  %336 = call i32 @bcopy(%struct.arm_vfp_state* %334, %struct.arm_vfp_state* %335, i32 4)
  %337 = load i32, i32* @ARM_NEON_STATE_COUNT, align 4
  %338 = load i32*, i32** %9, align 8
  store i32 %337, i32* %338, align 4
  br label %368

339:                                              ; preds = %4
  %340 = load i32*, i32** %9, align 8
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @ARM_NEON_STATE64_COUNT, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %346

344:                                              ; preds = %339
  %345 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %345, i32* %5, align 4
  br label %370

346:                                              ; preds = %339
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %348 = call i32 @thread_is_64bit_data(%struct.TYPE_8__* %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %352, label %350

350:                                              ; preds = %346
  %351 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %351, i32* %5, align 4
  br label %370

352:                                              ; preds = %346
  %353 = load i32*, i32** %8, align 8
  %354 = bitcast i32* %353 to %struct.arm_vfp_state*
  store %struct.arm_vfp_state* %354, %struct.arm_vfp_state** %27, align 8
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = call %struct.arm_vfp_state* @neon_state64(i32 %358)
  store %struct.arm_vfp_state* %359, %struct.arm_vfp_state** %28, align 8
  %360 = call i32 @assert(i32 1)
  %361 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %28, align 8
  %362 = load %struct.arm_vfp_state*, %struct.arm_vfp_state** %27, align 8
  %363 = call i32 @bcopy(%struct.arm_vfp_state* %361, %struct.arm_vfp_state* %362, i32 4)
  %364 = load i32, i32* @ARM_NEON_STATE64_COUNT, align 4
  %365 = load i32*, i32** %9, align 8
  store i32 %364, i32* %365, align 4
  br label %368

366:                                              ; preds = %4
  %367 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %367, i32* %5, align 4
  br label %370

368:                                              ; preds = %352, %325, %293, %267, %237, %207, %155, %117, %103, %84, %52, %36
  %369 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %369, i32* %5, align 4
  br label %370

370:                                              ; preds = %368, %366, %350, %344, %323, %317, %280, %251, %245, %221, %215, %191, %185, %153, %147, %115, %109, %101, %89, %82, %50, %34
  %371 = load i32, i32* %5, align 4
  ret i32 %371
}

declare dso_local i32 @thread_is_64bit_data(%struct.TYPE_8__*) #1

declare dso_local i32 @handle_get_arm_thread_state(i32*, i32*, i32) #1

declare dso_local i32 @handle_get_arm32_thread_state(i32*, i32*, i32) #1

declare dso_local %struct.arm_saved_state32* @saved_state32(i32) #1

declare dso_local %struct.arm_saved_state64* @saved_state64(i32) #1

declare dso_local %struct.arm_vfp_state* @find_debug_state32(%struct.TYPE_8__*) #1

declare dso_local i32 @bzero(%struct.arm_vfp_state*, i32) #1

declare dso_local i32 @bcopy(%struct.arm_vfp_state*, %struct.arm_vfp_state*, i32) #1

declare dso_local %struct.arm_vfp_state* @find_debug_state64(%struct.TYPE_8__*) #1

declare dso_local %struct.arm_vfp_state* @neon_state32(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.arm_vfp_state* @neon_state64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
