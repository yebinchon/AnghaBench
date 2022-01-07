; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Lock.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32 }
%struct._lck_dev = type { i64, i32, i64 }

@eximap = common dso_local global %struct.TYPE_4__* null, align 8
@EXI_FLAG_LOCKED = common dso_local global i32 0, align 4
@_lckdev_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EXI_Lock(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._lck_dev*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eximap, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @_CPU_ISR_Disable(i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @EXI_FLAG_LOCKED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %22
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  %31 = shl i32 1, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %25
  %35 = call i64 @__lwp_queue_getI(i32* @_lckdev_queue)
  %36 = inttoptr i64 %35 to %struct._lck_dev*
  store %struct._lck_dev* %36, %struct._lck_dev** %9, align 8
  %37 = load %struct._lck_dev*, %struct._lck_dev** %9, align 8
  %38 = icmp ne %struct._lck_dev* %37, null
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 1, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i64, i64* %6, align 8
  %52 = load %struct._lck_dev*, %struct._lck_dev** %9, align 8
  %53 = getelementptr inbounds %struct._lck_dev, %struct._lck_dev* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct._lck_dev*, %struct._lck_dev** %9, align 8
  %56 = getelementptr inbounds %struct._lck_dev, %struct._lck_dev* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load %struct._lck_dev*, %struct._lck_dev** %9, align 8
  %60 = getelementptr inbounds %struct._lck_dev, %struct._lck_dev* %59, i32 0, i32 1
  %61 = call i32 @__lwp_queue_appendI(i32* %58, i32* %60)
  br label %62

62:                                               ; preds = %39, %34
  br label %63

63:                                               ; preds = %62, %25, %22
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @_CPU_ISR_Restore(i32 %64)
  store i64 0, i64* %4, align 8
  br label %80

66:                                               ; preds = %3
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @EXI_FLAG_LOCKED, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = call i32 @__exi_setinterrupts(i64 %75, %struct.TYPE_4__* %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @_CPU_ISR_Restore(i32 %78)
  store i64 1, i64* %4, align 8
  br label %80

80:                                               ; preds = %66, %63
  %81 = load i64, i64* %4, align 8
  ret i64 %81
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i64 @__lwp_queue_getI(i32*) #1

declare dso_local i32 @__lwp_queue_appendI(i32*, i32*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @__exi_setinterrupts(i64, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
