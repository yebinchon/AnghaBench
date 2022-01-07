; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_registry_handle_global.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wayland_ctx.c_registry_handle_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_registry = type { i32 }
%struct.TYPE_8__ = type { %struct.zxdg_decoration_manager_v1*, %struct.zwp_idle_inhibit_manager_v1*, %struct.wl_seat*, %struct.wl_shm*, %struct.zxdg_shell_v6*, %struct.xdg_wm_base*, %struct.TYPE_6__, i32, %struct.wl_compositor* }
%struct.zxdg_decoration_manager_v1 = type { i32 }
%struct.zwp_idle_inhibit_manager_v1 = type { i32 }
%struct.wl_seat = type { i32 }
%struct.wl_shm = type { i32 }
%struct.zxdg_shell_v6 = type { i32 }
%struct.xdg_wm_base = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wl_compositor = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.wl_output*, i32 }
%struct.wl_output = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"wl_compositor\00", align 1
@wl_compositor_interface = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"wl_output\00", align 1
@wl_output_interface = common dso_local global i32 0, align 4
@output_listener = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"xdg_wm_base\00", align 1
@xdg_wm_base_interface = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"zxdg_shell_v6\00", align 1
@zxdg_shell_v6_interface = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"wl_shm\00", align 1
@wl_shm_interface = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"wl_seat\00", align 1
@wl_seat_interface = common dso_local global i32 0, align 4
@seat_listener = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"zwp_idle_inhibit_manager_v1\00", align 1
@zwp_idle_inhibit_manager_v1_interface = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"zxdg_decoration_manager_v1\00", align 1
@zxdg_decoration_manager_v1_interface = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_registry*, i32, i8*, i32)* @registry_handle_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @registry_handle_global(i8* %0, %struct.wl_registry* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_registry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.wl_registry* %1, %struct.wl_registry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @string_is_equal(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @wl_registry_bind(%struct.wl_registry* %20, i32 %21, i32* @wl_compositor_interface, i32 3)
  %23 = inttoptr i64 %22 to %struct.wl_compositor*
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 8
  store %struct.wl_compositor* %23, %struct.wl_compositor** %25, align 8
  br label %135

26:                                               ; preds = %5
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @string_is_equal(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = call i64 @calloc(i32 1, i32 24)
  %32 = inttoptr i64 %31 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %12, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @wl_registry_bind(%struct.wl_registry* %36, i32 %37, i32* @wl_output_interface, i32 2)
  %39 = inttoptr i64 %38 to %struct.wl_output*
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store %struct.wl_output* %39, %struct.wl_output** %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.wl_output*, %struct.wl_output** %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %46 = call i32 @wl_output_add_listener(%struct.wl_output* %44, i32* @output_listener, %struct.TYPE_7__* %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = call i32 @wl_list_insert(i32* %48, i32* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @wl_display_roundtrip(i32 %55)
  br label %134

57:                                               ; preds = %26
  %58 = load i8*, i8** %9, align 8
  %59 = call i64 @string_is_equal(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @wl_registry_bind(%struct.wl_registry* %62, i32 %63, i32* @xdg_wm_base_interface, i32 1)
  %65 = inttoptr i64 %64 to %struct.xdg_wm_base*
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 5
  store %struct.xdg_wm_base* %65, %struct.xdg_wm_base** %67, align 8
  br label %133

68:                                               ; preds = %57
  %69 = load i8*, i8** %9, align 8
  %70 = call i64 @string_is_equal(i8* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @wl_registry_bind(%struct.wl_registry* %73, i32 %74, i32* @zxdg_shell_v6_interface, i32 1)
  %76 = inttoptr i64 %75 to %struct.zxdg_shell_v6*
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  store %struct.zxdg_shell_v6* %76, %struct.zxdg_shell_v6** %78, align 8
  br label %132

79:                                               ; preds = %68
  %80 = load i8*, i8** %9, align 8
  %81 = call i64 @string_is_equal(i8* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i64 @wl_registry_bind(%struct.wl_registry* %84, i32 %85, i32* @wl_shm_interface, i32 1)
  %87 = inttoptr i64 %86 to %struct.wl_shm*
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  store %struct.wl_shm* %87, %struct.wl_shm** %89, align 8
  br label %131

90:                                               ; preds = %79
  %91 = load i8*, i8** %9, align 8
  %92 = call i64 @string_is_equal(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @wl_registry_bind(%struct.wl_registry* %95, i32 %96, i32* @wl_seat_interface, i32 2)
  %98 = inttoptr i64 %97 to %struct.wl_seat*
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  store %struct.wl_seat* %98, %struct.wl_seat** %100, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load %struct.wl_seat*, %struct.wl_seat** %102, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %105 = call i32 @wl_seat_add_listener(%struct.wl_seat* %103, i32* @seat_listener, %struct.TYPE_8__* %104)
  br label %130

106:                                              ; preds = %90
  %107 = load i8*, i8** %9, align 8
  %108 = call i64 @string_is_equal(i8* %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i64 @wl_registry_bind(%struct.wl_registry* %111, i32 %112, i32* @zwp_idle_inhibit_manager_v1_interface, i32 1)
  %114 = inttoptr i64 %113 to %struct.zwp_idle_inhibit_manager_v1*
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store %struct.zwp_idle_inhibit_manager_v1* %114, %struct.zwp_idle_inhibit_manager_v1** %116, align 8
  br label %129

117:                                              ; preds = %106
  %118 = load i8*, i8** %9, align 8
  %119 = call i64 @string_is_equal(i8* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load %struct.wl_registry*, %struct.wl_registry** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i64 @wl_registry_bind(%struct.wl_registry* %122, i32 %123, i32* @zxdg_decoration_manager_v1_interface, i32 1)
  %125 = inttoptr i64 %124 to %struct.zxdg_decoration_manager_v1*
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store %struct.zxdg_decoration_manager_v1* %125, %struct.zxdg_decoration_manager_v1** %127, align 8
  br label %128

128:                                              ; preds = %121, %117
  br label %129

129:                                              ; preds = %128, %110
  br label %130

130:                                              ; preds = %129, %94
  br label %131

131:                                              ; preds = %130, %83
  br label %132

132:                                              ; preds = %131, %72
  br label %133

133:                                              ; preds = %132, %61
  br label %134

134:                                              ; preds = %133, %30
  br label %135

135:                                              ; preds = %134, %19
  ret void
}

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i64 @wl_registry_bind(%struct.wl_registry*, i32, i32*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @wl_output_add_listener(%struct.wl_output*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

declare dso_local i32 @wl_display_roundtrip(i32) #1

declare dso_local i32 @wl_seat_add_listener(%struct.wl_seat*, i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
