; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_fpga_gfx.c_fpga_gfx_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_fpga_gfx.c_fpga_gfx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_20__ = type { i8**, i32** }
%struct.TYPE_19__ = type { i32, i32, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@fpga_video_width = common dso_local global i32 0, align 4
@fpga_video_height = common dso_local global i32 0, align 4
@fpga_rgb32 = common dso_local global i64 0, align 8
@fpga_video_bits = common dso_local global i32 0, align 4
@fpga_video_pitch = common dso_local global i32 0, align 4
@GFX_CTX_FPGA_API = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[FPGA]: Found FPGA context: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"[FPGA]: Detecting screen resolution %ux%u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"[FPGA]: Using resolution %ux%u\0A\00", align 1
@FONT_DRIVER_RENDER_FPGA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"[FPGA]: Init complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_17__*, i32**, i8**)* @fpga_gfx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fpga_gfx_init(%struct.TYPE_17__* %0, i32** %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = call %struct.TYPE_18__* (...) @config_get_ptr()
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %17, align 8
  %20 = call i64 @calloc(i32 1, i32 1)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %18, align 8
  %22 = load i32**, i32*** %6, align 8
  store i32* null, i32** %22, align 8
  %23 = load i8**, i8*** %7, align 8
  store i8* null, i8** %23, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* @fpga_video_width, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* @fpga_video_height, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* @fpga_rgb32, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 32, i32 16
  store i32 %38, i32* @fpga_video_bits, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %46, 4
  store i32 %47, i32* @fpga_video_pitch, align 4
  br label %53

48:                                               ; preds = %3
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %51, 2
  store i32 %52, i32* @fpga_video_pitch, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i8*, i8** %18, align 8
  %55 = call i32 @fpga_gfx_create(i8* %54)
  %56 = load i8*, i8** %18, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @GFX_CTX_FPGA_API, align 4
  %62 = call %struct.TYPE_21__* @video_context_driver_init_first(i8* %56, i32 %60, i32 %61, i32 1, i32 0, i32 0)
  store %struct.TYPE_21__* %62, %struct.TYPE_21__** %12, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %64 = icmp ne %struct.TYPE_21__* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %53
  br label %155

66:                                               ; preds = %53
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %68 = call i32 @video_context_driver_set(%struct.TYPE_21__* %67)
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = call i32 @video_context_driver_get_video_size(%struct.TYPE_19__* %11)
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %8, align 4
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %13, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %14, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %66
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %99, %96, %93, %66
  %103 = load i32, i32* %13, align 4
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* %14, align 4
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i64 %109, i64* %110, align 8
  %111 = call i32 @video_context_driver_set_video_mode(%struct.TYPE_19__* %11)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %102
  br label %155

114:                                              ; preds = %102
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 0, i32* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i32 0, i32* %116, align 4
  %117 = call i32 @video_context_driver_get_video_size(%struct.TYPE_19__* %11)
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %15, align 4
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %16, align 4
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 0, i32* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i32 0, i32* %123, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %114
  %127 = load i32, i32* %16, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = call i32 @video_driver_set_size(i32* %15, i32* %16)
  br label %131

131:                                              ; preds = %129, %126, %114
  %132 = call i32 @video_driver_get_size(i32* %15, i32* %16)
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %16, align 4
  %135 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load i32**, i32*** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  store i32** %136, i32*** %137, align 8
  %138 = load i8**, i8*** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store i8** %138, i8*** %139, align 8
  %140 = call i32 @video_context_driver_input_driver(%struct.TYPE_20__* %10)
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %131
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @FONT_DRIVER_RENDER_FPGA, align 4
  %151 = call i32 @font_driver_init_osd(i32* null, i32 0, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %146, %131
  %153 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %154 = load i8*, i8** %18, align 8
  store i8* %154, i8** %4, align 8
  br label %163

155:                                              ; preds = %113, %65
  %156 = call i32 (...) @video_context_driver_destroy()
  %157 = load i8*, i8** %18, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i8*, i8** %18, align 8
  %161 = call i32 @free(i8* %160)
  br label %162

162:                                              ; preds = %159, %155
  store i8* null, i8** %4, align 8
  br label %163

163:                                              ; preds = %162, %152
  %164 = load i8*, i8** %4, align 8
  ret i8* %164
}

declare dso_local %struct.TYPE_18__* @config_get_ptr(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @fpga_gfx_create(i8*) #1

declare dso_local %struct.TYPE_21__* @video_context_driver_init_first(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @video_context_driver_set(%struct.TYPE_21__*) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local i32 @video_context_driver_get_video_size(%struct.TYPE_19__*) #1

declare dso_local i32 @video_context_driver_set_video_mode(%struct.TYPE_19__*) #1

declare dso_local i32 @video_driver_set_size(i32*, i32*) #1

declare dso_local i32 @video_driver_get_size(i32*, i32*) #1

declare dso_local i32 @video_context_driver_input_driver(%struct.TYPE_20__*) #1

declare dso_local i32 @font_driver_init_osd(i32*, i32, i32, i32) #1

declare dso_local i32 @video_context_driver_destroy(...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
