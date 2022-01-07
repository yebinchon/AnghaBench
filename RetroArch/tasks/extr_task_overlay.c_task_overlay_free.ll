; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_overlay_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_overlay_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.overlay = type { i64, i32, i32, i64, %struct.overlay*, %struct.texture_image*, %struct.overlay* }
%struct.texture_image = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @task_overlay_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_overlay_free(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.overlay*, align 8
  %5 = alloca %struct.overlay*, align 8
  %6 = alloca %struct.texture_image*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.overlay*
  store %struct.overlay* %10, %struct.overlay** %4, align 8
  %11 = load %struct.overlay*, %struct.overlay** %4, align 8
  %12 = getelementptr inbounds %struct.overlay, %struct.overlay* %11, i32 0, i32 4
  %13 = load %struct.overlay*, %struct.overlay** %12, align 8
  %14 = load %struct.overlay*, %struct.overlay** %4, align 8
  %15 = getelementptr inbounds %struct.overlay, %struct.overlay* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.overlay, %struct.overlay* %13, i64 %16
  store %struct.overlay* %17, %struct.overlay** %5, align 8
  %18 = load %struct.overlay*, %struct.overlay** %4, align 8
  %19 = getelementptr inbounds %struct.overlay, %struct.overlay* %18, i32 0, i32 6
  %20 = load %struct.overlay*, %struct.overlay** %19, align 8
  %21 = icmp ne %struct.overlay* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.overlay*, %struct.overlay** %4, align 8
  %24 = getelementptr inbounds %struct.overlay, %struct.overlay* %23, i32 0, i32 6
  %25 = load %struct.overlay*, %struct.overlay** %24, align 8
  %26 = call i32 @free(%struct.overlay* %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = call i64 @task_get_cancelled(%struct.TYPE_4__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %47, %31
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.overlay*, %struct.overlay** %5, align 8
  %35 = getelementptr inbounds %struct.overlay, %struct.overlay* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.overlay*, %struct.overlay** %5, align 8
  %40 = getelementptr inbounds %struct.overlay, %struct.overlay* %39, i32 0, i32 5
  %41 = load %struct.texture_image*, %struct.texture_image** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %41, i64 %43
  store %struct.texture_image* %44, %struct.texture_image** %6, align 8
  %45 = load %struct.texture_image*, %struct.texture_image** %6, align 8
  %46 = call i32 @image_texture_free(%struct.texture_image* %45)
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %3, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %32

50:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.overlay*, %struct.overlay** %4, align 8
  %54 = getelementptr inbounds %struct.overlay, %struct.overlay* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.overlay*, %struct.overlay** %4, align 8
  %59 = getelementptr inbounds %struct.overlay, %struct.overlay* %58, i32 0, i32 4
  %60 = load %struct.overlay*, %struct.overlay** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.overlay, %struct.overlay* %60, i64 %62
  %64 = call i32 @input_overlay_free_overlay(%struct.overlay* %63)
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %3, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %51

68:                                               ; preds = %51
  %69 = load %struct.overlay*, %struct.overlay** %4, align 8
  %70 = getelementptr inbounds %struct.overlay, %struct.overlay* %69, i32 0, i32 4
  %71 = load %struct.overlay*, %struct.overlay** %70, align 8
  %72 = call i32 @free(%struct.overlay* %71)
  br label %73

73:                                               ; preds = %68, %27
  %74 = load %struct.overlay*, %struct.overlay** %4, align 8
  %75 = getelementptr inbounds %struct.overlay, %struct.overlay* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.overlay*, %struct.overlay** %4, align 8
  %80 = getelementptr inbounds %struct.overlay, %struct.overlay* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @config_file_free(i64 %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.overlay*, %struct.overlay** %4, align 8
  %85 = call i32 @free(%struct.overlay* %84)
  ret void
}

declare dso_local i32 @free(%struct.overlay*) #1

declare dso_local i64 @task_get_cancelled(%struct.TYPE_4__*) #1

declare dso_local i32 @image_texture_free(%struct.texture_image*) #1

declare dso_local i32 @input_overlay_free_overlay(%struct.overlay*) #1

declare dso_local i32 @config_file_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
