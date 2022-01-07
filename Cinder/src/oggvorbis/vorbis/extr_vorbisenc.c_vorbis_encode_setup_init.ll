; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_setup_init.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_setup_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, double, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64*, %struct.TYPE_22__, %struct.TYPE_25__ }
%struct.TYPE_22__ = type { double, i32, i32, i64, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.TYPE_21__*, i32, i64, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32*, i32, i32, i32, i32 }

@OV_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_encode_setup_init(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %8, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  store %struct.TYPE_25__* %14, %struct.TYPE_25__** %9, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %16 = icmp eq %struct.TYPE_26__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @OV_EINVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %597

19:                                               ; preds = %1
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 15
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, -80
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  store i32 -80, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, -200
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  store i32 -200, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sitofp i32 %44 to double
  %46 = fcmp ogt double %45, 0.000000e+00
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sitofp i32 %53 to double
  %55 = fcmp olt double %54, -9.999900e+04
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 1
  store i32 -99999, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 14
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %63, %struct.TYPE_24__** %8, align 8
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %65 = icmp eq %struct.TYPE_24__* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @OV_EINVAL, align 4
  store i32 %67, i32* %2, align 4
  br label %597

68:                                               ; preds = %59
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 27
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 26
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @vorbis_encode_blocksize_setup(%struct.TYPE_23__* %71, i32 %74, i32 %77, i32 %80)
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %86, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %68
  store i32 1, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %68
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %120, %94
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %95
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 25
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 24
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 23
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @vorbis_encode_floor_setup(%struct.TYPE_23__* %102, i32 %105, i32 %108, i32 %111, i32 %118)
  br label %120

120:                                              ; preds = %101
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %95

123:                                              ; preds = %95
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 13
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 22
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 21
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @vorbis_encode_global_psych_setup(%struct.TYPE_23__* %124, i32 %127, i32 %130, i32 %133)
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 20
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @vorbis_encode_global_stereo(%struct.TYPE_23__* %135, %struct.TYPE_25__* %136, i32 %139)
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 11
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 19
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 18
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 17
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @vorbis_encode_psyset_setup(%struct.TYPE_23__* %141, i32 %144, i32 %149, i32 %154, i32 %157, i32 0)
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 11
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 19
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 18
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 17
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @vorbis_encode_psyset_setup(%struct.TYPE_23__* %159, i32 %162, i32 %167, i32 %172, i32 %175, i32 1)
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %216, label %179

179:                                              ; preds = %123
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 11
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 19
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 18
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 17
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @vorbis_encode_psyset_setup(%struct.TYPE_23__* %180, i32 %183, i32 %188, i32 %193, i32 %196, i32 2)
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 11
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 19
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 18
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 17
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @vorbis_encode_psyset_setup(%struct.TYPE_23__* %198, i32 %201, i32 %206, i32 %211, i32 %214, i32 3)
  br label %216

216:                                              ; preds = %179, %123
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 12
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %219, align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 14
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 13
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 16
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @vorbis_encode_tonemask_setup(%struct.TYPE_23__* %217, i32 %225, i32 0, i32 %228, i32 %231, i32 %234)
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 12
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i64 1
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 14
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 13
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 15
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @vorbis_encode_tonemask_setup(%struct.TYPE_23__* %236, i32 %242, i32 1, i32 %245, i32 %248, i32 %251)
  %253 = load i32, i32* %6, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %290, label %255

255:                                              ; preds = %216
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 12
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i64 2
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 14
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 13
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 15
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @vorbis_encode_tonemask_setup(%struct.TYPE_23__* %256, i32 %262, i32 2, i32 %265, i32 %268, i32 %271)
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 12
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i64 3
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 14
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 13
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 12
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @vorbis_encode_tonemask_setup(%struct.TYPE_23__* %273, i32 %279, i32 3, i32 %282, i32 %285, i32 %288)
  br label %290

290:                                              ; preds = %255, %216
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %292 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %292, i32 0, i32 12
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %293, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 10
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %303, i32 0, i32 11
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @vorbis_encode_compand_setup(%struct.TYPE_23__* %291, i32 %299, i32 0, i32 %302, i32 %305)
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 12
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i64 1
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 10
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 11
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @vorbis_encode_compand_setup(%struct.TYPE_23__* %307, i32 %313, i32 1, i32 %316, i32 %319)
  %321 = load i32, i32* %6, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %352, label %323

323:                                              ; preds = %290
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 12
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i64 2
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %331, i32 0, i32 10
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 9
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @vorbis_encode_compand_setup(%struct.TYPE_23__* %324, i32 %330, i32 2, i32 %333, i32 %336)
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %339 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %339, i32 0, i32 12
  %341 = load %struct.TYPE_21__*, %struct.TYPE_21__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %341, i64 3
  %343 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %345, i32 0, i32 10
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %348, i32 0, i32 9
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @vorbis_encode_compand_setup(%struct.TYPE_23__* %338, i32 %344, i32 3, i32 %347, i32 %350)
  br label %352

352:                                              ; preds = %323, %290
  %353 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %354, i32 0, i32 12
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %355, align 8
  %357 = load i32, i32* %5, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %362, i32 0, i32 8
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @vorbis_encode_peak_setup(%struct.TYPE_23__* %353, i32 %361, i32 0, i32 %364)
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %367 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 12
  %369 = load %struct.TYPE_21__*, %struct.TYPE_21__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i64 1
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %373, i32 0, i32 8
  %375 = load i32, i32* %374, align 8
  %376 = call i32 @vorbis_encode_peak_setup(%struct.TYPE_23__* %366, i32 %372, i32 1, i32 %375)
  %377 = load i32, i32* %6, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %402, label %379

379:                                              ; preds = %352
  %380 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %381 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %382 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %381, i32 0, i32 12
  %383 = load %struct.TYPE_21__*, %struct.TYPE_21__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i64 2
  %385 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %388 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %387, i32 0, i32 8
  %389 = load i32, i32* %388, align 8
  %390 = call i32 @vorbis_encode_peak_setup(%struct.TYPE_23__* %380, i32 %386, i32 2, i32 %389)
  %391 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 12
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i64 3
  %396 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %399 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %398, i32 0, i32 8
  %400 = load i32, i32* %399, align 8
  %401 = call i32 @vorbis_encode_peak_setup(%struct.TYPE_23__* %391, i32 %397, i32 3, i32 %400)
  br label %402

402:                                              ; preds = %379, %352
  %403 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %404 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %405 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %404, i32 0, i32 12
  %406 = load %struct.TYPE_21__*, %struct.TYPE_21__** %405, align 8
  %407 = load i32, i32* %5, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %406, i64 %408
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %416 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %415, i32 0, i32 7
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* %5, align 4
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %428

423:                                              ; preds = %402
  %424 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %425 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = sitofp i32 %426 to double
  br label %429

428:                                              ; preds = %402
  br label %429

429:                                              ; preds = %428, %423
  %430 = phi double [ %427, %423 ], [ 0.000000e+00, %428 ]
  %431 = fptosi double %430 to i32
  %432 = call i32 @vorbis_encode_noisebias_setup(%struct.TYPE_23__* %403, i32 %411, i32 0, i32 %414, i32 %417, i32 %420, i32 %431)
  %433 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %434 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %435 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %434, i32 0, i32 12
  %436 = load %struct.TYPE_21__*, %struct.TYPE_21__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %436, i64 1
  %438 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %441 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %440, i32 0, i32 4
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %444 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %443, i32 0, i32 6
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %447 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = call i32 @vorbis_encode_noisebias_setup(%struct.TYPE_23__* %433, i32 %439, i32 1, i32 %442, i32 %445, i32 %448, i32 0)
  %450 = load i32, i32* %6, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %487, label %452

452:                                              ; preds = %429
  %453 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %454 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %455 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %454, i32 0, i32 12
  %456 = load %struct.TYPE_21__*, %struct.TYPE_21__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %456, i64 2
  %458 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %461 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %460, i32 0, i32 4
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %464 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %463, i32 0, i32 5
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %467 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %466, i32 0, i32 2
  %468 = load i32, i32* %467, align 8
  %469 = call i32 @vorbis_encode_noisebias_setup(%struct.TYPE_23__* %453, i32 %459, i32 2, i32 %462, i32 %465, i32 %468, i32 0)
  %470 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %471 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %472 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %471, i32 0, i32 12
  %473 = load %struct.TYPE_21__*, %struct.TYPE_21__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %473, i64 3
  %475 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %477, i32 0, i32 4
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %481 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %484 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %483, i32 0, i32 2
  %485 = load i32, i32* %484, align 8
  %486 = call i32 @vorbis_encode_noisebias_setup(%struct.TYPE_23__* %470, i32 %476, i32 3, i32 %479, i32 %482, i32 %485, i32 0)
  br label %487

487:                                              ; preds = %452, %429
  %488 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %489 = call i32 @vorbis_encode_ath_setup(%struct.TYPE_23__* %488, i32 0)
  %490 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %491 = call i32 @vorbis_encode_ath_setup(%struct.TYPE_23__* %490, i32 1)
  %492 = load i32, i32* %6, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %499, label %494

494:                                              ; preds = %487
  %495 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %496 = call i32 @vorbis_encode_ath_setup(%struct.TYPE_23__* %495, i32 2)
  %497 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %498 = call i32 @vorbis_encode_ath_setup(%struct.TYPE_23__* %497, i32 3)
  br label %499

499:                                              ; preds = %494, %487
  %500 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %501 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %502 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %501, i32 0, i32 11
  %503 = load i32, i32* %502, align 8
  %504 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %505 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 4
  %507 = call i32 @vorbis_encode_map_n_res_setup(%struct.TYPE_23__* %500, i32 %503, i32 %506)
  %508 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %509 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %508, i32 0, i32 4
  %510 = load i32, i32* %509, align 8
  %511 = icmp sgt i32 %510, 0
  br i1 %511, label %512, label %518

512:                                              ; preds = %499
  %513 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %514 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %513, i32 0, i32 4
  %515 = load i32, i32* %514, align 8
  %516 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %517 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %516, i32 0, i32 0
  store i32 %515, i32* %517, align 8
  br label %523

518:                                              ; preds = %499
  %519 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %520 = call i32 @setting_to_approx_bitrate(%struct.TYPE_23__* %519)
  %521 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %521, i32 0, i32 0
  store i32 %520, i32* %522, align 8
  br label %523

523:                                              ; preds = %518, %512
  %524 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %525 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %524, i32 0, i32 9
  %526 = load i32, i32* %525, align 4
  %527 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %528 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %527, i32 0, i32 3
  store i32 %526, i32* %528, align 4
  %529 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %530 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %529, i32 0, i32 8
  %531 = load i32, i32* %530, align 8
  %532 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %533 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %532, i32 0, i32 2
  store i32 %531, i32* %533, align 8
  %534 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %535 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %534, i32 0, i32 4
  %536 = load i32, i32* %535, align 8
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %550

538:                                              ; preds = %523
  %539 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %540 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %539, i32 0, i32 7
  %541 = load i64, i64* %540, align 8
  %542 = sitofp i64 %541 to double
  %543 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %544 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %543, i32 0, i32 4
  %545 = load i32, i32* %544, align 8
  %546 = sitofp i32 %545 to double
  %547 = fdiv double %542, %546
  %548 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %549 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %548, i32 0, i32 1
  store double %547, double* %549, align 8
  br label %553

550:                                              ; preds = %523
  %551 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %552 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %551, i32 0, i32 1
  store double 0.000000e+00, double* %552, align 8
  br label %553

553:                                              ; preds = %550, %538
  %554 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %555 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %554, i32 0, i32 10
  %556 = load i64, i64* %555, align 8
  %557 = icmp ne i64 %556, 0
  br i1 %557, label %558, label %596

558:                                              ; preds = %553
  %559 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %560 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %559, i32 0, i32 4
  %561 = load i32, i32* %560, align 8
  %562 = sitofp i32 %561 to double
  %563 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %564 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %564, i32 0, i32 0
  store double %562, double* %565, align 8
  %566 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %567 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %566, i32 0, i32 9
  %568 = load i32, i32* %567, align 4
  %569 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %570 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %570, i32 0, i32 5
  store i32 %568, i32* %571, align 4
  %572 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %573 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %572, i32 0, i32 8
  %574 = load i32, i32* %573, align 8
  %575 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %576 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %576, i32 0, i32 4
  store i32 %574, i32* %577, align 8
  %578 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %579 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %578, i32 0, i32 7
  %580 = load i64, i64* %579, align 8
  %581 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %582 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %581, i32 0, i32 1
  %583 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %582, i32 0, i32 3
  store i64 %580, i64* %583, align 8
  %584 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %585 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %584, i32 0, i32 6
  %586 = load i32, i32* %585, align 8
  %587 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %588 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %587, i32 0, i32 1
  %589 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %588, i32 0, i32 2
  store i32 %586, i32* %589, align 4
  %590 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %591 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %590, i32 0, i32 5
  %592 = load i32, i32* %591, align 4
  %593 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %594 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %594, i32 0, i32 1
  store i32 %592, i32* %595, align 8
  br label %596

596:                                              ; preds = %558, %553
  store i32 0, i32* %2, align 4
  br label %597

597:                                              ; preds = %596, %66, %17
  %598 = load i32, i32* %2, align 4
  ret i32 %598
}

declare dso_local i32 @vorbis_encode_blocksize_setup(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @vorbis_encode_floor_setup(%struct.TYPE_23__*, i32, i32, i32, i32) #1

declare dso_local i32 @vorbis_encode_global_psych_setup(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @vorbis_encode_global_stereo(%struct.TYPE_23__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @vorbis_encode_psyset_setup(%struct.TYPE_23__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vorbis_encode_tonemask_setup(%struct.TYPE_23__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vorbis_encode_compand_setup(%struct.TYPE_23__*, i32, i32, i32, i32) #1

declare dso_local i32 @vorbis_encode_peak_setup(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @vorbis_encode_noisebias_setup(%struct.TYPE_23__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vorbis_encode_ath_setup(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @vorbis_encode_map_n_res_setup(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @setting_to_approx_bitrate(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
