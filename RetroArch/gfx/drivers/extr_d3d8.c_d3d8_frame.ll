; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d8.c_d3d8_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i8*, i32, i64, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_17__*, i32, i64, %struct.TYPE_18__, %struct.TYPE_17__*, i32, i64 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.font_params = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"[D3D8]: Failed to restore.\0A\00", align 1
@D3DCLEAR_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"[D3D8]: Failed to render scene.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_19__*)* @d3d8_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d8_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_19__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_21__, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_19__* %7, %struct.TYPE_19__** %17, align 8
  store i32 0, i32* %19, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %20, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %21, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %22, align 4
  %32 = load i32, i32* %19, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %8
  store i32 1, i32* %9, align 4
  br label %148

36:                                               ; preds = %8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = call i32 (...) @win32_get_window()
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %23, align 4
  %44 = call i64 @IsIconic(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %148

47:                                               ; preds = %41
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %49 = call i32 @d3d8_restore(%struct.TYPE_20__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %148

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %22, align 4
  %63 = call i32 @d3d8_set_viewport(%struct.TYPE_20__* %60, i32 %61, i32 %62, i32 0, i32 1)
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %59, %54
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load i32, i32* %21, align 4
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %22, align 4
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @d3d8_set_viewports(i32 %77, %struct.TYPE_21__* %18)
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @D3DCLEAR_TARGET, align 4
  %83 = call i32 @d3d8_clear(i32 %81, i32 0, i32 0, i32 %82, i32 0, i32 1, i32 0)
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %66
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @d3d8_swap(%struct.TYPE_20__* %89, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95, %88
  store i32 1, i32* %9, align 4
  br label %148

101:                                              ; preds = %95
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @D3DCLEAR_TARGET, align 4
  %106 = call i32 @d3d8_clear(i32 %104, i32 0, i32 0, i32 %105, i32 0, i32 1, i32 0)
  br label %107

107:                                              ; preds = %101, %66
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @d3d8_renderchain_render(%struct.TYPE_20__* %108, i8* %109, i32 %110, i32 %111, i32 %112, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %107
  %119 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %148

120:                                              ; preds = %107
  %121 = load i8*, i8** %16, align 8
  %122 = call i32 @string_is_empty(i8* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %120
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @d3d8_set_viewports(i32 %127, %struct.TYPE_21__* %18)
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @d3d8_begin_scene(i32 %131)
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %134 = load i8*, i8** %16, align 8
  %135 = call i32 @font_driver_render_msg(%struct.TYPE_19__* %133, i32* null, i8* %134, %struct.font_params* null)
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @d3d8_end_scene(i32 %138)
  br label %140

140:                                              ; preds = %124, %120
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %142 = call i32 @d3d8_update_title(%struct.TYPE_19__* %141)
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @d3d8_swap(%struct.TYPE_20__* %143, i32 %146)
  store i32 1, i32* %9, align 4
  br label %148

148:                                              ; preds = %140, %118, %100, %51, %46, %35
  %149 = load i32, i32* %9, align 4
  ret i32 %149
}

declare dso_local i32 @win32_get_window(...) #1

declare dso_local i64 @IsIconic(i32) #1

declare dso_local i32 @d3d8_restore(%struct.TYPE_20__*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @d3d8_set_viewport(%struct.TYPE_20__*, i32, i32, i32, i32) #1

declare dso_local i32 @d3d8_set_viewports(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @d3d8_clear(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @d3d8_swap(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @d3d8_renderchain_render(%struct.TYPE_20__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @d3d8_begin_scene(i32) #1

declare dso_local i32 @font_driver_render_msg(%struct.TYPE_19__*, i32*, i8*, %struct.font_params*) #1

declare dso_local i32 @d3d8_end_scene(i32) #1

declare dso_local i32 @d3d8_update_title(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
