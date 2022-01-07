; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_fifo.c_hb_buffer_pool_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_fifo.c_hb_buffer_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__**, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@buffers = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BUFFER_POOL_MAX_ELEMENTS = common dso_local global i32 0, align 4
@BUFFER_POOL_FIRST = common dso_local global i64 0, align 8
@BUFFER_POOL_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_buffer_pool_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @hb_lock_init()
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buffers, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buffers, i32 0, i32 2), align 8
  %3 = load i32, i32* @BUFFER_POOL_MAX_ELEMENTS, align 4
  %4 = mul nsw i32 %3, 10
  %5 = call i8* @hb_fifo_init(i32 %4, i32 1)
  %6 = bitcast i8* %5 to %struct.TYPE_3__*
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buffers, i32 0, i32 0), align 8
  %8 = load i64, i64* @BUFFER_POOL_FIRST, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %7, i64 %8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %9, align 8
  %10 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buffers, i32 0, i32 0), align 8
  %11 = load i64, i64* @BUFFER_POOL_FIRST, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %10, i64 %11
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 1024, i32* %14, align 4
  store i32 1, i32* %1, align 4
  br label %15

15:                                               ; preds = %29, %0
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @BUFFER_POOL_FIRST, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buffers, i32 0, i32 0), align 8
  %22 = load i64, i64* @BUFFER_POOL_FIRST, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %21, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buffers, i32 0, i32 0), align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %27
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %28, align 8
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load i64, i64* @BUFFER_POOL_FIRST, align 8
  %34 = add i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %56, %32
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @BUFFER_POOL_LAST, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i32, i32* @BUFFER_POOL_MAX_ELEMENTS, align 4
  %42 = call i8* @hb_fifo_init(i32 %41, i32 1)
  %43 = bitcast i8* %42 to %struct.TYPE_3__*
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buffers, i32 0, i32 0), align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %44, i64 %46
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %47, align 8
  %48 = load i32, i32* %1, align 4
  %49 = shl i32 1, %48
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @buffers, i32 0, i32 0), align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %50, i64 %52
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %1, align 4
  br label %36

59:                                               ; preds = %36
  ret void
}

declare dso_local i32 @hb_lock_init(...) #1

declare dso_local i8* @hb_fifo_init(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
