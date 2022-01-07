; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_dir_check_shader.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_dir_check_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rarch_dir_list = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@dir_shader_list = common dso_local global i32 0, align 4
@dir_check_shader.change_triggered = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dir_check_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dir_check_shader(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rarch_dir_list*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.rarch_dir_list* bitcast (i32* @dir_shader_list to %struct.rarch_dir_list*), %struct.rarch_dir_list** %5, align 8
  %6 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %5, align 8
  %7 = icmp ne %struct.rarch_dir_list* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %5, align 8
  %10 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %2
  br label %73

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load i32, i32* @dir_check_shader.change_triggered, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %5, align 8
  %22 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %5, align 8
  %26 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = srem i32 %24, %29
  %31 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %5, align 8
  %32 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %20, %17
  br label %59

34:                                               ; preds = %14
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %5, align 8
  %39 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %5, align 8
  %44 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %5, align 8
  %50 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %56

51:                                               ; preds = %37
  %52 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %5, align 8
  %53 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %51, %42
  br label %58

57:                                               ; preds = %34
  br label %73

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58, %33
  store i32 1, i32* @dir_check_shader.change_triggered, align 4
  %60 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %5, align 8
  %61 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %5, align 8
  %66 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @command_set_shader(i32 %71)
  br label %73

73:                                               ; preds = %59, %57, %13
  ret void
}

declare dso_local i32 @command_set_shader(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
