; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_get_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_shader = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RARCH_SHADER_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_shader_manager_get_type(%struct.video_shader* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.video_shader*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.video_shader* %0, %struct.video_shader** %3, align 8
  %7 = load i32, i32* @RARCH_SHADER_NONE, align 4
  store i32 %7, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %8 = load %struct.video_shader*, %struct.video_shader** %3, align 8
  %9 = icmp ne %struct.video_shader* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @RARCH_SHADER_NONE, align 4
  store i32 %11, i32* %2, align 4
  br label %68

12:                                               ; preds = %1
  %13 = load %struct.video_shader*, %struct.video_shader** %3, align 8
  %14 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @video_shader_parse_type(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.video_shader*, %struct.video_shader** %3, align 8
  %18 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %68

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RARCH_SHADER_NONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.video_shader*, %struct.video_shader** %3, align 8
  %29 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @video_shader_parse_type(i32 %34)
  store i32 %35, i32* %4, align 4
  store i64 1, i64* %5, align 8
  br label %36

36:                                               ; preds = %27, %23
  br label %37

37:                                               ; preds = %63, %36
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.video_shader*, %struct.video_shader** %3, align 8
  %40 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %37
  %44 = load %struct.video_shader*, %struct.video_shader** %3, align 8
  %45 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @video_shader_parse_type(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  switch i32 %53, label %61 [
    i32 130, label %54
    i32 129, label %54
    i32 128, label %54
  ]

54:                                               ; preds = %43, %43, %43
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @RARCH_SHADER_NONE, align 4
  store i32 %59, i32* %2, align 4
  br label %68

60:                                               ; preds = %54
  br label %62

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %5, align 8
  br label %37

66:                                               ; preds = %37
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %58, %21, %10
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @video_shader_parse_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
