; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_kprintf.c_PE_init_kprintf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_kprintf.c_PE_init_kprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PE_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Platform Expert not initialized\00", align 1
@TRUE = common dso_local global i32 0, align 4
@kprintf_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@DB_KPRT = common dso_local global i32 0, align 4
@disable_serial_output = common dso_local global i32 0, align 4
@pal_serial_putc = common dso_local global i32 0, align 4
@PE_kputc = common dso_local global i32 0, align 4
@cnputc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PE_init_kprintf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PE_state, i32 0, i32 0), align 4
  %6 = load i32, i32* @FALSE, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %4, align 4
  %15 = call i32 @simple_lock_init(i32* @kprintf_lock, i32 0)
  %16 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %3, i32 4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @DB_KPRT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %18
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @disable_serial_output, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = call i64 (...) @pal_serial_init()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @pal_serial_putc, align 4
  store i32 %36, i32* @PE_kputc, align 4
  br label %39

37:                                               ; preds = %32, %26
  %38 = load i32, i32* @cnputc, align 4
  store i32 %38, i32* @PE_kputc, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* @disable_serial_output, align 4
  br label %41

41:                                               ; preds = %39, %10
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @simple_lock_init(i32*, i32) #1

declare dso_local i64 @PE_parse_boot_argn(i8*, i32*, i32) #1

declare dso_local i64 @pal_serial_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
