; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..frontenddriversplatform_unix.c_check_proc_acpi_ac_adapter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..frontenddriversplatform_unix.c_check_proc_acpi_ac_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@proc_acpi_ac_adapter_path = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@ACPI_VAL_ONLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @check_proc_acpi_ac_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_proc_acpi_ac_adapter(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i8*, i8** @proc_acpi_ac_adapter_path, align 8
  store i8* %13, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %14, align 16
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @snprintf(i8* %15, i32 1024, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %20 = call i32 @filestream_exists(i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %54

23:                                               ; preds = %2
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %25 = call i32 @filestream_read_file(i8* %24, i8** %7, i32* %11)
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %54

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8* %30, i8** %8, align 8
  br label %31

31:                                               ; preds = %46, %28
  %32 = call i64 @make_proc_acpi_key_val(i8** %8, i8** %9, i8** %10)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @djb2_calculate(i8* %35)
  store i64 %36, i64* %12, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @string_is_equal(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @ACPI_VAL_ONLINE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32*, i32** %4, align 8
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %40, %34
  br label %31

47:                                               ; preds = %31
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @free(i8* %51)
  br label %53

53:                                               ; preds = %50, %47
  store i8* null, i8** %7, align 8
  br label %54

54:                                               ; preds = %53, %27, %22
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @filestream_exists(i8*) #1

declare dso_local i32 @filestream_read_file(i8*, i8**, i32*) #1

declare dso_local i64 @make_proc_acpi_key_val(i8**, i8**, i8**) #1

declare dso_local i64 @djb2_calculate(i8*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
