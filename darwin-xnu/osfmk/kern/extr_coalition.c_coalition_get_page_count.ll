; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalition_get_page_count.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_coalition.c_coalition_get_page_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@PAGE_SIZE_64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coalition_get_page_count(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %76

17:                                               ; preds = %12
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = call i32 @coalition_lock(%struct.TYPE_9__* %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %63 [
    i32 128, label %23
    i32 129, label %30
  ]

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = call i32 @i_get_list_footprint(i32* %26, i32 128, i32* %7)
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %64

30:                                               ; preds = %17
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @get_task_phys_footprint(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %44

44:                                               ; preds = %36, %30
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = call i32 @i_get_list_footprint(i32* %47, i32 129, i32* %7)
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = call i32 @i_get_list_footprint(i32* %53, i32 129, i32* %7)
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = call i32 @i_get_list_footprint(i32* %59, i32 129, i32* %7)
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %64

63:                                               ; preds = %17
  br label %64

64:                                               ; preds = %63, %44, %23
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = call i32 @coalition_unlock(%struct.TYPE_9__* %65)
  %67 = load i32*, i32** %5, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @PAGE_SIZE_64, align 4
  %75 = sdiv i32 %73, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @coalition_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @i_get_list_footprint(i32*, i32, i32*) #1

declare dso_local i32 @get_task_phys_footprint(i32) #1

declare dso_local i32 @coalition_unlock(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
