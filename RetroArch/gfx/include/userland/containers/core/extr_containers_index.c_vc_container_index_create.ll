; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_index.c_vc_container_index_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_index.c_vc_container_index_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_container_index_create(%struct.TYPE_5__** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %9, i32* %6, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 16
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 16, i32* %5, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 4096
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 4096, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %13
  br label %18

18:                                               ; preds = %22, %17
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %18

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = shl i64 4, %27
  %29 = add i64 8, %28
  %30 = trunc i64 %29 to i32
  %31 = call %struct.TYPE_5__* @malloc(i32 %30)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %7, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = icmp eq %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %46

35:                                               ; preds = %25
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = call i32 @memset(%struct.TYPE_5__* %36, i32 0, i32 8)
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %44, align 8
  %45 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %35
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
