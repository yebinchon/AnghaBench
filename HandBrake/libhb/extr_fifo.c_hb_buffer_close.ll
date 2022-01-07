; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_fifo.c_hb_buffer_close.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_fifo.c_hb_buffer_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i64, %struct.TYPE_25__*, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }

@buffers = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_buffer_close(%struct.TYPE_25__** %0) #0 {
  %2 = alloca %struct.TYPE_25__**, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_25__** %0, %struct.TYPE_25__*** %2, align 8
  %6 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %2, align 8
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %7, %struct.TYPE_25__** %3, align 8
  br label %8

8:                                                ; preds = %58, %32, %1
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %10 = icmp ne %struct.TYPE_25__* %9, null
  br i1 %10, label %11, label %62

11:                                               ; preds = %8
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  store %struct.TYPE_25__* %14, %struct.TYPE_25__** %4, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32* @size_to_pool(i64 %17)
  store i32* %18, i32** %5, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 2
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %11
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @hb_fifo_is_full(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %35 = call i32 @hb_fifo_push_head(i32* %33, %struct.TYPE_25__* %34)
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %36, %struct.TYPE_25__** %3, align 8
  br label %8

37:                                               ; preds = %28, %23, %11
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @av_free(i64 %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @buffers, i32 0, i32 0), align 4
  %48 = call i32 @hb_lock(i32 %47)
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @buffers, i32 0, i32 1), align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @buffers, i32 0, i32 1), align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @buffers, i32 0, i32 0), align 4
  %57 = call i32 @hb_unlock(i32 %56)
  br label %58

58:                                               ; preds = %42, %37
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %60 = call i32 @free(%struct.TYPE_25__* %59)
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_25__* %61, %struct.TYPE_25__** %3, align 8
  br label %8

62:                                               ; preds = %8
  %63 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %2, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %63, align 8
  ret void
}

declare dso_local i32* @size_to_pool(i64) #1

declare dso_local i32 @hb_fifo_is_full(i32*) #1

declare dso_local i32 @hb_fifo_push_head(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @av_free(i64) #1

declare dso_local i32 @hb_lock(i32) #1

declare dso_local i32 @hb_unlock(i32) #1

declare dso_local i32 @free(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
