; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_array.c_kxld_array_resize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_array.c_kxld_array_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kxld_array_resize(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %7, i32* %5, align 4
  store i32* null, i32** %6, align 8
  br label %8

8:                                                ; preds = %14, %2
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32* @pool_create(i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = load i32, i32* @finish, align 4
  %22 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %22, i32* %5, align 4
  %23 = call i32 @require_action(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @entries, align 4
  %28 = call i32 @STAILQ_INSERT_TAIL(i32* %25, i32* %26, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %31
  store i64 %35, i64* %33, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  br label %8

40:                                               ; preds = %8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @reinit_pools(%struct.TYPE_4__* %41, i64 %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* @finish, align 4
  %48 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %48, i32* %5, align 4
  %49 = call i32 @require_action(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32* @pool_create(i32) #1

declare dso_local i32 @require_action(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, i32*, i32) #1

declare dso_local i64 @reinit_pools(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
