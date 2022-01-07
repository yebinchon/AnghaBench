; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..frontenddriversplatform_unix.c_frontend_unix_powerstate_check_acpi_sysfs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..frontenddriversplatform_unix.c_frontend_unix_powerstate_check_acpi_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RDIR = type { i32 }

@proc_acpi_sysfs_battery_path = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"BAT\00", align 1
@proc_acpi_sysfs_ac_adapter_path = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_NO_SOURCE = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_CHARGING = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_CHARGED = common dso_local global i32 0, align 4
@FRONTEND_POWERSTATE_ON_POWER_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @frontend_unix_powerstate_check_acpi_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frontend_unix_powerstate_check_acpi_sysfs(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.RDIR*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @proc_acpi_sysfs_battery_path, align 4
  %14 = call %struct.RDIR* @retro_opendir(i32 %13)
  store %struct.RDIR* %14, %struct.RDIR** %11, align 8
  %15 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %16 = icmp ne %struct.RDIR* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %81

18:                                               ; preds = %3
  %19 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %20 = call i64 @retro_dirent_error(%struct.RDIR* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %81

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %42, %23
  %25 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %26 = call i64 @retro_readdir(%struct.RDIR* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %30 = call i8* @retro_dirent_get_name(%struct.RDIR* %29)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i8*, i8** %12, align 8
  %35 = call i64 @strstr(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8*, i8** %12, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @check_proc_acpi_sysfs_battery(i8* %38, i32* %8, i32* %10, i32* %39, i32* %40)
  br label %42

42:                                               ; preds = %37, %33, %28
  br label %24

43:                                               ; preds = %24
  %44 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %45 = call i32 @retro_closedir(%struct.RDIR* %44)
  %46 = load i32, i32* @proc_acpi_sysfs_ac_adapter_path, align 4
  %47 = call %struct.RDIR* @retro_opendir(i32 %46)
  store %struct.RDIR* %47, %struct.RDIR** %11, align 8
  %48 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %49 = icmp ne %struct.RDIR* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %52 = call i8* @retro_dirent_get_name(%struct.RDIR* %51)
  %53 = call i32 @check_proc_acpi_sysfs_ac_adapter(i8* %52, i32* %9)
  %54 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %55 = call i32 @retro_closedir(%struct.RDIR* %54)
  br label %57

56:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %50
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @FRONTEND_POWERSTATE_NO_SOURCE, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %80

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @FRONTEND_POWERSTATE_CHARGING, align 4
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  br label %79

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @FRONTEND_POWERSTATE_CHARGED, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  br label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @FRONTEND_POWERSTATE_ON_POWER_SOURCE, align 4
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %66
  br label %80

80:                                               ; preds = %79, %60
  store i32 1, i32* %4, align 4
  br label %88

81:                                               ; preds = %22, %17
  %82 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %83 = icmp ne %struct.RDIR* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.RDIR*, %struct.RDIR** %11, align 8
  %86 = call i32 @retro_closedir(%struct.RDIR* %85)
  br label %87

87:                                               ; preds = %84, %81
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %80
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.RDIR* @retro_opendir(i32) #1

declare dso_local i64 @retro_dirent_error(%struct.RDIR*) #1

declare dso_local i64 @retro_readdir(%struct.RDIR*) #1

declare dso_local i8* @retro_dirent_get_name(%struct.RDIR*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @check_proc_acpi_sysfs_battery(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @retro_closedir(%struct.RDIR*) #1

declare dso_local i32 @check_proc_acpi_sysfs_ac_adapter(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
