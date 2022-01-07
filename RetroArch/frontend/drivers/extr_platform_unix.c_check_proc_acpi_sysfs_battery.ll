; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_unix.c_check_proc_acpi_sysfs_battery.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_unix.c_check_proc_acpi_sysfs_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@proc_acpi_sysfs_battery_path = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Discharging\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Charging\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"capacity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32*, i32*)* @check_proc_acpi_sysfs_battery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_proc_acpi_sysfs_battery(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %25 = load i8*, i8** @proc_acpi_sysfs_battery_path, align 8
  store i8* %25, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %26, align 16
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @snprintf(i8* %27, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %32 = call i32 @filestream_exists(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %5
  br label %84

35:                                               ; preds = %5
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %37 = call i32 @filestream_read_file(i8* %36, i8** %13, i32* %20)
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %84

40:                                               ; preds = %35
  %41 = load i8*, i8** %13, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  %44 = load i8*, i8** %13, align 8
  %45 = call i64 @strstr(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  store i32 1, i32* %48, align 4
  br label %64

49:                                               ; preds = %43
  %50 = load i8*, i8** %13, align 8
  %51 = call i64 @strstr(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  store i32 1, i32* %54, align 4
  %55 = load i32*, i32** %8, align 8
  store i32 1, i32* %55, align 4
  br label %63

56:                                               ; preds = %49
  %57 = load i8*, i8** %13, align 8
  %58 = call i64 @strstr(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32*, i32** %7, align 8
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %62, %53
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @free(i8* %65)
  br label %67

67:                                               ; preds = %64, %40
  store i8* null, i8** %13, align 8
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @snprintf(i8* %68, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %69, i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %73 = call i32 @filestream_read_file(i8* %72, i8** %13, i32* %20)
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %81

76:                                               ; preds = %67
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @atoi(i8* %77)
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32*, i32** %10, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %75
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @free(i8* %82)
  store i8* null, i8** %13, align 8
  br label %84

84:                                               ; preds = %81, %39, %34
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @filestream_exists(i8*) #1

declare dso_local i32 @filestream_read_file(i8*, i8**, i32*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
