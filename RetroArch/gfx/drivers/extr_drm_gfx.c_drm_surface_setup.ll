; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_surface_setup.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_drm_gfx.c_drm_surface_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.drm_surface = type { i32, i32, i32, i32, i32, i32, float, i64, %struct.drm_page*, i32 }
%struct.drm_page = type { i32, %struct.TYPE_3__, i32, %struct.drm_video*, %struct.drm_surface* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_video = type { i32 }

@drm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"DRM: can't create fb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32, i32, i32, float, i32, i32, %struct.drm_surface**)* @drm_surface_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_surface_setup(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, float %7, i32 %8, i32 %9, %struct.drm_surface** %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.drm_surface**, align 8
  %23 = alloca %struct.drm_video*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.drm_surface*, align 8
  %26 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store float %7, float* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store %struct.drm_surface** %10, %struct.drm_surface*** %22, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = bitcast i8* %27 to %struct.drm_video*
  store %struct.drm_video* %28, %struct.drm_video** %23, align 8
  store %struct.drm_surface* null, %struct.drm_surface** %25, align 8
  %29 = call %struct.drm_surface* @calloc(i32 1, i32 56)
  %30 = load %struct.drm_surface**, %struct.drm_surface*** %22, align 8
  store %struct.drm_surface* %29, %struct.drm_surface** %30, align 8
  %31 = load %struct.drm_surface**, %struct.drm_surface*** %22, align 8
  %32 = load %struct.drm_surface*, %struct.drm_surface** %31, align 8
  store %struct.drm_surface* %32, %struct.drm_surface** %25, align 8
  %33 = load i32, i32* %20, align 4
  %34 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %35 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %38 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %16, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %43 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %46 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %49 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %52 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %55 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load float, float* %19, align 4
  %57 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %58 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %57, i32 0, i32 6
  store float %56, float* %58, align 8
  %59 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %60 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.drm_surface* @calloc(i32 %61, i32 32)
  %63 = bitcast %struct.drm_surface* %62 to %struct.drm_page*
  %64 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %65 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %64, i32 0, i32 8
  store %struct.drm_page* %63, %struct.drm_page** %65, align 8
  store i32 0, i32* %24, align 4
  br label %66

66:                                               ; preds = %104, %11
  %67 = load i32, i32* %24, align 4
  %68 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %69 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %107

72:                                               ; preds = %66
  %73 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %74 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %73, i32 0, i32 8
  %75 = load %struct.drm_page*, %struct.drm_page** %74, align 8
  %76 = load i32, i32* %24, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %75, i64 %77
  %79 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %81 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %82 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %81, i32 0, i32 8
  %83 = load %struct.drm_page*, %struct.drm_page** %82, align 8
  %84 = load i32, i32* %24, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %83, i64 %85
  %87 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %86, i32 0, i32 4
  store %struct.drm_surface* %80, %struct.drm_surface** %87, align 8
  %88 = load %struct.drm_video*, %struct.drm_video** %23, align 8
  %89 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %90 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %89, i32 0, i32 8
  %91 = load %struct.drm_page*, %struct.drm_page** %90, align 8
  %92 = load i32, i32* %24, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %91, i64 %93
  %95 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %94, i32 0, i32 3
  store %struct.drm_video* %88, %struct.drm_video** %95, align 8
  %96 = call i32 (...) @slock_new()
  %97 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %98 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %97, i32 0, i32 8
  %99 = load %struct.drm_page*, %struct.drm_page** %98, align 8
  %100 = load i32, i32* %24, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %99, i64 %101
  %103 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %102, i32 0, i32 2
  store i32 %96, i32* %103, align 4
  br label %104

104:                                              ; preds = %72
  %105 = load i32, i32* %24, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %24, align 4
  br label %66

107:                                              ; preds = %66
  store i32 0, i32* %24, align 4
  br label %108

108:                                              ; preds = %149, %107
  %109 = load i32, i32* %24, align 4
  %110 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %111 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %152

114:                                              ; preds = %108
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %117 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %116, i32 0, i32 8
  %118 = load %struct.drm_page*, %struct.drm_page** %117, align 8
  %119 = load i32, i32* %24, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %118, i64 %120
  %122 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store i32 %115, i32* %123, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %126 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %125, i32 0, i32 8
  %127 = load %struct.drm_page*, %struct.drm_page** %126, align 8
  %128 = load i32, i32* %24, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %127, i64 %129
  %131 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store i32 %124, i32* %132, align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @drm, i32 0, i32 0), align 4
  %134 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %135 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %134, i32 0, i32 8
  %136 = load %struct.drm_page*, %struct.drm_page** %135, align 8
  %137 = load i32, i32* %24, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %136, i64 %138
  %140 = getelementptr inbounds %struct.drm_page, %struct.drm_page* %139, i32 0, i32 1
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @modeset_create_dumbfb(i32 %133, %struct.TYPE_3__* %140, i32 %141, i32 %142)
  store i32 %143, i32* %26, align 4
  %144 = load i32, i32* %26, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %114
  %147 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %114
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %24, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %24, align 4
  br label %108

152:                                              ; preds = %108
  %153 = load %struct.drm_surface*, %struct.drm_surface** %25, align 8
  %154 = getelementptr inbounds %struct.drm_surface, %struct.drm_surface* %153, i32 0, i32 7
  store i64 0, i64* %154, align 8
  ret void
}

declare dso_local %struct.drm_surface* @calloc(i32, i32) #1

declare dso_local i32 @slock_new(...) #1

declare dso_local i32 @modeset_create_dumbfb(i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
