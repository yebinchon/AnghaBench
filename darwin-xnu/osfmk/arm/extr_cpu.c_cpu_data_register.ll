; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu.c_cpu_data_register.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu.c_cpu_data_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@real_ncpus = common dso_local global i64 0, align 8
@MAX_CPUS = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@CpuDataEntries = common dso_local global %struct.TYPE_5__* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_data_register(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = call i32 @OSIncrementAtomic(i32* bitcast (i64* @real_ncpus to i32*))
  store i32 %5, i32* %4, align 4
  %6 = load i64, i64* @real_ncpus, align 8
  %7 = load i64, i64* @MAX_CPUS, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %10, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CpuDataEntries, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = ptrtoint %struct.TYPE_4__* %21 to i32
  %23 = call i64 @ml_vtophys(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CpuDataEntries, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i8* %24, i8** %29, align 8
  %30 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %11, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i64 @ml_vtophys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
