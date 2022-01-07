; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_dict.c_kxld_dict_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_dict.c_kxld_dict_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_8__*, %struct.TYPE_8__*, i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@DEFAULT_DICT_SIZE = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kxld_dict_init(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @MIN_BUCKETS(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @DEFAULT_DICT_SIZE, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = call i32 @check(%struct.TYPE_8__* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = call i32 @check(%struct.TYPE_8__* %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %21 = call i32 @check(%struct.TYPE_8__* %20)
  br label %22

22:                                               ; preds = %26, %4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 %27, 2
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  br label %22

31:                                               ; preds = %22
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @kxld_array_init(i32* %33, i32 4, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @finish, align 4
  %38 = call i32 @require_noerr(i32 %36, i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @RESIZE_THRESHOLD(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %31
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i32 @MIN_BUCKETS(i32) #1

declare dso_local i32 @check(%struct.TYPE_8__*) #1

declare dso_local i32 @kxld_array_init(i32*, i32, i32) #1

declare dso_local i32 @require_noerr(i32, i32) #1

declare dso_local i32 @RESIZE_THRESHOLD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
