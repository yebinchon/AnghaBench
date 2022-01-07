; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/mesh/manual_networking/main/extr_mesh_light.c_mesh_light_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/mesh/manual_networking/main/extr_mesh_light.c_mesh_light_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEDC_LOW_SPEED_MODE = common dso_local global i32 0, align 4
@LEDC_CHANNEL_0 = common dso_local global i32 0, align 4
@LEDC_CHANNEL_1 = common dso_local global i32 0, align 4
@LEDC_CHANNEL_2 = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_light_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %74 [
    i32 130, label %4
    i32 133, label %14
    i32 134, label %24
    i32 128, label %34
    i32 131, label %44
    i32 132, label %54
    i32 129, label %64
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %6 = load i32, i32* @LEDC_CHANNEL_0, align 4
  %7 = call i32 @ledc_set_duty(i32 %5, i32 %6, i32 3000)
  %8 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %9 = load i32, i32* @LEDC_CHANNEL_1, align 4
  %10 = call i32 @ledc_set_duty(i32 %8, i32 %9, i32 0)
  %11 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %12 = load i32, i32* @LEDC_CHANNEL_2, align 4
  %13 = call i32 @ledc_set_duty(i32 %11, i32 %12, i32 0)
  br label %84

14:                                               ; preds = %1
  %15 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %16 = load i32, i32* @LEDC_CHANNEL_0, align 4
  %17 = call i32 @ledc_set_duty(i32 %15, i32 %16, i32 0)
  %18 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %19 = load i32, i32* @LEDC_CHANNEL_1, align 4
  %20 = call i32 @ledc_set_duty(i32 %18, i32 %19, i32 3000)
  %21 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %22 = load i32, i32* @LEDC_CHANNEL_2, align 4
  %23 = call i32 @ledc_set_duty(i32 %21, i32 %22, i32 0)
  br label %84

24:                                               ; preds = %1
  %25 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %26 = load i32, i32* @LEDC_CHANNEL_0, align 4
  %27 = call i32 @ledc_set_duty(i32 %25, i32 %26, i32 0)
  %28 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %29 = load i32, i32* @LEDC_CHANNEL_1, align 4
  %30 = call i32 @ledc_set_duty(i32 %28, i32 %29, i32 0)
  %31 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %32 = load i32, i32* @LEDC_CHANNEL_2, align 4
  %33 = call i32 @ledc_set_duty(i32 %31, i32 %32, i32 3000)
  br label %84

34:                                               ; preds = %1
  %35 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %36 = load i32, i32* @LEDC_CHANNEL_0, align 4
  %37 = call i32 @ledc_set_duty(i32 %35, i32 %36, i32 3000)
  %38 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %39 = load i32, i32* @LEDC_CHANNEL_1, align 4
  %40 = call i32 @ledc_set_duty(i32 %38, i32 %39, i32 3000)
  %41 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %42 = load i32, i32* @LEDC_CHANNEL_2, align 4
  %43 = call i32 @ledc_set_duty(i32 %41, i32 %42, i32 0)
  br label %84

44:                                               ; preds = %1
  %45 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %46 = load i32, i32* @LEDC_CHANNEL_0, align 4
  %47 = call i32 @ledc_set_duty(i32 %45, i32 %46, i32 3000)
  %48 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %49 = load i32, i32* @LEDC_CHANNEL_1, align 4
  %50 = call i32 @ledc_set_duty(i32 %48, i32 %49, i32 0)
  %51 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %52 = load i32, i32* @LEDC_CHANNEL_2, align 4
  %53 = call i32 @ledc_set_duty(i32 %51, i32 %52, i32 3000)
  br label %84

54:                                               ; preds = %1
  %55 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %56 = load i32, i32* @LEDC_CHANNEL_0, align 4
  %57 = call i32 @ledc_set_duty(i32 %55, i32 %56, i32 0)
  %58 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %59 = load i32, i32* @LEDC_CHANNEL_1, align 4
  %60 = call i32 @ledc_set_duty(i32 %58, i32 %59, i32 3000)
  %61 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %62 = load i32, i32* @LEDC_CHANNEL_2, align 4
  %63 = call i32 @ledc_set_duty(i32 %61, i32 %62, i32 3000)
  br label %84

64:                                               ; preds = %1
  %65 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %66 = load i32, i32* @LEDC_CHANNEL_0, align 4
  %67 = call i32 @ledc_set_duty(i32 %65, i32 %66, i32 3000)
  %68 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %69 = load i32, i32* @LEDC_CHANNEL_1, align 4
  %70 = call i32 @ledc_set_duty(i32 %68, i32 %69, i32 3000)
  %71 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %72 = load i32, i32* @LEDC_CHANNEL_2, align 4
  %73 = call i32 @ledc_set_duty(i32 %71, i32 %72, i32 3000)
  br label %84

74:                                               ; preds = %1
  %75 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %76 = load i32, i32* @LEDC_CHANNEL_0, align 4
  %77 = call i32 @ledc_set_duty(i32 %75, i32 %76, i32 0)
  %78 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %79 = load i32, i32* @LEDC_CHANNEL_1, align 4
  %80 = call i32 @ledc_set_duty(i32 %78, i32 %79, i32 0)
  %81 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %82 = load i32, i32* @LEDC_CHANNEL_2, align 4
  %83 = call i32 @ledc_set_duty(i32 %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %74, %64, %54, %44, %34, %24, %14, %4
  %85 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %86 = load i32, i32* @LEDC_CHANNEL_0, align 4
  %87 = call i32 @ledc_update_duty(i32 %85, i32 %86)
  %88 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %89 = load i32, i32* @LEDC_CHANNEL_1, align 4
  %90 = call i32 @ledc_update_duty(i32 %88, i32 %89)
  %91 = load i32, i32* @LEDC_LOW_SPEED_MODE, align 4
  %92 = load i32, i32* @LEDC_CHANNEL_2, align 4
  %93 = call i32 @ledc_update_duty(i32 %91, i32 %92)
  %94 = load i32, i32* @ESP_OK, align 4
  ret i32 %94
}

declare dso_local i32 @ledc_set_duty(i32, i32, i32) #1

declare dso_local i32 @ledc_update_duty(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
