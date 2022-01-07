; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_load_preset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_gl_cg.c_gl_cg_load_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.video_shader*, i32* }
%struct.video_shader = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [34 x i8] c"[CG]: Loading Cg meta-shader: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to load preset.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to parse CGP file.\0A\00", align 1
@GFX_MAX_SHADERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Too many shaders ... Capping shader amount to %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"-D%s_ALIAS\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to load shaders ...\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to load lookup textures ...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @gl_cg_load_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_cg_load_preset(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %12 = call i32 @gl_cg_load_stock(%struct.TYPE_6__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %150

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32* @video_shader_read_preset(i8* %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %150

24:                                               ; preds = %15
  %25 = call i64 @calloc(i32 1, i32 16)
  %26 = inttoptr i64 %25 to %struct.video_shader*
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store %struct.video_shader* %26, %struct.video_shader** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.video_shader*, %struct.video_shader** %30, align 8
  %32 = icmp ne %struct.video_shader* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @config_file_free(i32* %34)
  store i32 0, i32* %3, align 4
  br label %150

36:                                               ; preds = %24
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.video_shader*, %struct.video_shader** %39, align 8
  %41 = call i32 @video_shader_read_conf_preset(i32* %37, %struct.video_shader* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @config_file_free(i32* %45)
  store i32 0, i32* %3, align 4
  br label %150

47:                                               ; preds = %36
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.video_shader*, %struct.video_shader** %50, align 8
  %52 = call i32 @video_shader_resolve_parameters(i32* %48, %struct.video_shader* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @config_file_free(i32* %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load %struct.video_shader*, %struct.video_shader** %56, align 8
  %58 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GFX_MAX_SHADERS, align 4
  %61 = sub nsw i32 %60, 3
  %62 = icmp sgt i32 %59, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %47
  %64 = load i32, i32* @GFX_MAX_SHADERS, align 4
  %65 = sub nsw i32 %64, 3
  %66 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @GFX_MAX_SHADERS, align 4
  %68 = sub nsw i32 %67, 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.video_shader*, %struct.video_shader** %70, align 8
  %72 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  br label %73

73:                                               ; preds = %63, %47
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %115, %73
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load %struct.video_shader*, %struct.video_shader** %77, align 8
  %79 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ult i32 %75, %80
  br i1 %81, label %82, label %118

82:                                               ; preds = %74
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.video_shader*, %struct.video_shader** %84, align 8
  %86 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %82
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load %struct.video_shader*, %struct.video_shader** %104, align 8
  %106 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @snprintf(i32 %102, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %95, %82
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %6, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %74

118:                                              ; preds = %74
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %135, %118
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load %struct.video_shader*, %struct.video_shader** %122, align 8
  %124 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ult i32 %120, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %119
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @gl_cg_load_shader(%struct.TYPE_6__* %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  %133 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %150

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %6, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %119

138:                                              ; preds = %119
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load %struct.video_shader*, %struct.video_shader** %140, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @gl_load_luts(%struct.video_shader* %141, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %138
  %148 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %150

149:                                              ; preds = %138
  store i32 1, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %147, %132, %43, %33, %22, %14
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @gl_cg_load_stock(%struct.TYPE_6__*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32* @video_shader_read_preset(i8*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @config_file_free(i32*) #1

declare dso_local i32 @video_shader_read_conf_preset(i32*, %struct.video_shader*) #1

declare dso_local i32 @video_shader_resolve_parameters(i32*, %struct.video_shader*) #1

declare dso_local i32 @RARCH_WARN(i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @gl_cg_load_shader(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @gl_load_luts(%struct.video_shader*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
