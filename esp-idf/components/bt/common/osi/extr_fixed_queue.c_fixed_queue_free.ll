; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_fixed_queue.c_fixed_queue_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_fixed_queue.c_fixed_queue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fixed_queue_free(%struct.TYPE_5__* %0, i32 (i32)* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32 (i32)*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 (i32)* %1, i32 (i32)** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %51

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = call i32 @fixed_queue_unregister_dequeue(%struct.TYPE_5__* %10)
  %12 = load i32 (i32)*, i32 (i32)** %4, align 8
  %13 = icmp ne i32 (i32)* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @list_begin(i32 %17)
  store i32* %18, i32** %5, align 8
  br label %19

19:                                               ; preds = %31, %14
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @list_end(i32 %23)
  %25 = icmp ne i32* %20, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i32 (i32)*, i32 (i32)** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @list_node(i32* %28)
  %30 = call i32 %27(i32 %29)
  br label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @list_next(i32* %32)
  store i32* %33, i32** %5, align 8
  br label %19

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34, %9
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @list_free(i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = call i32 @osi_sem_free(i32* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = call i32 @osi_sem_free(i32* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @osi_mutex_free(i32* %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = call i32 @osi_free(%struct.TYPE_5__* %49)
  br label %51

51:                                               ; preds = %35, %8
  ret void
}

declare dso_local i32 @fixed_queue_unregister_dequeue(%struct.TYPE_5__*) #1

declare dso_local i32* @list_begin(i32) #1

declare dso_local i32* @list_end(i32) #1

declare dso_local i32 @list_node(i32*) #1

declare dso_local i32* @list_next(i32*) #1

declare dso_local i32 @list_free(i32) #1

declare dso_local i32 @osi_sem_free(i32*) #1

declare dso_local i32 @osi_mutex_free(i32*) #1

declare dso_local i32 @osi_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
