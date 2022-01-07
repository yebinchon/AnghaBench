; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i8*, i64, i32, i64, i64 }
%struct.TYPE_26__ = type { i32, i32, i32, i64, i64, i64 }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_21__*, i32, i64, %struct.TYPE_23__, %struct.TYPE_21__*, i32, %struct.TYPE_22__*, i64, i32, i32 }
%struct.TYPE_23__ = type { i64, i64, i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i32, i32, i32, i32)*, i32 (%struct.TYPE_25__*, i32, i32*)* }
%struct.font_params = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"[D3D9]: Failed to restore.\0A\00", align 1
@D3DCLEAR_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"[D3D9]: Failed to render scene.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_24__*)* @d3d9_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d9_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_24__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_26__, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_25__*, align 8
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
  store %struct.TYPE_24__* %7, %struct.TYPE_24__** %17, align 8
  store i32 0, i32* %19, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %25, %struct.TYPE_25__** %20, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %21, align 4
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %22, align 4
  %32 = load i32, i32* %19, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %8
  store i32 1, i32* %9, align 4
  br label %178

36:                                               ; preds = %8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 10
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
  br label %178

47:                                               ; preds = %41
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %49 = call i32 @d3d9_restore(%struct.TYPE_25__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %178

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %54
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* %22, align 4
  %63 = call i32 @d3d9_set_viewport(%struct.TYPE_25__* %60, i32 %61, i32 %62, i32 0, i32 1)
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 9
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = load i32 (%struct.TYPE_25__*, i32, i32*)*, i32 (%struct.TYPE_25__*, i32, i32*)** %67, align 8
  %69 = icmp ne i32 (%struct.TYPE_25__*, i32, i32*)* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %59
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 9
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  %75 = load i32 (%struct.TYPE_25__*, i32, i32*)*, i32 (%struct.TYPE_25__*, i32, i32*)** %74, align 8
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 11
  %82 = call i32 %75(%struct.TYPE_25__* %76, i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %70, %59
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %54
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 5
  store i64 0, i64* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 4
  store i64 0, i64* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* %21, align 4
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %22, align 4
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 2
  store i32 %93, i32* %94, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @d3d9_set_viewports(i32 %97, %struct.TYPE_26__* %18)
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @D3DCLEAR_TARGET, align 4
  %103 = call i32 @d3d9_clear(i32 %101, i32 0, i32 0, i32 %102, i32 0, i32 1, i32 0)
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %86
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @d3d9_swap(%struct.TYPE_25__* %109, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 10
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115, %108
  store i32 1, i32* %9, align 4
  br label %178

121:                                              ; preds = %115
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @D3DCLEAR_TARGET, align 4
  %126 = call i32 @d3d9_clear(i32 %124, i32 0, i32 0, i32 %125, i32 0, i32 1, i32 0)
  br label %127

127:                                              ; preds = %121, %86
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 9
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i32, i32, i32, i32)*, i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, i8*, i32, i32, i32, i32)** %131, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = call i32 %132(%struct.TYPE_25__* %133, %struct.TYPE_24__* %134, i8* %135, i32 %136, i32 %137, i32 %138, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %127
  %145 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %178

146:                                              ; preds = %127
  %147 = load i8*, i8** %16, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %170

149:                                              ; preds = %146
  %150 = load i8*, i8** %16, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %149
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @d3d9_set_viewports(i32 %157, %struct.TYPE_26__* %18)
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @d3d9_begin_scene(i32 %161)
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %164 = load i8*, i8** %16, align 8
  %165 = call i32 @font_driver_render_msg(%struct.TYPE_24__* %163, i32* null, i8* %164, %struct.font_params* null)
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @d3d9_end_scene(i32 %168)
  br label %170

170:                                              ; preds = %154, %149, %146
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %172 = call i32 @d3d9_update_title(%struct.TYPE_24__* %171)
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @d3d9_swap(%struct.TYPE_25__* %173, i32 %176)
  store i32 1, i32* %9, align 4
  br label %178

178:                                              ; preds = %170, %144, %120, %51, %46, %35
  %179 = load i32, i32* %9, align 4
  ret i32 %179
}

declare dso_local i32 @win32_get_window(...) #1

declare dso_local i64 @IsIconic(i32) #1

declare dso_local i32 @d3d9_restore(%struct.TYPE_25__*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @d3d9_set_viewport(%struct.TYPE_25__*, i32, i32, i32, i32) #1

declare dso_local i32 @d3d9_set_viewports(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @d3d9_clear(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @d3d9_swap(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @d3d9_begin_scene(i32) #1

declare dso_local i32 @font_driver_render_msg(%struct.TYPE_24__*, i32*, i8*, %struct.font_params*) #1

declare dso_local i32 @d3d9_end_scene(i32) #1

declare dso_local i32 @d3d9_update_title(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
