; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_parse_textures.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_parse_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.video_shader = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32 }

@PATH_MAX_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"textures\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@GFX_MAX_TEXTURES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Cannot find path to texture \22%s\22 ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"_linear\00", align 1
@RARCH_FILTER_LINEAR = common dso_local global i32 0, align 4
@RARCH_FILTER_NEAREST = common dso_local global i32 0, align 4
@RARCH_FILTER_UNSPEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"_wrap_mode\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"_mipmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.video_shader*)* @video_shader_parse_textures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_shader_parse_textures(%struct.TYPE_7__* %0, %struct.video_shader* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.video_shader*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [64 x i8], align 16
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  %14 = alloca [64 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.video_shader* %1, %struct.video_shader** %5, align 8
  %17 = load i64, i64* @PATH_MAX_LENGTH, align 8
  store i64 %17, i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add i64 1024, %18
  %20 = trunc i64 %19 to i32
  %21 = call i64 @malloc(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1024
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %192

28:                                               ; preds = %2
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 0, i8* %30, align 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i64 @config_get_array(%struct.TYPE_7__* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %32, i32 1024)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @free(i8* %36)
  store i32 1, i32* %3, align 4
  br label %192

38:                                               ; preds = %28
  %39 = load i8*, i8** %9, align 8
  %40 = call i8* @strtok_r(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i8* %40, i8** %7, align 8
  br label %41

41:                                               ; preds = %183, %38
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %46 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GFX_MAX_TEXTURES, align 8
  %49 = icmp ult i64 %47, %48
  br label %50

50:                                               ; preds = %44, %41
  %51 = phi i1 [ false, %41 ], [ %49, %44 ]
  br i1 %51, label %52, label %189

52:                                               ; preds = %50
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %53, align 16
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %54, align 16
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %55, align 16
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %56, align 16
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i64, i64* %6, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i64 @config_get_array(%struct.TYPE_7__* %57, i8* %58, i8* %59, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %52
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @free(i8* %67)
  store i32 0, i32* %3, align 4
  br label %192

69:                                               ; preds = %52
  %70 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %71 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %74 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @fill_pathname_resolve_relative(i32 %78, i32 %81, i8* %82, i32 4)
  %84 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %85 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %88 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @strlcpy(i8* %92, i8* %93, i32 8)
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @strlcpy(i8* %95, i8* %96, i32 64)
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %99 = call i32 @strlcat(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 64)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %102 = call i64 @config_get_bool(%struct.TYPE_7__* %100, i8* %101, i32* %16)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %69
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* @RARCH_FILTER_LINEAR, align 4
  br label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @RARCH_FILTER_NEAREST, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %114 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %117 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  store i32 %112, i32* %120, align 8
  br label %131

121:                                              ; preds = %69
  %122 = load i32, i32* @RARCH_FILTER_UNSPEC, align 4
  %123 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %124 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %127 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  store i32 %122, i32* %130, align 8
  br label %131

131:                                              ; preds = %121, %111
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @strlcpy(i8* %132, i8* %133, i32 64)
  %135 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %136 = call i32 @strlcat(i8* %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 64)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %140 = call i64 @config_get_array(%struct.TYPE_7__* %137, i8* %138, i8* %139, i32 64)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %131
  %143 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %144 = call i32 @wrap_str_to_mode(i8* %143)
  %145 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %146 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %145, i32 0, i32 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %149 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  store i32 %144, i32* %152, align 4
  br label %153

153:                                              ; preds = %142, %131
  %154 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @strlcpy(i8* %154, i8* %155, i32 64)
  %157 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %158 = call i32 @strlcat(i8* %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 64)
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %160 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %161 = call i64 @config_get_bool(%struct.TYPE_7__* %159, i8* %160, i32* %15)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %153
  %164 = load i32, i32* %15, align 4
  %165 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %166 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %165, i32 0, i32 1
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %169 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  store i32 %164, i32* %172, align 8
  br label %182

173:                                              ; preds = %153
  %174 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %175 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %174, i32 0, i32 1
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %178 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  store i32 0, i32* %181, align 8
  br label %182

182:                                              ; preds = %173, %163
  br label %183

183:                                              ; preds = %182
  %184 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %185 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %185, align 8
  %188 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %8)
  store i8* %188, i8** %7, align 8
  br label %41

189:                                              ; preds = %50
  %190 = load i8*, i8** %9, align 8
  %191 = call i32 @free(i8* %190)
  store i32 1, i32* %3, align 4
  br label %192

192:                                              ; preds = %189, %64, %35, %27
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @config_get_array(%struct.TYPE_7__*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

declare dso_local i32 @fill_pathname_resolve_relative(i32, i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @config_get_bool(%struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i32 @wrap_str_to_mode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
