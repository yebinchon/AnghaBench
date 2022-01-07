; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_ipc_pset_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_pset.c_ipc_pset_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@IOT_PORT_SET = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_PORT_SET = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_pset_alloc(i32 %0, i32* %1, %struct.TYPE_3__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__** %2, %struct.TYPE_3__*** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IOT_PORT_SET, align 4
  %13 = load i32, i32* @MACH_PORT_TYPE_PORT_SET, align 4
  %14 = bitcast %struct.TYPE_3__** %8 to i32*
  %15 = call i64 @ipc_object_alloc(i32 %11, i32 %12, i32 %13, i32 0, i32* %9, i32* %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @KERN_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %10, align 8
  store i64 %20, i64* %4, align 8
  br label %33

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @ipc_mqueue_init(i32* %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @is_write_unlock(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %31, align 8
  %32 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %21, %19
  %34 = load i64, i64* %4, align 8
  ret i64 %34
}

declare dso_local i64 @ipc_object_alloc(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ipc_mqueue_init(i32*, i32) #1

declare dso_local i32 @is_write_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
