; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Unlock.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct._lck_dev = type { i32, i32 (i64, i32)*, i32 }

@eximap = common dso_local global %struct.TYPE_4__* null, align 8
@EXI_FLAG_LOCKED = common dso_local global i32 0, align 4
@_lckdev_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EXI_Unlock(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32 (i64, i32)*, align 8
  %7 = alloca %struct._lck_dev*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eximap, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @_CPU_ISR_Disable(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EXI_FLAG_LOCKED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @_CPU_ISR_Restore(i32 %21)
  store i64 0, i64* %2, align 8
  br label %75

23:                                               ; preds = %1
  %24 = load i32, i32* @EXI_FLAG_LOCKED, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = call i32 @__exi_setinterrupts(i64 %30, %struct.TYPE_4__* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @_CPU_ISR_Restore(i32 %38)
  store i64 1, i64* %2, align 8
  br label %75

40:                                               ; preds = %23
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = call i64 @__lwp_queue_getI(i32* %46)
  %48 = inttoptr i64 %47 to %struct._lck_dev*
  store %struct._lck_dev* %48, %struct._lck_dev** %7, align 8
  %49 = load %struct._lck_dev*, %struct._lck_dev** %7, align 8
  %50 = getelementptr inbounds %struct._lck_dev, %struct._lck_dev* %49, i32 0, i32 2
  %51 = call i32 @__lwp_queue_appendI(i32* @_lckdev_queue, i32* %50)
  %52 = load %struct._lck_dev*, %struct._lck_dev** %7, align 8
  %53 = getelementptr inbounds %struct._lck_dev, %struct._lck_dev* %52, i32 0, i32 1
  %54 = load i32 (i64, i32)*, i32 (i64, i32)** %53, align 8
  store i32 (i64, i32)* %54, i32 (i64, i32)** %6, align 8
  %55 = load %struct._lck_dev*, %struct._lck_dev** %7, align 8
  %56 = getelementptr inbounds %struct._lck_dev, %struct._lck_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 1, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32 (i64, i32)*, i32 (i64, i32)** %6, align 8
  %66 = icmp ne i32 (i64, i32)* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %40
  %68 = load i32 (i64, i32)*, i32 (i64, i32)** %6, align 8
  %69 = load i64, i64* %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 %68(i64 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %40
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @_CPU_ISR_Restore(i32 %73)
  store i64 1, i64* %2, align 8
  br label %75

75:                                               ; preds = %72, %37, %20
  %76 = load i64, i64* %2, align 8
  ret i64 %76
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @__exi_setinterrupts(i64, %struct.TYPE_4__*) #1

declare dso_local i64 @__lwp_queue_getI(i32*) #1

declare dso_local i32 @__lwp_queue_appendI(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
