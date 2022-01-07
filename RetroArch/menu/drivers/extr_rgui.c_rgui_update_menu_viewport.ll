; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_update_menu_viewport.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_update_menu_viewport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, double, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.video_viewport = type { i32, double }

@ASPECT_RATIO_CUSTOM = common dso_local global i32 0, align 4
@RGUI_ASPECT_RATIO_LOCK_INTEGER = common dso_local global i64 0, align 8
@CONF_ASPECT_4_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @rgui_update_menu_viewport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgui_update_menu_viewport(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.video_viewport, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %14 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %3, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %222

18:                                               ; preds = %1
  %19 = call i32 @menu_display_get_fb_size(i32* %5, i32* %6, i64* %4)
  %20 = call i32 @video_driver_get_viewport_info(%struct.video_viewport* %7)
  %21 = load i32, i32* @ASPECT_RATIO_CUSTOM, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %185

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %185

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %185

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %7, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = fcmp ogt double %36, 0.000000e+00
  br i1 %37, label %38, label %185

38:                                               ; preds = %34
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RGUI_ASPECT_RATIO_LOCK_INTEGER, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = udiv i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %7, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = uitofp i32 %55 to double
  %57 = fdiv double %54, %56
  %58 = fptoui double %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ule i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i32, i32* %9, align 4
  br label %66

64:                                               ; preds = %48
  %65 = load i32, i32* %10, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ugt i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %5, align 4
  %73 = mul i32 %71, %72
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %6, align 4
  %80 = mul i32 %78, %79
  %81 = uitofp i32 %80 to double
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store double %81, double* %85, align 8
  br label %87

86:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %70
  br label %88

88:                                               ; preds = %87, %38
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %146, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %7, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = uitofp i32 %93 to float
  %95 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %7, i32 0, i32 1
  %96 = load double, double* %95, align 8
  %97 = fptrunc double %96 to float
  %98 = fdiv float %94, %97
  store float %98, float* %12, align 4
  %99 = load i32, i32* %5, align 4
  %100 = uitofp i32 %99 to float
  %101 = load i32, i32* %6, align 4
  %102 = uitofp i32 %101 to float
  %103 = fdiv float %100, %102
  store float %103, float* %13, align 4
  %104 = load float, float* %13, align 4
  %105 = load float, float* %12, align 4
  %106 = fcmp ogt float %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %91
  %108 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %7, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 8
  %114 = load i32, i32* %6, align 4
  %115 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %7, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul i32 %114, %116
  %118 = load i32, i32* %5, align 4
  %119 = udiv i32 %117, %118
  %120 = uitofp i32 %119 to double
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  store double %120, double* %124, align 8
  br label %145

125:                                              ; preds = %91
  %126 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %7, i32 0, i32 1
  %127 = load double, double* %126, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  store double %127, double* %131, align 8
  %132 = load i32, i32* %5, align 4
  %133 = uitofp i32 %132 to double
  %134 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %7, i32 0, i32 1
  %135 = load double, double* %134, align 8
  %136 = fmul double %133, %135
  %137 = load i32, i32* %6, align 4
  %138 = uitofp i32 %137 to double
  %139 = fdiv double %136, %138
  %140 = fptoui double %139 to i32
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  store i32 %140, i32* %144, align 8
  br label %145

145:                                              ; preds = %125, %107
  br label %146

146:                                              ; preds = %145, %88
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ult i32 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %160

154:                                              ; preds = %146
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  br label %160

160:                                              ; preds = %154, %153
  %161 = phi i32 [ 1, %153 ], [ %159, %154 ]
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  store i32 %161, i32* %165, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load double, double* %169, align 8
  %171 = fcmp olt double %170, 1.000000e+00
  br i1 %171, label %172, label %173

172:                                              ; preds = %160
  br label %179

173:                                              ; preds = %160
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load double, double* %177, align 8
  br label %179

179:                                              ; preds = %173, %172
  %180 = phi double [ 1.000000e+00, %172 ], [ %178, %173 ]
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  store double %180, double* %184, align 8
  br label %194

185:                                              ; preds = %34, %30, %27, %18
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  store double 1.000000e+00, double* %193, align 8
  br label %194

194:                                              ; preds = %185, %179
  %195 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %7, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sub i32 %196, %201
  %203 = udiv i32 %202, 2
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  store i32 %203, i32* %207, align 8
  %208 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %7, i32 0, i32 1
  %209 = load double, double* %208, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 1
  %214 = load double, double* %213, align 8
  %215 = fsub double %209, %214
  %216 = fdiv double %215, 2.000000e+00
  %217 = fptosi double %216 to i32
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 3
  store i32 %217, i32* %221, align 4
  br label %222

222:                                              ; preds = %194, %17
  ret void
}

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #1

declare dso_local i32 @menu_display_get_fb_size(i32*, i32*, i64*) #1

declare dso_local i32 @video_driver_get_viewport_info(%struct.video_viewport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
