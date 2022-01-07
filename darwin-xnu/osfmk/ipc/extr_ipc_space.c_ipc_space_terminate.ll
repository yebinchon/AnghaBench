; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_space.c_ipc_space_terminate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_space.c_ipc_space_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@IS_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@MACH_PORT_TYPE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_space_terminate(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** @IS_NULL, align 8
  %11 = icmp ne %struct.TYPE_15__* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = call i32 @is_write_lock(%struct.TYPE_15__* %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = call i32 @is_active(%struct.TYPE_15__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = call i32 @is_write_unlock(%struct.TYPE_15__* %20)
  br label %84

22:                                               ; preds = %1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = call i32 @is_mark_inactive(%struct.TYPE_15__* %23)
  br label %25

25:                                               ; preds = %29, %22
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = call i64 @is_growing(%struct.TYPE_15__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %31 = call i32 @is_write_sleep(%struct.TYPE_15__* %30)
  br label %25

32:                                               ; preds = %25
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = call i32 @is_write_unlock(%struct.TYPE_15__* %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %3, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %41

41:                                               ; preds = %68, %32
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %41
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i64 %47
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %6, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @IE_BITS_TYPE(i32 %51)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @MACH_PORT_TYPE_NONE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %45
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @IE_BITS_GEN(i32 %60)
  %62 = call i32 @MACH_PORT_MAKE(i64 %57, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = call i32 @ipc_right_terminate(%struct.TYPE_15__* %63, i32 %64, %struct.TYPE_16__* %65)
  br label %67

67:                                               ; preds = %56, %45
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %41

71:                                               ; preds = %41
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %77 = call i32 @it_entries_free(i64 %75, %struct.TYPE_16__* %76)
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %83 = call i32 @is_release(%struct.TYPE_15__* %82)
  br label %84

84:                                               ; preds = %71, %19
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_write_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @is_active(%struct.TYPE_15__*) #1

declare dso_local i32 @is_write_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @is_mark_inactive(%struct.TYPE_15__*) #1

declare dso_local i64 @is_growing(%struct.TYPE_15__*) #1

declare dso_local i32 @is_write_sleep(%struct.TYPE_15__*) #1

declare dso_local i64 @IE_BITS_TYPE(i32) #1

declare dso_local i32 @MACH_PORT_MAKE(i64, i32) #1

declare dso_local i32 @IE_BITS_GEN(i32) #1

declare dso_local i32 @ipc_right_terminate(%struct.TYPE_15__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @it_entries_free(i64, %struct.TYPE_16__*) #1

declare dso_local i32 @is_release(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
