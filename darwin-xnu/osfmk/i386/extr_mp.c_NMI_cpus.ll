; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_NMI_cpus.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_NMI_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@real_ncpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"NMI_cpus() timeout cpu %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NMI_cpus() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i8*, i8** @FALSE, align 8
  %5 = call i8* @ml_set_interrupts_enabled(i8* %4)
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** @TRUE, align 8
  %7 = call i32 @NMIPI_enable(i8* %6)
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %56, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @real_ncpus, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @cpu_is_running(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %56

17:                                               ; preds = %12
  %18 = load i8*, i8** @FALSE, align 8
  %19 = load i32, i32* %1, align 4
  %20 = call %struct.TYPE_2__* @cpu_datap(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @cpu_NMI_interrupt(i32 %22)
  %24 = call i32 (...) @machine_timeout_suspended()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = call i32 (...) @rdtsc64()
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 10000000000
  br label %31

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i64 [ %29, %26 ], [ -1, %30 ]
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %50, %31
  %35 = load i32, i32* %1, align 4
  %36 = call %struct.TYPE_2__* @cpu_datap(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = call i32 (...) @handle_pending_TLB_flushes()
  %43 = call i32 (...) @cpu_pause()
  %44 = call i32 (...) @rdtsc64()
  %45 = load i32, i32* %3, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %41
  br label %34

51:                                               ; preds = %34
  %52 = load i8*, i8** @FALSE, align 8
  %53 = load i32, i32* %1, align 4
  %54 = call %struct.TYPE_2__* @cpu_datap(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  br label %56

56:                                               ; preds = %51, %16
  %57 = load i32, i32* %1, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %8

59:                                               ; preds = %8
  %60 = load i8*, i8** @FALSE, align 8
  %61 = call i32 @NMIPI_enable(i8* %60)
  %62 = load i8*, i8** %2, align 8
  %63 = call i8* @ml_set_interrupts_enabled(i8* %62)
  ret void
}

declare dso_local i8* @ml_set_interrupts_enabled(i8*) #1

declare dso_local i32 @NMIPI_enable(i8*) #1

declare dso_local i32 @cpu_is_running(i32) #1

declare dso_local %struct.TYPE_2__* @cpu_datap(i32) #1

declare dso_local i32 @cpu_NMI_interrupt(i32) #1

declare dso_local i32 @machine_timeout_suspended(...) #1

declare dso_local i32 @rdtsc64(...) #1

declare dso_local i32 @handle_pending_TLB_flushes(...) #1

declare dso_local i32 @cpu_pause(...) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
