; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_routines.c_ml_entropy_collect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_routines.c_ml_entropy_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@master_cpu = common dso_local global i64 0, align 8
@EntropyData = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENTROPY_BUFFER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ml_entropy_collect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = call i64 (...) @cpu_number()
  %5 = load i64, i64* @master_cpu, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @EntropyData, i32 0, i32 0), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @EntropyData, i32 0, i32 1), align 8
  %11 = sub nsw i64 %9, %10
  %12 = load i64, i64* @ENTROPY_BUFFER_SIZE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @EntropyData, i32 0, i32 1), align 8
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @EntropyData, i32 0, i32 0), align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %3, align 8
  br label %21

17:                                               ; preds = %0
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @EntropyData, i32 0, i32 0), align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @EntropyData, i32 0, i32 0), align 8
  %20 = inttoptr i64 %18 to i32*
  store i32* %20, i32** %3, align 8
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @rdtsc_nofence(i32 %22, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ror32(i32 %26, i32 9)
  %28 = load i32, i32* %1, align 4
  %29 = xor i32 %27, %28
  %30 = load i32*, i32** %3, align 8
  store i32 %29, i32* %30, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @cpu_number(...) #1

declare dso_local i32 @rdtsc_nofence(i32, i32) #1

declare dso_local i32 @ror32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
