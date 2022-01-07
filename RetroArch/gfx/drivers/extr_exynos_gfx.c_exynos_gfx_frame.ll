; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_gfx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_exynos_gfx.c_exynos_gfx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.exynos_video = type { i32, i32, i32, i32, i64, i32 }
%struct.exynos_page = type { i32, i32 }
%struct.font_params = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"[video_exynos]: resolution changed by core: %ux%u -> %ux%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_5__*)* @exynos_gfx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_gfx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_5__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca %struct.exynos_video*, align 8
  %19 = alloca %struct.exynos_page*, align 8
  %20 = alloca %struct.font_params*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %17, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to %struct.exynos_video*
  store %struct.exynos_video* %22, %struct.exynos_video** %18, align 8
  store %struct.exynos_page* null, %struct.exynos_page** %19, align 8
  %23 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %24 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  br label %183

31:                                               ; preds = %27, %8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %92

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %37 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %43 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %12, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46
  store i32 1, i32* %9, align 4
  br label %183

53:                                               ; preds = %49
  %54 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %55 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %58 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %64 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %69 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @exynos_setup_scale(i32 %65, i32 %66, i32 %67, i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %74 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %77 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %53, %40
  %79 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %80 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.exynos_page* @exynos_free_page(i32 %81)
  store %struct.exynos_page* %82, %struct.exynos_page** %19, align 8
  %83 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %84 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i64 @exynos_blit_frame(i32 %85, i8* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %180

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %31
  %93 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %94 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %99 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97, %92
  %103 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %104 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @exynos_set_fake_blit(i32 %105)
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.exynos_page*, %struct.exynos_page** %19, align 8
  %109 = icmp ne %struct.exynos_page* %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %112 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call %struct.exynos_page* @exynos_free_page(i32 %113)
  store %struct.exynos_page* %114, %struct.exynos_page** %19, align 8
  br label %115

115:                                              ; preds = %110, %107
  %116 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %117 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %122 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %125 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @exynos_blend_menu(i32 %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %180

130:                                              ; preds = %120
  br label %159

131:                                              ; preds = %115
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %131
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %138 = icmp ne %struct.TYPE_5__* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = bitcast i32* %141 to %struct.font_params*
  br label %144

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %139
  %145 = phi %struct.font_params* [ %142, %139 ], [ null, %143 ]
  store %struct.font_params* %145, %struct.font_params** %20, align 8
  %146 = load %struct.font_params*, %struct.font_params** %20, align 8
  %147 = icmp ne %struct.font_params* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = bitcast i32* %154 to %struct.font_params*
  %156 = call i32 @font_driver_render_msg(%struct.TYPE_5__* %149, i32* null, i32 %152, %struct.font_params* %155)
  br label %157

157:                                              ; preds = %148, %144
  br label %158

158:                                              ; preds = %157, %131
  br label %159

159:                                              ; preds = %158, %130
  %160 = load i8*, i8** %16, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %164 = load i8*, i8** %16, align 8
  %165 = call i64 @exynos_render_msg(%struct.exynos_video* %163, i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %180

168:                                              ; preds = %162
  %169 = load %struct.exynos_page*, %struct.exynos_page** %19, align 8
  %170 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %169, i32 0, i32 0
  store i32 1, i32* %170, align 4
  br label %171

171:                                              ; preds = %168, %159
  %172 = load %struct.exynos_video*, %struct.exynos_video** %18, align 8
  %173 = getelementptr inbounds %struct.exynos_video, %struct.exynos_video* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.exynos_page*, %struct.exynos_page** %19, align 8
  %176 = call i64 @exynos_flip(i32 %174, %struct.exynos_page* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %180

179:                                              ; preds = %171
  store i32 1, i32* %9, align 4
  br label %183

180:                                              ; preds = %178, %167, %129, %90
  %181 = load %struct.exynos_page*, %struct.exynos_page** %19, align 8
  %182 = getelementptr inbounds %struct.exynos_page, %struct.exynos_page* %181, i32 0, i32 1
  store i32 0, i32* %182, align 4
  store i32 0, i32* %9, align 4
  br label %183

183:                                              ; preds = %180, %179, %52, %30
  %184 = load i32, i32* %9, align 4
  ret i32 %184
}

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @exynos_setup_scale(i32, i32, i32, i32) #1

declare dso_local %struct.exynos_page* @exynos_free_page(i32) #1

declare dso_local i64 @exynos_blit_frame(i32, i8*, i32) #1

declare dso_local i32 @exynos_set_fake_blit(i32) #1

declare dso_local i64 @exynos_blend_menu(i32, i32) #1

declare dso_local i32 @font_driver_render_msg(%struct.TYPE_5__*, i32*, i32, %struct.font_params*) #1

declare dso_local i64 @exynos_render_msg(%struct.exynos_video*, i8*) #1

declare dso_local i64 @exynos_flip(i32, %struct.exynos_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
