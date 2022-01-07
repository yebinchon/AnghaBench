; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c__glfwPlatformSetCursor.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c__glfwPlatformSetCursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_16__*, %struct.wl_surface* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, %struct.wl_buffer*, i32, i32, %struct.wl_cursor_image* }
%struct.wl_buffer = type { i32 }
%struct.wl_cursor_image = type { i32, i32, i32, i32 }
%struct.wl_surface = type { i32 }
%struct.wl_cursor = type { %struct.wl_cursor_image** }

@_glfw = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GLFW_CURSOR_DISABLED = common dso_local global i64 0, align 8
@GLFW_CURSOR_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"left_ptr\00", align 1
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Wayland: Standard cursor not found\00", align 1
@GLFW_CURSOR_HIDDEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformSetCursor(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.wl_buffer*, align 8
  %6 = alloca %struct.wl_cursor*, align 8
  %7 = alloca %struct.wl_cursor_image*, align 8
  %8 = alloca %struct.wl_surface*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %9 = load %struct.wl_surface*, %struct.wl_surface** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 4), align 8
  store %struct.wl_surface* %9, %struct.wl_surface** %8, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 1), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %154

13:                                               ; preds = %2
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %17, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 3), align 8
  %20 = icmp ne %struct.TYPE_16__* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %154

22:                                               ; preds = %13
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GLFW_CURSOR_DISABLED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = call i64 @isPointerLocked(%struct.TYPE_16__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = call i32 @unlockPointer(%struct.TYPE_16__* %33)
  br label %35

35:                                               ; preds = %32, %28, %22
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GLFW_CURSOR_NORMAL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %128

41:                                               ; preds = %35
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = icmp ne %struct.TYPE_17__* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 5
  %48 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %47, align 8
  store %struct.wl_cursor_image* %48, %struct.wl_cursor_image** %7, align 8
  br label %63

49:                                               ; preds = %41
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 2), align 8
  %51 = call %struct.wl_cursor* @wl_cursor_theme_get_cursor(i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.wl_cursor* %51, %struct.wl_cursor** %6, align 8
  %52 = load %struct.wl_cursor*, %struct.wl_cursor** %6, align 8
  %53 = icmp ne %struct.wl_cursor* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %56 = call i32 @_glfwInputError(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %154

57:                                               ; preds = %49
  %58 = load %struct.wl_cursor*, %struct.wl_cursor** %6, align 8
  %59 = getelementptr inbounds %struct.wl_cursor, %struct.wl_cursor* %58, i32 0, i32 0
  %60 = load %struct.wl_cursor_image**, %struct.wl_cursor_image*** %59, align 8
  %61 = getelementptr inbounds %struct.wl_cursor_image*, %struct.wl_cursor_image** %60, i64 0
  %62 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %61, align 8
  store %struct.wl_cursor_image* %62, %struct.wl_cursor_image** %7, align 8
  br label %63

63:                                               ; preds = %57, %44
  %64 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %65 = icmp ne %struct.wl_cursor_image* %64, null
  br i1 %65, label %66, label %96

66:                                               ; preds = %63
  %67 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %68 = call %struct.wl_buffer* @wl_cursor_image_get_buffer(%struct.wl_cursor_image* %67)
  store %struct.wl_buffer* %68, %struct.wl_buffer** %5, align 8
  %69 = load %struct.wl_buffer*, %struct.wl_buffer** %5, align 8
  %70 = icmp ne %struct.wl_buffer* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %154

72:                                               ; preds = %66
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 1), align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 8
  %75 = load %struct.wl_surface*, %struct.wl_surface** %8, align 8
  %76 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %77 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %80 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @wl_pointer_set_cursor(i32 %73, i32 %74, %struct.wl_surface* %75, i32 %78, i32 %81)
  %83 = load %struct.wl_surface*, %struct.wl_surface** %8, align 8
  %84 = load %struct.wl_buffer*, %struct.wl_buffer** %5, align 8
  %85 = call i32 @wl_surface_attach(%struct.wl_surface* %83, %struct.wl_buffer* %84, i32 0, i32 0)
  %86 = load %struct.wl_surface*, %struct.wl_surface** %8, align 8
  %87 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %88 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wl_cursor_image*, %struct.wl_cursor_image** %7, align 8
  %91 = getelementptr inbounds %struct.wl_cursor_image, %struct.wl_cursor_image* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @wl_surface_damage(%struct.wl_surface* %86, i32 0, i32 0, i32 %89, i32 %92)
  %94 = load %struct.wl_surface*, %struct.wl_surface** %8, align 8
  %95 = call i32 @wl_surface_commit(%struct.wl_surface* %94)
  br label %127

96:                                               ; preds = %63
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 1), align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 8
  %99 = load %struct.wl_surface*, %struct.wl_surface** %8, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @wl_pointer_set_cursor(i32 %97, i32 %98, %struct.wl_surface* %99, i32 %103, i32 %107)
  %109 = load %struct.wl_surface*, %struct.wl_surface** %8, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = load %struct.wl_buffer*, %struct.wl_buffer** %112, align 8
  %114 = call i32 @wl_surface_attach(%struct.wl_surface* %109, %struct.wl_buffer* %113, i32 0, i32 0)
  %115 = load %struct.wl_surface*, %struct.wl_surface** %8, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @wl_surface_damage(%struct.wl_surface* %115, i32 0, i32 0, i32 %119, i32 %123)
  %125 = load %struct.wl_surface*, %struct.wl_surface** %8, align 8
  %126 = call i32 @wl_surface_commit(%struct.wl_surface* %125)
  br label %127

127:                                              ; preds = %96, %72
  br label %154

128:                                              ; preds = %35
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @GLFW_CURSOR_DISABLED, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %136 = call i64 @isPointerLocked(%struct.TYPE_16__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %140 = call i32 @lockPointer(%struct.TYPE_16__* %139)
  br label %141

141:                                              ; preds = %138, %134
  br label %153

142:                                              ; preds = %128
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @GLFW_CURSOR_HIDDEN, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 1), align 4
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 8
  %151 = call i32 @wl_pointer_set_cursor(i32 %149, i32 %150, %struct.wl_surface* null, i32 0, i32 0)
  br label %152

152:                                              ; preds = %148, %142
  br label %153

153:                                              ; preds = %152, %141
  br label %154

154:                                              ; preds = %12, %21, %54, %71, %153, %127
  ret void
}

declare dso_local i64 @isPointerLocked(%struct.TYPE_16__*) #1

declare dso_local i32 @unlockPointer(%struct.TYPE_16__*) #1

declare dso_local %struct.wl_cursor* @wl_cursor_theme_get_cursor(i32, i8*) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

declare dso_local %struct.wl_buffer* @wl_cursor_image_get_buffer(%struct.wl_cursor_image*) #1

declare dso_local i32 @wl_pointer_set_cursor(i32, i32, %struct.wl_surface*, i32, i32) #1

declare dso_local i32 @wl_surface_attach(%struct.wl_surface*, %struct.wl_buffer*, i32, i32) #1

declare dso_local i32 @wl_surface_damage(%struct.wl_surface*, i32, i32, i32, i32) #1

declare dso_local i32 @wl_surface_commit(%struct.wl_surface*) #1

declare dso_local i32 @lockPointer(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
