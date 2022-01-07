; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_unix.c_check_proc_acpi_sysfs_ac_adapter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_unix.c_check_proc_acpi_sysfs_ac_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@proc_acpi_sysfs_ac_adapter_path = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @check_proc_acpi_sysfs_ac_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_proc_acpi_sysfs_ac_adapter(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %9 = load i8*, i8** @proc_acpi_sysfs_ac_adapter_path, align 8
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %10, align 16
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @snprintf(i8* %11, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %15 = call i32 @filestream_exists(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %32

18:                                               ; preds = %2
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %20 = call i32 @filestream_read_file(i8* %19, i8** %7, i32* %6)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %32

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @strstr(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @free(i8* %30)
  br label %32

32:                                               ; preds = %29, %22, %17
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @filestream_exists(i8*) #1

declare dso_local i32 @filestream_read_file(i8*, i8**, i32*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
