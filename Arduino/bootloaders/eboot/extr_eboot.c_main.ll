; ModuleID = '/home/carl/AnghaBench/Arduino/bootloaders/eboot/extr_eboot.c_main.c'
source_filename = "/home/carl/AnghaBench/Arduino/bootloaders/eboot/extr_eboot.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eboot_command = type { i64, i64* }

@ACTION_LOAD_APP = common dso_local global i64 0, align 8
@ACTION_COPY_RAW = common dso_local global i64 0, align 8
@SWRST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.eboot_command, align 8
  store i32 9, i32* %1, align 4
  %3 = call i32 @print_version(i32 0)
  %4 = call i64 @eboot_command_read(%struct.eboot_command* %2)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i32 (...) @eboot_command_clear()
  %8 = call i32 @ets_putc(i8 signext 64)
  br label %16

9:                                                ; preds = %0
  %10 = load i64, i64* @ACTION_LOAD_APP, align 8
  %11 = getelementptr inbounds %struct.eboot_command, %struct.eboot_command* %2, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.eboot_command, %struct.eboot_command* %2, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  store i64 0, i64* %14, align 8
  %15 = call i32 @ets_putc(i8 signext 126)
  br label %16

16:                                               ; preds = %9, %6
  %17 = getelementptr inbounds %struct.eboot_command, %struct.eboot_command* %2, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ACTION_COPY_RAW, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %16
  %22 = call i32 @ets_putc(i8 signext 99)
  %23 = call i32 @ets_putc(i8 signext 112)
  %24 = call i32 @ets_putc(i8 signext 58)
  %25 = call i32 (...) @ets_wdt_disable()
  %26 = getelementptr inbounds %struct.eboot_command, %struct.eboot_command* %2, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.eboot_command, %struct.eboot_command* %2, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.eboot_command, %struct.eboot_command* %2, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @copy_raw(i64 %29, i64 %33, i64 %37)
  store i32 %38, i32* %1, align 4
  %39 = call i32 (...) @ets_wdt_enable()
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 48, %40
  %42 = trunc i32 %41 to i8
  %43 = call i32 @ets_putc(i8 signext %42)
  %44 = call i32 @ets_putc(i8 signext 10)
  %45 = load i32, i32* %1, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %21
  %48 = load i64, i64* @ACTION_LOAD_APP, align 8
  %49 = getelementptr inbounds %struct.eboot_command, %struct.eboot_command* %2, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.eboot_command, %struct.eboot_command* %2, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.eboot_command, %struct.eboot_command* %2, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  store i64 %53, i64* %56, align 8
  br label %57

57:                                               ; preds = %47, %21
  br label %58

58:                                               ; preds = %57, %16
  %59 = getelementptr inbounds %struct.eboot_command, %struct.eboot_command* %2, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ACTION_LOAD_APP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = call i32 @ets_putc(i8 signext 108)
  %65 = call i32 @ets_putc(i8 signext 100)
  %66 = call i32 @ets_putc(i8 signext 10)
  %67 = getelementptr inbounds %struct.eboot_command, %struct.eboot_command* %2, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @load_app_from_flash_raw(i64 %70)
  store i32 %71, i32* %1, align 4
  %72 = call i32 @ets_putc(i8 signext 101)
  %73 = call i32 @ets_putc(i8 signext 58)
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 48, %74
  %76 = trunc i32 %75 to i8
  %77 = call i32 @ets_putc(i8 signext %76)
  %78 = call i32 @ets_putc(i8 signext 10)
  br label %79

79:                                               ; preds = %63, %58
  %80 = load i32, i32* %1, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @SWRST, align 4
  br label %84

84:                                               ; preds = %82, %79
  br label %85

85:                                               ; preds = %84, %85
  br label %85
}

declare dso_local i32 @print_version(i32) #1

declare dso_local i64 @eboot_command_read(%struct.eboot_command*) #1

declare dso_local i32 @eboot_command_clear(...) #1

declare dso_local i32 @ets_putc(i8 signext) #1

declare dso_local i32 @ets_wdt_disable(...) #1

declare dso_local i32 @copy_raw(i64, i64, i64) #1

declare dso_local i32 @ets_wdt_enable(...) #1

declare dso_local i32 @load_app_from_flash_raw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
