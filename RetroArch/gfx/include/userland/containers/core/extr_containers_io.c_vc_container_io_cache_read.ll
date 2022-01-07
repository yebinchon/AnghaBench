; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_io.c_vc_container_io_cache_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_io.c_vc_container_io_cache_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i64)* @vc_container_io_cache_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vc_container_io_cache_read(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %73, %49, %4
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %97

15:                                               ; preds = %12
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %53, label %25

25:                                               ; preds = %15
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %25
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @vc_container_io_cache_refill_bypass(%struct.TYPE_9__* %35, %struct.TYPE_10__* %36, i32* %39, i64 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  br label %98

49:                                               ; preds = %31
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %8, align 8
  br label %12

53:                                               ; preds = %25, %15
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = call i64 @vc_container_io_cache_refill(%struct.TYPE_9__* %57, %struct.TYPE_10__* %58)
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  br label %98

64:                                               ; preds = %60
  %65 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %71, %64
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %79, %82
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @memcpy(i32* %76, i64 %83, i64 %84)
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %8, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %8, align 8
  br label %12

97:                                               ; preds = %12
  br label %98

98:                                               ; preds = %97, %63, %48
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %101, %104
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %108, %109
  %111 = icmp eq i64 %105, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @vc_container_assert(i32 %112)
  %114 = load i64, i64* %9, align 8
  ret i64 %114
}

declare dso_local i64 @vc_container_io_cache_refill_bypass(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i64) #1

declare dso_local i64 @vc_container_io_cache_refill(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @vc_container_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
