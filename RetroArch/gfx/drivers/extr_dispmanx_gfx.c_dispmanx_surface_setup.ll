; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_surface_setup.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_surface_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispmanx_video = type { float, i32, i32, i32, i32 }
%struct.dispmanx_surface = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.dispmanx_video*, %struct.dispmanx_surface* }

@VC_IMAGE_XRGB8888 = common dso_local global i64 0, align 8
@DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS = common dso_local global i32 0, align 4
@DISPMANX_PROTECTION_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispmanx_video*, i32, i32, i32, i32, i64, i32, float, i32, i32, %struct.dispmanx_surface**)* @dispmanx_surface_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispmanx_surface_setup(%struct.dispmanx_video* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6, float %7, i32 %8, i32 %9, %struct.dispmanx_surface** %10) #0 {
  %12 = alloca %struct.dispmanx_video*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.dispmanx_surface**, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.dispmanx_surface*, align 8
  store %struct.dispmanx_video* %0, %struct.dispmanx_video** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store float %7, float* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store %struct.dispmanx_surface** %10, %struct.dispmanx_surface*** %22, align 8
  store %struct.dispmanx_surface* null, %struct.dispmanx_surface** %29, align 8
  %30 = call i8* @calloc(i32 1, i32 80)
  %31 = bitcast i8* %30 to %struct.dispmanx_surface*
  %32 = load %struct.dispmanx_surface**, %struct.dispmanx_surface*** %22, align 8
  store %struct.dispmanx_surface* %31, %struct.dispmanx_surface** %32, align 8
  %33 = load %struct.dispmanx_surface**, %struct.dispmanx_surface*** %22, align 8
  %34 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %33, align 8
  store %struct.dispmanx_surface* %34, %struct.dispmanx_surface** %29, align 8
  %35 = load i32, i32* %20, align 4
  %36 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %37 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* @VC_IMAGE_XRGB8888, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 64, i32 32
  %44 = call i32 @ALIGN_UP(i32 %38, i32 %43)
  %45 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %46 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS, align 4
  %48 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %49 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* %18, align 4
  %52 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %53 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %56 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %59 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @calloc(i32 %60, i32 4)
  %62 = bitcast i8* %61 to %struct.TYPE_3__*
  %63 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %64 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %63, i32 0, i32 3
  store %struct.TYPE_3__* %62, %struct.TYPE_3__** %64, align 8
  store i32 0, i32* %23, align 4
  br label %65

65:                                               ; preds = %103, %11
  %66 = load i32, i32* %23, align 4
  %67 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %68 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %106

71:                                               ; preds = %65
  %72 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %73 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %72, i32 0, i32 3
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %23, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %80 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %81 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %23, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  store %struct.dispmanx_surface* %79, %struct.dispmanx_surface** %86, align 8
  %87 = load %struct.dispmanx_video*, %struct.dispmanx_video** %12, align 8
  %88 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %89 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %88, i32 0, i32 3
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %23, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  store %struct.dispmanx_video* %87, %struct.dispmanx_video** %94, align 8
  %95 = call i32 (...) @slock_new()
  %96 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %97 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %23, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  store i32 %95, i32* %102, align 8
  br label %103

103:                                              ; preds = %71
  %104 = load i32, i32* %23, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %23, align 4
  br label %65

106:                                              ; preds = %65
  %107 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %108 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %107, i32 0, i32 3
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 0
  %111 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %112 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %111, i32 0, i32 7
  store %struct.TYPE_3__* %110, %struct.TYPE_3__** %112, align 8
  %113 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %114 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %113, i32 0, i32 7
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = sdiv i32 %118, 8
  %120 = sdiv i32 %117, %119
  store i32 %120, i32* %28, align 4
  %121 = load %struct.dispmanx_video*, %struct.dispmanx_video** %12, align 8
  %122 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %121, i32 0, i32 0
  %123 = load float, float* %122, align 4
  %124 = load float, float* %19, align 4
  %125 = fmul float %123, %124
  %126 = fptosi float %125 to i32
  store i32 %126, i32* %24, align 4
  %127 = load %struct.dispmanx_video*, %struct.dispmanx_video** %12, align 8
  %128 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %127, i32 0, i32 0
  %129 = load float, float* %128, align 4
  %130 = fptosi float %129 to i32
  store i32 %130, i32* %25, align 4
  %131 = load i32, i32* %24, align 4
  %132 = load %struct.dispmanx_video*, %struct.dispmanx_video** %12, align 8
  %133 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %131, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %106
  %137 = load %struct.dispmanx_video*, %struct.dispmanx_video** %12, align 8
  %138 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %24, align 4
  br label %140

140:                                              ; preds = %136, %106
  %141 = load %struct.dispmanx_video*, %struct.dispmanx_video** %12, align 8
  %142 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %24, align 4
  %145 = sub nsw i32 %143, %144
  %146 = sdiv i32 %145, 2
  store i32 %146, i32* %26, align 4
  %147 = load %struct.dispmanx_video*, %struct.dispmanx_video** %12, align 8
  %148 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %147, i32 0, i32 0
  %149 = load float, float* %148, align 4
  %150 = load i32, i32* %25, align 4
  %151 = sitofp i32 %150 to float
  %152 = fsub float %149, %151
  %153 = fdiv float %152, 2.000000e+00
  %154 = fptosi float %153 to i32
  store i32 %154, i32* %27, align 4
  %155 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %156 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %155, i32 0, i32 4
  %157 = load i32, i32* %26, align 4
  %158 = load i32, i32* %27, align 4
  %159 = load i32, i32* %24, align 4
  %160 = load i32, i32* %25, align 4
  %161 = call i32 @vc_dispmanx_rect_set(i32* %156, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %163 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %162, i32 0, i32 6
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @vc_dispmanx_rect_set(i32* %163, i32 0, i32 0, i32 %164, i32 %165)
  %167 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %168 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %167, i32 0, i32 2
  %169 = load i32, i32* %13, align 4
  %170 = shl i32 %169, 16
  %171 = load i32, i32* %14, align 4
  %172 = shl i32 %171, 16
  %173 = call i32 @vc_dispmanx_rect_set(i32* %168, i32 0, i32 0, i32 %170, i32 %172)
  store i32 0, i32* %23, align 4
  br label %174

174:                                              ; preds = %194, %140
  %175 = load i32, i32* %23, align 4
  %176 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %177 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %197

180:                                              ; preds = %174
  %181 = load i64, i64* %17, align 8
  %182 = load i32, i32* %28, align 4
  %183 = load i32, i32* %14, align 4
  %184 = load %struct.dispmanx_video*, %struct.dispmanx_video** %12, align 8
  %185 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %184, i32 0, i32 4
  %186 = call i32 @vc_dispmanx_resource_create(i64 %181, i32 %182, i32 %183, i32* %185)
  %187 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %188 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %187, i32 0, i32 3
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = load i32, i32* %23, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  store i32 %186, i32* %193, align 4
  br label %194

194:                                              ; preds = %180
  %195 = load i32, i32* %23, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %23, align 4
  br label %174

197:                                              ; preds = %174
  %198 = call i32 @vc_dispmanx_update_start(i32 0)
  %199 = load %struct.dispmanx_video*, %struct.dispmanx_video** %12, align 8
  %200 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 4
  %201 = load %struct.dispmanx_video*, %struct.dispmanx_video** %12, align 8
  %202 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.dispmanx_video*, %struct.dispmanx_video** %12, align 8
  %205 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %21, align 4
  %208 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %209 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %208, i32 0, i32 4
  %210 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %211 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %210, i32 0, i32 3
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %217 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %216, i32 0, i32 2
  %218 = load i32, i32* @DISPMANX_PROTECTION_NONE, align 4
  %219 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %220 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %219, i32 0, i32 1
  %221 = call i32 @vc_dispmanx_element_add(i32 %203, i32 %206, i32 %207, i32* %209, i32 %215, i32* %217, i32 %218, %struct.TYPE_4__* %220, i32 0, i32 0)
  %222 = load %struct.dispmanx_surface*, %struct.dispmanx_surface** %29, align 8
  %223 = getelementptr inbounds %struct.dispmanx_surface, %struct.dispmanx_surface* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 4
  %224 = load %struct.dispmanx_video*, %struct.dispmanx_video** %12, align 8
  %225 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @vc_dispmanx_update_submit_sync(i32 %226)
  ret void
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @ALIGN_UP(i32, i32) #1

declare dso_local i32 @slock_new(...) #1

declare dso_local i32 @vc_dispmanx_rect_set(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @vc_dispmanx_resource_create(i64, i32, i32, i32*) #1

declare dso_local i32 @vc_dispmanx_update_start(i32) #1

declare dso_local i32 @vc_dispmanx_element_add(i32, i32, i32, i32*, i32, i32*, i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @vc_dispmanx_update_submit_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
