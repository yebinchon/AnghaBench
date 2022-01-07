; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_translate_two.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_translate_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_NONE = common dso_local global i32 0, align 4
@kGUARD_EXC_INVALID_RIGHT = common dso_local global i32 0, align 4
@KERN_INVALID_RIGHT = common dso_local global i64 0, align 8
@IO_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_object_translate_two(i32 %0, i32 %1, i32 %2, i64* %3, i32 %4, i32 %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i64 @ipc_right_lookup_two_read(i32 %20, i32 %21, %struct.TYPE_4__** %16, i32 %22, %struct.TYPE_4__** %17)
  store i64 %23, i64* %19, align 8
  %24 = load i64, i64* %19, align 8
  %25 = load i64, i64* @KERN_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i64, i64* %19, align 8
  store i64 %28, i64* %8, align 8
  br label %89

29:                                               ; preds = %7
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @MACH_PORT_TYPE(i32 %33)
  %35 = and i32 %32, %34
  %36 = load i32, i32* @MACH_PORT_TYPE_NONE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @is_read_unlock(i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @kGUARD_EXC_INVALID_RIGHT, align 4
  %43 = call i32 @mach_port_guard_exception(i32 %41, i32 0, i32 0, i32 %42)
  %44 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %44, i64* %8, align 8
  br label %89

45:                                               ; preds = %29
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @MACH_PORT_TYPE(i32 %49)
  %51 = and i32 %48, %50
  %52 = load i32, i32* @MACH_PORT_TYPE_NONE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @is_read_unlock(i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @kGUARD_EXC_INVALID_RIGHT, align 4
  %59 = call i32 @mach_port_guard_exception(i32 %57, i32 0, i32 0, i32 %58)
  %60 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %60, i64* %8, align 8
  br label %89

61:                                               ; preds = %45
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %18, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load i64, i64* @IO_NULL, align 8
  %67 = icmp ne i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i64, i64* %18, align 8
  %71 = call i32 @io_lock(i64 %70)
  %72 = load i64, i64* %18, align 8
  %73 = load i64*, i64** %12, align 8
  store i64 %72, i64* %73, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %18, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* @IO_NULL, align 8
  %79 = icmp ne i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i64, i64* %18, align 8
  %83 = call i32 @io_lock(i64 %82)
  %84 = load i64, i64* %18, align 8
  %85 = load i64*, i64** %15, align 8
  store i64 %84, i64* %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @is_read_unlock(i32 %86)
  %88 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %61, %54, %38, %27
  %90 = load i64, i64* %8, align 8
  ret i64 %90
}

declare dso_local i64 @ipc_right_lookup_two_read(i32, i32, %struct.TYPE_4__**, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @MACH_PORT_TYPE(i32) #1

declare dso_local i32 @is_read_unlock(i32) #1

declare dso_local i32 @mach_port_guard_exception(i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @io_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
