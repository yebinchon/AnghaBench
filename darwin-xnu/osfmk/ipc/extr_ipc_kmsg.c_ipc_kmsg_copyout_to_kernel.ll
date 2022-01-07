; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_to_kernel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_to_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@MACH_PORT_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_kmsg_copyout_to_kernel(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @MACH_MSGH_BITS_REMOTE(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @MACH_MSGH_BITS_LOCAL(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @IO_VALID(i64 %35)
  %37 = call i32 @assert(i32 %36)
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @io_lock(i64 %38)
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @io_active(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ipc_object_copyout_dest(i32 %44, i64 %45, i32 %46, i32* %9)
  br label %54

48:                                               ; preds = %2
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @io_unlock(i64 %49)
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @io_release(i64 %51)
  %53 = load i32, i32* @MACH_PORT_DEAD, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @CAST_MACH_PORT_TO_NAME(i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @MACH_MSGH_BITS_OTHER(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @MACH_MSGH_BITS(i32 %63, i32 %64)
  %66 = or i32 %62, %65
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i8* @CAST_MACH_NAME_TO_PORT(i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i8* %72, i8** %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i8* @CAST_MACH_NAME_TO_PORT(i32 %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i8* %78, i8** %82, align 8
  ret void
}

declare dso_local i32 @MACH_MSGH_BITS_REMOTE(i32) #1

declare dso_local i32 @MACH_MSGH_BITS_LOCAL(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IO_VALID(i64) #1

declare dso_local i32 @io_lock(i64) #1

declare dso_local i64 @io_active(i64) #1

declare dso_local i32 @ipc_object_copyout_dest(i32, i64, i32, i32*) #1

declare dso_local i32 @io_unlock(i64) #1

declare dso_local i32 @io_release(i64) #1

declare dso_local i32 @CAST_MACH_PORT_TO_NAME(i64) #1

declare dso_local i32 @MACH_MSGH_BITS_OTHER(i32) #1

declare dso_local i32 @MACH_MSGH_BITS(i32, i32) #1

declare dso_local i8* @CAST_MACH_NAME_TO_PORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
