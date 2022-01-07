; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu_common.c_cpu_data_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu_common.c_cpu_data_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.processor* }
%struct.processor = type { i32 }

@BootCpuData = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@kernel_map = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_CPU = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"cpu_data_alloc() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @cpu_data_alloc(i64 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.TYPE_5__* @BootCpuData, %struct.TYPE_5__** %4, align 8
  br label %22

8:                                                ; preds = %1
  %9 = load i32, i32* @kernel_map, align 4
  %10 = bitcast %struct.TYPE_5__** %4 to i32*
  %11 = load i32, i32* @VM_KERN_MEMORY_CPU, align 4
  %12 = call i64 @kmem_alloc(i32 %9, i32* %10, i32 8, i32 %11)
  %13 = load i64, i64* @KERN_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %34

16:                                               ; preds = %8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = bitcast %struct.TYPE_5__* %17 to i8*
  %19 = call i32 @bzero(i8* %18, i32 8)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = call i32 @cpu_stack_alloc(%struct.TYPE_5__* %20)
  br label %22

22:                                               ; preds = %16, %7
  %23 = load i64, i64* %3, align 8
  %24 = call %struct.processor* @cpu_processor_alloc(i64 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store %struct.processor* %24, %struct.processor** %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.processor*, %struct.processor** %28, align 8
  %30 = icmp eq %struct.processor* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %34

32:                                               ; preds = %22
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %2, align 8
  br label %36

34:                                               ; preds = %31, %15
  %35 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %37
}

declare dso_local i64 @kmem_alloc(i32, i32*, i32, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @cpu_stack_alloc(%struct.TYPE_5__*) #1

declare dso_local %struct.processor* @cpu_processor_alloc(i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
