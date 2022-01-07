; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_delete_buffers.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_delete_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@kd_bufs = common dso_local global %struct.TYPE_6__* null, align 8
@n_storage_buffers = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@kdcopybuf = common dso_local global i32* null, align 8
@KDCOPYBUF_SIZE = common dso_local global i32 0, align 4
@KDS_PTR_NULL = common dso_local global i32 0, align 4
@kd_ctrl_page = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@kdbip = common dso_local global i32* null, align 8
@KDBG_BUFINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @delete_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_buffers() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kd_bufs, align 8
  %3 = icmp ne %struct.TYPE_6__* %2, null
  br i1 %3, label %4, label %47

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %35, %4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @n_storage_buffers, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kd_bufs, align 8
  %11 = load i32, i32* %1, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %9
  %18 = load i32, i32* @kernel_map, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kd_bufs, align 8
  %20 = load i32, i32* %1, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kd_bufs, align 8
  %27 = load i32, i32* %1, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @kmem_free(i32 %18, i32 %25, i32 %32)
  br label %34

34:                                               ; preds = %17, %9
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %1, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %5

38:                                               ; preds = %5
  %39 = load i32, i32* @kernel_map, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kd_bufs, align 8
  %41 = ptrtoint %struct.TYPE_6__* %40 to i32
  %42 = load i32, i32* @n_storage_buffers, align 4
  %43 = zext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @kmem_free(i32 %39, i32 %41, i32 %45)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @kd_bufs, align 8
  store i32 0, i32* @n_storage_buffers, align 4
  br label %47

47:                                               ; preds = %38, %0
  %48 = load i32*, i32** @kdcopybuf, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* @kernel_map, align 4
  %52 = load i32*, i32** @kdcopybuf, align 8
  %53 = ptrtoint i32* %52 to i32
  %54 = load i32, i32* @KDCOPYBUF_SIZE, align 4
  %55 = call i32 @kmem_free(i32 %51, i32 %53, i32 %54)
  store i32* null, i32** @kdcopybuf, align 8
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* @KDS_PTR_NULL, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 3, i32 0), align 8
  %58 = load i32*, i32** @kdbip, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* @kernel_map, align 4
  %62 = load i32*, i32** @kdbip, align 8
  %63 = ptrtoint i32* %62 to i32
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @kmem_free(i32 %61, i32 %63, i32 %67)
  store i32* null, i32** @kdbip, align 8
  br label %69

69:                                               ; preds = %60, %56
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 8
  %70 = load i32, i32* @KDBG_BUFINIT, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 1), align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 1), align 4
  ret void
}

declare dso_local i32 @kmem_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
