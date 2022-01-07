; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_rendersub.c_ssa_post_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_rendersub.c_ssa_post_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_13__, %struct.TYPE_12__*, i32* }
%struct.TYPE_13__ = type { double, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"decssasub: libass initialization failed\0A\00", align 1
@ssa_log = common dso_local global i32 0, align 4
@FONT_TTF_ATTACH = common dso_local global i64 0, align 8
@FONT_OTF_ATTACH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"decssasub: renderer initialization failed\0A\00", align 1
@ASS_HINTING_LIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Arial\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"decssasub: ssa track initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_14__*)* @ssa_post_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssa_post_init(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %6, align 8
  %18 = call i32 (...) @ass_library_init()
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 @hb_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %189

27:                                               ; preds = %2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ssa_log, align 4
  %32 = call i32 @ass_set_message_cb(i32 %30, i32 %31, i32* null)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %71, %27
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @hb_list_count(i32* %38)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %36
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.TYPE_17__* @hb_list_item(i32* %42, i32 %43)
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %9, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FONT_TTF_ATTACH, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %41
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FONT_OTF_ATTACH, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50, %41
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ass_add_font(i32 %59, i32 %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %56, %50
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %36

74:                                               ; preds = %36
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ass_set_extract_fonts(i32 %77, i32 1)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ass_set_style_overrides(i32 %81, i32* null)
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ass_renderer_init(i32 %85)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %74
  %94 = call i32 @hb_log(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %189

95:                                               ; preds = %74
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ass_set_use_margins(i32 %98, i32 0)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ASS_HINTING_LIGHT, align 4
  %104 = call i32 @ass_set_hinting(i32 %102, i32 %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ass_set_font_scale(i32 %107, double 1.000000e+00)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ass_set_line_spacing(i32 %111, double 1.000000e+00)
  store i8* null, i8** %10, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i8*, i8** %10, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @ass_set_fonts(i32 %115, i8* %116, i8* %117, i32 1, i32* null, i32 1)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ass_new_track(i32 %121)
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %95
  %130 = call i32 @hb_log(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %189

131:                                              ; preds = %95
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %137, %142
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %143, %148
  store i32 %149, i32* %12, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %155, %160
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 3
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %161, %166
  store i32 %167, i32* %13, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %12, align 4
  %173 = call i32 @ass_set_frame_size(i32 %170, i32 %171, i32 %172)
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = sitofp i64 %177 to double
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load double, double* %181, align 8
  %183 = fdiv double %178, %182
  store double %183, double* %14, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load double, double* %14, align 8
  %188 = call i32 @ass_set_aspect_ratio(i32 %186, i32 1, double %187)
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %131, %129, %93, %25
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @ass_library_init(...) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @ass_set_message_cb(i32, i32, i32*) #1

declare dso_local i32 @hb_list_count(i32*) #1

declare dso_local %struct.TYPE_17__* @hb_list_item(i32*, i32) #1

declare dso_local i32 @ass_add_font(i32, i32, i32, i32) #1

declare dso_local i32 @ass_set_extract_fonts(i32, i32) #1

declare dso_local i32 @ass_set_style_overrides(i32, i32*) #1

declare dso_local i32 @ass_renderer_init(i32) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @ass_set_use_margins(i32, i32) #1

declare dso_local i32 @ass_set_hinting(i32, i32) #1

declare dso_local i32 @ass_set_font_scale(i32, double) #1

declare dso_local i32 @ass_set_line_spacing(i32, double) #1

declare dso_local i32 @ass_set_fonts(i32, i8*, i8*, i32, i32*, i32) #1

declare dso_local i32 @ass_new_track(i32) #1

declare dso_local i32 @ass_set_frame_size(i32, i32, i32) #1

declare dso_local i32 @ass_set_aspect_ratio(i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
