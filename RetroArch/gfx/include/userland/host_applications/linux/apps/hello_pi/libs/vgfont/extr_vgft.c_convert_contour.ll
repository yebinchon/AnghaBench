; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_vgft.c_convert_contour.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_vgft.c_convert_contour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@coords_count = common dso_local global i32 0, align 4
@VG_MOVE_TO = common dso_local global i32 0, align 4
@segments = common dso_local global i32* null, align 8
@segments_count = common dso_local global i32 0, align 4
@VG_LINE_TO = common dso_local global i32 0, align 4
@VG_CUBIC_TO = common dso_local global i32 0, align 4
@VG_QUAD_TO = common dso_local global i32 0, align 4
@coords = common dso_local global float* null, align 8
@VG_CLOSE_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i16)* @convert_contour to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_contour(%struct.TYPE_3__* %0, i8* %1, i16 signext %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  %14 = load i32, i32* @coords_count, align 4
  store i32 %14, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i8 0, i8* %9, align 1
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %192, %3
  %16 = load i16, i16* %6, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %199

19:                                               ; preds = %15
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %11, align 1
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load i8, i8* %11, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 %28, 1
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  store i32 0, i32* %10, align 4
  %35 = load i32, i32* @VG_MOVE_TO, align 4
  %36 = load i32*, i32** @segments, align 8
  %37 = load i32, i32* @segments_count, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @segments_count, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %35, i32* %40, align 4
  store i32 0, i32* %8, align 4
  br label %172

41:                                               ; preds = %19
  %42 = load i8, i8* %11, align 1
  %43 = sext i8 %42 to i32
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %91

46:                                               ; preds = %41
  %47 = load i8, i8* %9, align 1
  %48 = sext i8 %47 to i32
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 1
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  store i32 0, i32* %10, align 4
  %56 = load i32, i32* @VG_LINE_TO, align 4
  %57 = load i32*, i32** @segments, align 8
  %58 = load i32, i32* @segments_count, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @segments_count, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %56, i32* %61, align 4
  br label %90

62:                                               ; preds = %46
  %63 = load i8, i8* %9, align 1
  %64 = sext i8 %63 to i32
  %65 = and i32 %64, 2
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 3
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  store i32 0, i32* %10, align 4
  %72 = load i32, i32* @VG_CUBIC_TO, align 4
  %73 = load i32*, i32** @segments, align 8
  %74 = load i32, i32* @segments_count, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @segments_count, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %72, i32* %77, align 4
  br label %89

78:                                               ; preds = %62
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 2
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  store i32 0, i32* %10, align 4
  %83 = load i32, i32* @VG_QUAD_TO, align 4
  %84 = load i32*, i32** @segments, align 8
  %85 = load i32, i32* @segments_count, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @segments_count, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %78, %67
  br label %90

90:                                               ; preds = %89, %51
  br label %171

91:                                               ; preds = %41
  %92 = load i8, i8* %11, align 1
  %93 = sext i8 %92 to i32
  %94 = and i32 %93, 2
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load i8, i8* %9, align 1
  %98 = sext i8 %97 to i32
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load i8, i8* %9, align 1
  %103 = sext i8 %102 to i32
  %104 = and i32 %103, 2
  %105 = icmp ne i32 %104, 0
  br label %106

106:                                              ; preds = %101, %96
  %107 = phi i1 [ true, %96 ], [ %105, %101 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  br label %170

110:                                              ; preds = %91
  %111 = load i8, i8* %9, align 1
  %112 = sext i8 %111 to i32
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %169, label %115

115:                                              ; preds = %110
  %116 = load i8, i8* %9, align 1
  %117 = sext i8 %116 to i32
  %118 = and i32 %117, 2
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %123, 2
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  store i32 1, i32* %10, align 4
  %127 = load i32, i32* @VG_QUAD_TO, align 4
  %128 = load i32*, i32** @segments, align 8
  %129 = load i32, i32* @segments_count, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @segments_count, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %127, i32* %132, align 4
  %133 = load float*, float** @coords, align 8
  %134 = load i32, i32* @coords_count, align 4
  %135 = sub nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %133, i64 %136
  %138 = load float, float* %137, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call float @float_from_26_6(i32 %141)
  %143 = fadd float %138, %142
  %144 = fmul float %143, 5.000000e-01
  store float %144, float* %12, align 4
  %145 = load float*, float** @coords, align 8
  %146 = load i32, i32* @coords_count, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %145, i64 %148
  %150 = load float, float* %149, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call float @float_from_26_6(i32 %153)
  %155 = fadd float %150, %154
  %156 = fmul float %155, 5.000000e-01
  store float %156, float* %13, align 4
  %157 = load float, float* %12, align 4
  %158 = load float*, float** @coords, align 8
  %159 = load i32, i32* @coords_count, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* @coords_count, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds float, float* %158, i64 %161
  store float %157, float* %162, align 4
  %163 = load float, float* %13, align 4
  %164 = load float*, float** @coords, align 8
  %165 = load i32, i32* @coords_count, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* @coords_count, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds float, float* %164, i64 %167
  store float %163, float* %168, align 4
  br label %169

169:                                              ; preds = %115, %110
  br label %170

170:                                              ; preds = %169, %106
  br label %171

171:                                              ; preds = %170, %90
  br label %172

172:                                              ; preds = %171, %26
  %173 = load i8, i8* %11, align 1
  store i8 %173, i8* %9, align 1
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call float @float_from_26_6(i32 %176)
  %178 = load float*, float** @coords, align 8
  %179 = load i32, i32* @coords_count, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* @coords_count, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds float, float* %178, i64 %181
  store float %177, float* %182, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call float @float_from_26_6(i32 %185)
  %187 = load float*, float** @coords, align 8
  %188 = load i32, i32* @coords_count, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* @coords_count, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds float, float* %187, i64 %190
  store float %186, float* %191, align 4
  br label %192

192:                                              ; preds = %172
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 1
  store %struct.TYPE_3__* %194, %struct.TYPE_3__** %4, align 8
  %195 = load i8*, i8** %5, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %5, align 8
  %197 = load i16, i16* %6, align 2
  %198 = add i16 %197, -1
  store i16 %198, i16* %6, align 2
  br label %15

199:                                              ; preds = %15
  %200 = load i8, i8* %9, align 1
  %201 = sext i8 %200 to i32
  %202 = and i32 %201, 1
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = load i32, i32* %10, align 4
  %206 = icmp eq i32 %205, 0
  %207 = zext i1 %206 to i32
  %208 = call i32 @assert(i32 %207)
  br label %261

209:                                              ; preds = %199
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %10, align 4
  %212 = load i8, i8* %9, align 1
  %213 = sext i8 %212 to i32
  %214 = and i32 %213, 2
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %209
  %217 = load i32, i32* %10, align 4
  %218 = icmp eq i32 %217, 3
  %219 = zext i1 %218 to i32
  %220 = call i32 @assert(i32 %219)
  store i32 0, i32* %10, align 4
  %221 = load i32, i32* @VG_CUBIC_TO, align 4
  %222 = load i32*, i32** @segments, align 8
  %223 = load i32, i32* @segments_count, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* @segments_count, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32 %221, i32* %226, align 4
  br label %238

227:                                              ; preds = %209
  %228 = load i32, i32* %10, align 4
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i32
  %231 = call i32 @assert(i32 %230)
  store i32 0, i32* %10, align 4
  %232 = load i32, i32* @VG_QUAD_TO, align 4
  %233 = load i32*, i32** @segments, align 8
  %234 = load i32, i32* @segments_count, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* @segments_count, align 4
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  store i32 %232, i32* %237, align 4
  br label %238

238:                                              ; preds = %227, %216
  %239 = load float*, float** @coords, align 8
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 0
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %239, i64 %242
  %244 = load float, float* %243, align 4
  %245 = load float*, float** @coords, align 8
  %246 = load i32, i32* @coords_count, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* @coords_count, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds float, float* %245, i64 %248
  store float %244, float* %249, align 4
  %250 = load float*, float** @coords, align 8
  %251 = load i32, i32* %7, align 4
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds float, float* %250, i64 %253
  %255 = load float, float* %254, align 4
  %256 = load float*, float** @coords, align 8
  %257 = load i32, i32* @coords_count, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* @coords_count, align 4
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds float, float* %256, i64 %259
  store float %255, float* %260, align 4
  br label %261

261:                                              ; preds = %238, %204
  %262 = load i32, i32* @VG_CLOSE_PATH, align 4
  %263 = load i32*, i32** @segments, align 8
  %264 = load i32, i32* @segments_count, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* @segments_count, align 4
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  store i32 %262, i32* %267, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local float @float_from_26_6(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
