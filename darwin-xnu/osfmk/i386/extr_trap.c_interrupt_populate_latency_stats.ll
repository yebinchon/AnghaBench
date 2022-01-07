; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_interrupt_populate_latency_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_trap.c_interrupt_populate_latency_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@real_ncpus = common dso_local global i64 0, align 8
@cpu_data_ptr = common dso_local global %struct.TYPE_2__** null, align 8
@.str = private unnamed_addr constant [17 x i8] c"0x%x 0x%x 0x%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interrupt_populate_latency_stats(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 -1, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @real_ncpus, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @cpu_data_ptr, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %14, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %13, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %12
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @cpu_data_ptr, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %21, %12
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %8

33:                                               ; preds = %8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @real_ncpus, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @cpu_data_ptr, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @cpu_data_ptr, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @snprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %46, i64 %52)
  br label %54

54:                                               ; preds = %37, %33
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
