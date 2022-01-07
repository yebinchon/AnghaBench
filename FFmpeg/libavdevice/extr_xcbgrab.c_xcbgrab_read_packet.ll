; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xcbgrab.c_xcbgrab_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xcbgrab.c_xcbgrab_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32*)* @xcbgrab_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcbgrab_read_packet(%struct.TYPE_23__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @wait_frame(%struct.TYPE_23__* %14, i32* %15)
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %21, %2
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @xcb_query_pointer(i32 %29, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @xcb_get_geometry(i32 %38, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.TYPE_21__* @xcb_query_pointer_reply(i32 %47, i32 %48, i32* null)
  store %struct.TYPE_21__* %49, %struct.TYPE_21__** %8, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call %struct.TYPE_21__* @xcb_get_geometry_reply(i32 %52, i32 %53, i32* null)
  store %struct.TYPE_21__* %54, %struct.TYPE_21__** %9, align 8
  br label %55

55:                                               ; preds = %26, %21
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %69 = call i32 @xcbgrab_reposition(%struct.TYPE_23__* %66, %struct.TYPE_21__* %67, %struct.TYPE_21__* %68)
  br label %70

70:                                               ; preds = %65, %60, %55
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %77 = call i32 @xcbgrab_update_region(%struct.TYPE_23__* %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @xcbgrab_frame(%struct.TYPE_23__* %84, i32* %85)
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %89 = call i32 @free(%struct.TYPE_21__* %88)
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %91 = call i32 @free(%struct.TYPE_21__* %90)
  %92 = load i32, i32* %10, align 4
  ret i32 %92
}

declare dso_local i32 @wait_frame(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @xcb_query_pointer(i32, i32) #1

declare dso_local i32 @xcb_get_geometry(i32, i32) #1

declare dso_local %struct.TYPE_21__* @xcb_query_pointer_reply(i32, i32, i32*) #1

declare dso_local %struct.TYPE_21__* @xcb_get_geometry_reply(i32, i32, i32*) #1

declare dso_local i32 @xcbgrab_reposition(%struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @xcbgrab_update_region(%struct.TYPE_23__*) #1

declare dso_local i32 @xcbgrab_frame(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
