; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_space.c_ipc_space_clean.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_space.c_ipc_space_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@MACH_PORT_TYPE_NONE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_space_clean(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  br label %9

9:                                                ; preds = %48, %1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = call i32 @is_write_lock(%struct.TYPE_11__* %10)
  br label %12

12:                                               ; preds = %16, %9
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = call i64 @is_growing(%struct.TYPE_11__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = call i32 @is_write_sleep(%struct.TYPE_11__* %17)
  br label %12

19:                                               ; preds = %12
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = call i32 @is_active(%struct.TYPE_11__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = call i32 @is_write_unlock(%struct.TYPE_11__* %24)
  br label %67

26:                                               ; preds = %19
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %3, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %61, %26
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %39
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %6, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @IE_BITS_TYPE(i32 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @MACH_PORT_TYPE_NONE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %37
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @IE_BITS_GEN(i32 %52)
  %54 = call i32 @MACH_PORT_MAKE(i64 %49, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32 @ipc_right_destroy(%struct.TYPE_11__* %55, i32 %56, %struct.TYPE_12__* %57, i32 %58, i32 0)
  br label %9

60:                                               ; preds = %37
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %33

64:                                               ; preds = %33
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = call i32 @is_write_unlock(%struct.TYPE_11__* %65)
  br label %67

67:                                               ; preds = %64, %23
  ret void
}

declare dso_local i32 @is_write_lock(%struct.TYPE_11__*) #1

declare dso_local i64 @is_growing(%struct.TYPE_11__*) #1

declare dso_local i32 @is_write_sleep(%struct.TYPE_11__*) #1

declare dso_local i32 @is_active(%struct.TYPE_11__*) #1

declare dso_local i32 @is_write_unlock(%struct.TYPE_11__*) #1

declare dso_local i64 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @MACH_PORT_MAKE(i64, i32) #1

declare dso_local i32 @IE_BITS_GEN(i32) #1

declare dso_local i32 @ipc_right_destroy(%struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
