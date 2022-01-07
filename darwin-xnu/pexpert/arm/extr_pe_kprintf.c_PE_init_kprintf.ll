; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_kprintf.c_PE_init_kprintf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_kprintf.c_PE_init_kprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@PE_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Platform Expert not initialized\00", align 1
@kprintf_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@DB_KPRT = common dso_local global i32 0, align 4
@disable_serial_output = common dso_local global i64 0, align 8
@serial_putc = common dso_local global i32 0, align 4
@PE_kputc = common dso_local global i32 0, align 4
@cnputc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PE_init_kprintf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PE_state, i32 0, i32 0), align 8
  %5 = load i64, i64* @FALSE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %9
  %13 = call i32 @simple_lock_init(i32* @kprintf_lock, i32 0)
  %14 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %3, i32 4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @DB_KPRT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* @disable_serial_output, align 8
  br label %23

23:                                               ; preds = %21, %16
  br label %24

24:                                               ; preds = %23, %12
  %25 = call i64 (...) @serial_init()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @serial_putc, align 4
  store i32 %28, i32* @PE_kputc, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @cnputc, align 4
  store i32 %30, i32* @PE_kputc, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %31, %9
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @simple_lock_init(i32*, i32) #1

declare dso_local i64 @PE_parse_boot_argn(i8*, i32*, i32) #1

declare dso_local i64 @serial_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
