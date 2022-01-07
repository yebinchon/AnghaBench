; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_NMIPI_panic.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_NMIPI_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@NMI_panic_reason = common dso_local global i32 0, align 4
@real_ncpus = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LockTimeOut = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NMIPI_panic(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @TRUE, align 4
  %9 = call i32 @NMIPI_enable(i32 %8)
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* @NMI_panic_reason, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @real_ncpus, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %28

21:                                               ; preds = %15
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.TYPE_2__* @cpu_datap(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @cpu_NMI_interrupt(i32 %26)
  br label %28

28:                                               ; preds = %21, %20
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %11

33:                                               ; preds = %11
  %34 = call i64 (...) @mach_absolute_time()
  %35 = load i64, i64* @LockTimeOut, align 8
  %36 = add nsw i64 %34, %35
  store i64 %36, i64* %7, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %63, %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @real_ncpus, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %63

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %60, %47
  %49 = load i32, i32* %5, align 4
  %50 = call %struct.TYPE_2__* @cpu_datap(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = call i64 (...) @mach_absolute_time()
  %56 = load i64, i64* %7, align 8
  %57 = icmp slt i64 %55, %56
  br label %58

58:                                               ; preds = %54, %48
  %59 = phi i1 [ false, %48 ], [ %57, %54 ]
  br i1 %59, label %60, label %62

60:                                               ; preds = %58
  %61 = call i32 (...) @cpu_pause()
  br label %48

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = shl i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %37

68:                                               ; preds = %37
  ret void
}

declare dso_local i32 @NMIPI_enable(i32) #1

declare dso_local %struct.TYPE_2__* @cpu_datap(i32) #1

declare dso_local i32 @cpu_NMI_interrupt(i32) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @cpu_pause(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
