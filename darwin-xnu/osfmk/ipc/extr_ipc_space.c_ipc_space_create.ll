; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_space.c_ipc_space_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_space.c_ipc_space_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64, i32*, %struct.TYPE_11__*, i64, i32, i64 }
%struct.TYPE_11__ = type { i32 }

@IS_NULL = common dso_local global %struct.TYPE_12__* null, align 8
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@IE_NULL = common dso_local global i64 0, align 8
@HOST_LOCAL_NODE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_space_create(%struct.TYPE_11__* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %5, align 8
  %9 = call %struct.TYPE_12__* (...) @is_alloc()
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IS_NULL, align 8
  %12 = icmp eq %struct.TYPE_12__* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %14, i32* %3, align 4
  br label %79

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = call i64 @it_entries_alloc(%struct.TYPE_11__* %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @IE_NULL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = call i32 @is_free(%struct.TYPE_12__* %22)
  %24 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %24, i32* %3, align 4
  br label %79

25:                                               ; preds = %15
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i64, i64* %7, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(i8* %30, i32 0, i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 10
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @memset(i8* %39, i32 0, i32 8)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 9
  %43 = call i32 @random_bool_init(i32* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @ipc_space_rand_freelist(%struct.TYPE_12__* %44, i64 %45, i32 0, i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = call i32 @is_lock_init(%struct.TYPE_12__* %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i32 2, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 8
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 1
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 7
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 6
  store i32* null, i32** %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @HOST_LOCAL_NODE, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %77, align 8
  %78 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %25, %21, %13
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_12__* @is_alloc(...) #1

declare dso_local i64 @it_entries_alloc(%struct.TYPE_11__*) #1

declare dso_local i32 @is_free(%struct.TYPE_12__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @random_bool_init(i32*) #1

declare dso_local i32 @ipc_space_rand_freelist(%struct.TYPE_12__*, i64, i32, i32) #1

declare dso_local i32 @is_lock_init(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
