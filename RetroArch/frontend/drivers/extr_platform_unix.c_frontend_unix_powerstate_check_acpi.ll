; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_unix.c_frontend_unix_powerstate_check_acpi.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_unix.c_frontend_unix_powerstate_check_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RDIR = type { i32 }

@proc_acpi_battery_path = common dso_local global i32 0, align 4
@proc_acpi_ac_adapter_path = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_NO_SOURCE = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_CHARGING = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_CHARGED = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_ON_POWER_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @frontend_unix_powerstate_check_acpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frontend_unix_powerstate_check_acpi(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.RDIR*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @proc_acpi_battery_path, align 4
  %13 = call %struct.RDIR* @retro_opendir(i32 %12)
  store %struct.RDIR* %13, %struct.RDIR** %11, align 8
  %14 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %15 = icmp ne %struct.RDIR* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

17:                                               ; preds = %3
  %18 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %19 = call i64 @retro_dirent_error(%struct.RDIR* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %23 = call i32 @retro_closedir(%struct.RDIR* %22)
  store i32 0, i32* %4, align 4
  br label %78

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %29, %24
  %26 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %27 = call i64 @retro_readdir(%struct.RDIR* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %31 = call i32 @retro_dirent_get_name(%struct.RDIR* %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @check_proc_acpi_battery(i32 %31, i32* %8, i32* %10, i32* %32, i32* %33)
  br label %25

35:                                               ; preds = %25
  %36 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %37 = call i32 @retro_closedir(%struct.RDIR* %36)
  %38 = load i32, i32* @proc_acpi_ac_adapter_path, align 4
  %39 = call %struct.RDIR* @retro_opendir(i32 %38)
  store %struct.RDIR* %39, %struct.RDIR** %11, align 8
  %40 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %41 = icmp ne %struct.RDIR* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %78

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %48, %43
  %45 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %46 = call i64 @retro_readdir(%struct.RDIR* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %50 = call i32 @retro_dirent_get_name(%struct.RDIR* %49)
  %51 = call i32 @check_proc_acpi_ac_adapter(i32 %50, i32* %9)
  br label %44

52:                                               ; preds = %44
  %53 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %54 = call i32 @retro_closedir(%struct.RDIR* %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @FRONTEND_POWERSTATE_NO_SOURCE, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %77

60:                                               ; preds = %52
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @FRONTEND_POWERSTATE_CHARGING, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  br label %76

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @FRONTEND_POWERSTATE_CHARGED, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  br label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @FRONTEND_POWERSTATE_ON_POWER_SOURCE, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %63
  br label %77

77:                                               ; preds = %76, %57
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %42, %21, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.RDIR* @retro_opendir(i32) #1

declare dso_local i64 @retro_dirent_error(%struct.RDIR*) #1

declare dso_local i32 @retro_closedir(%struct.RDIR*) #1

declare dso_local i64 @retro_readdir(%struct.RDIR*) #1

declare dso_local i32 @check_proc_acpi_battery(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @retro_dirent_get_name(%struct.RDIR*) #1

declare dso_local i32 @check_proc_acpi_ac_adapter(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
