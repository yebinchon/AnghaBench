; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hbavfilter.c_hb_avfilter_combine.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hbavfilter.c_hb_avfilter_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_avfilter_combine(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %64, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @hb_list_count(i32* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %67

14:                                               ; preds = %9
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.TYPE_8__* @hb_list_item(i32* %15, i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %6, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %7, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %28 [
    i32 133, label %24
    i32 130, label %24
    i32 131, label %24
    i32 132, label %24
    i32 129, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %14, %14, %14, %14, %14, %14
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %4, align 8
  br label %29

28:                                               ; preds = %14
  store i32* null, i32** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32*, i32** %4, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %63

32:                                               ; preds = %29
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = icmp eq %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %36 = call %struct.TYPE_8__* @hb_filter_init(i32 133)
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %3, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = call %struct.TYPE_7__* @calloc(i32 1, i32 4)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %8, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = call i32 (...) @hb_value_array_init()
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = call i32 @hb_list_insert(i32* %51, i32 %52, %struct.TYPE_8__* %53)
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %35, %32
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @hb_value_array_concat(i32 %60, i32* %61)
  br label %63

63:                                               ; preds = %57, %29
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %9

67:                                               ; preds = %9
  ret void
}

declare dso_local i32 @hb_list_count(i32*) #1

declare dso_local %struct.TYPE_8__* @hb_list_item(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @hb_filter_init(i32) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @hb_value_array_init(...) #1

declare dso_local i32 @hb_list_insert(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @hb_value_array_concat(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
