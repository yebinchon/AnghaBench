; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_translate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_object.c_ipc_object_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@MACH_PORT_TYPE_NONE = common dso_local global i32 0, align 4
@KERN_INVALID_RIGHT = common dso_local global i64 0, align 8
@IO_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_object_translate(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @ipc_right_lookup_read(i32 %13, i32 %14, %struct.TYPE_3__** %10)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* @KERN_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i64, i64* %12, align 8
  store i64 %20, i64* %5, align 8
  br label %50

21:                                               ; preds = %4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @MACH_PORT_TYPE(i32 %25)
  %27 = and i32 %24, %26
  %28 = load i32, i32* @MACH_PORT_TYPE_NONE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @is_read_unlock(i32 %31)
  %33 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %33, i64* %5, align 8
  br label %50

34:                                               ; preds = %21
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @IO_NULL, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @io_lock(i64 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @is_read_unlock(i32 %45)
  %47 = load i64, i64* %11, align 8
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %34, %30, %19
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i64 @ipc_right_lookup_read(i32, i32, %struct.TYPE_3__**) #1

declare dso_local i32 @MACH_PORT_TYPE(i32) #1

declare dso_local i32 @is_read_unlock(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @io_lock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
