; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_mach_zone_info_for_zone.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_mach_zone_info_for_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@HOST_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_HOST = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@all_zones_lock = common dso_local global i32 0, align 4
@num_zones = common dso_local global i64 0, align 8
@ZONE_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@zone_array = common dso_local global %struct.TYPE_7__* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_zone_info_for_zone(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  store i64 %0, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @HOST_NULL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @KERN_INVALID_HOST, align 4
  store i32 %17, i32* %4, align 4
  br label %71

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %22, i32* %4, align 4
  br label %71

23:                                               ; preds = %18
  %24 = call i32 @simple_lock(i32* @all_zones_lock)
  %25 = load i64, i64* @num_zones, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = call i32 @simple_unlock(i32* @all_zones_lock)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ZONE_NULL, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %10, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %53, %23
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** @zone_array, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %36
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %11, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ZONE_NULL, align 8
  %40 = icmp ne %struct.TYPE_7__* %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @track_this_zone(i32 %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %10, align 8
  br label %56

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %29

56:                                               ; preds = %50, %29
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ZONE_NULL, align 8
  %59 = icmp eq %struct.TYPE_7__* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %61, i32* %4, align 4
  br label %71

62:                                               ; preds = %56
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @get_zone_info(%struct.TYPE_7__* %63, i32* null, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %68, i32* %4, align 4
  br label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %67, %60, %21, %16
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @track_this_zone(i32, i32) #1

declare dso_local i64 @get_zone_info(%struct.TYPE_7__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
