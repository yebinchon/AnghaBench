; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl1.c_gl1_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl1.c_gl1_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@gl1_menu_frame = common dso_local global i8* null, align 8
@gl1_menu_width = common dso_local global i32 0, align 4
@gl1_menu_height = common dso_local global i32 0, align 4
@gl1_menu_pitch = common dso_local global i32 0, align 4
@gl1_menu_bits = common dso_local global i32 0, align 4
@gl1_menu_size_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @gl1_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl1_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %16 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = mul i32 %17, 2
  store i32 %18, i32* %14, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %15, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  br label %107

24:                                               ; preds = %6
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %32 = call i32 @gl1_context_bind_hw_render(%struct.TYPE_8__* %31, i32 0)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* %10, align 4
  %37 = mul i32 %36, 4
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %35, %24
  %39 = load i8*, i8** @gl1_menu_frame, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** @gl1_menu_frame, align 8
  %43 = call i32 @free(i8* %42)
  store i8* null, i8** @gl1_menu_frame, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i8*, i8** @gl1_menu_frame, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i32, i32* @gl1_menu_width, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @gl1_menu_height, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @gl1_menu_pitch, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55, %51, %47, %44
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i8*, i8** @gl1_menu_frame, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i8*, i8** @gl1_menu_frame, align 8
  %70 = call i32 @free(i8* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %11, align 4
  %74 = mul i32 %72, %73
  %75 = call i64 @malloc(i32 %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** @gl1_menu_frame, align 8
  br label %77

77:                                               ; preds = %71, %62, %59
  br label %78

78:                                               ; preds = %77, %55
  %79 = load i8*, i8** @gl1_menu_frame, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %104

81:                                               ; preds = %78
  %82 = load i8*, i8** %8, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load i8*, i8** @gl1_menu_frame, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul i32 %93, %94
  %96 = call i32 @memcpy(i8* %91, i8* %92, i32 %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* @gl1_menu_width, align 4
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* @gl1_menu_height, align 4
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* @gl1_menu_pitch, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 32, i32 16
  store i32 %103, i32* @gl1_menu_bits, align 4
  store i32 1, i32* @gl1_menu_size_changed, align 4
  br label %104

104:                                              ; preds = %90, %87, %84, %81, %78
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %106 = call i32 @gl1_context_bind_hw_render(%struct.TYPE_8__* %105, i32 1)
  br label %107

107:                                              ; preds = %104, %23
  ret void
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i32 @gl1_context_bind_hw_render(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
