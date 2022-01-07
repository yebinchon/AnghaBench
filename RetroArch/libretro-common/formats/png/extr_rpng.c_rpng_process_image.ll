; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng.c_rpng_process_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng.c_rpng_process_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.rpng_process*, %struct.TYPE_8__ }
%struct.rpng_process = type { i64, %struct.TYPE_9__*, %struct.rpng_process*, i32 }
%struct.TYPE_9__ = type { i32 (i64)* }
%struct.TYPE_8__ = type { i32, i32 }

@IMAGE_PROCESS_NEXT = common dso_local global i32 0, align 4
@IMAGE_PROCESS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpng_process_image(%struct.TYPE_10__* %0, i8** %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca %struct.rpng_process*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8**, i8*** %8, align 8
  %15 = bitcast i8** %14 to i32**
  store i32** %15, i32*** %12, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.rpng_process*, %struct.rpng_process** %18, align 8
  %20 = icmp ne %struct.rpng_process* %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = call %struct.rpng_process* @rpng_process_init(%struct.TYPE_10__* %22)
  store %struct.rpng_process* %23, %struct.rpng_process** %13, align 8
  %24 = load %struct.rpng_process*, %struct.rpng_process** %13, align 8
  %25 = icmp ne %struct.rpng_process* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %61

27:                                               ; preds = %21
  %28 = load %struct.rpng_process*, %struct.rpng_process** %13, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store %struct.rpng_process* %28, %struct.rpng_process** %30, align 8
  %31 = load i32, i32* @IMAGE_PROCESS_NEXT, align 4
  store i32 %31, i32* %6, align 4
  br label %108

32:                                               ; preds = %5
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.rpng_process*, %struct.rpng_process** %34, align 8
  %36 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = load i32**, i32*** %12, align 8
  %42 = call i32 @rpng_load_image_argb_process_inflate_init(%struct.TYPE_10__* %40, i32** %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %61

45:                                               ; preds = %39
  %46 = load i32, i32* @IMAGE_PROCESS_NEXT, align 4
  store i32 %46, i32* %6, align 4
  br label %108

47:                                               ; preds = %32
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = load i32**, i32*** %12, align 8
  %60 = call i32 @png_reverse_filter_iterate(%struct.TYPE_10__* %58, i32** %59)
  store i32 %60, i32* %6, align 4
  br label %108

61:                                               ; preds = %44, %26
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.rpng_process*, %struct.rpng_process** %63, align 8
  %65 = icmp ne %struct.rpng_process* %64, null
  br i1 %65, label %66, label %106

66:                                               ; preds = %61
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.rpng_process*, %struct.rpng_process** %68, align 8
  %70 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %69, i32 0, i32 2
  %71 = load %struct.rpng_process*, %struct.rpng_process** %70, align 8
  %72 = icmp ne %struct.rpng_process* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.rpng_process*, %struct.rpng_process** %75, align 8
  %77 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %76, i32 0, i32 2
  %78 = load %struct.rpng_process*, %struct.rpng_process** %77, align 8
  %79 = call i32 @free(%struct.rpng_process* %78)
  br label %80

80:                                               ; preds = %73, %66
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.rpng_process*, %struct.rpng_process** %82, align 8
  %84 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %80
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.rpng_process*, %struct.rpng_process** %89, align 8
  %91 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32 (i64)*, i32 (i64)** %93, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.rpng_process*, %struct.rpng_process** %96, align 8
  %98 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 %94(i64 %99)
  br label %101

101:                                              ; preds = %87, %80
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.rpng_process*, %struct.rpng_process** %103, align 8
  %105 = call i32 @free(%struct.rpng_process* %104)
  br label %106

106:                                              ; preds = %101, %61
  %107 = load i32, i32* @IMAGE_PROCESS_ERROR, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %106, %47, %45, %27
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local %struct.rpng_process* @rpng_process_init(%struct.TYPE_10__*) #1

declare dso_local i32 @rpng_load_image_argb_process_inflate_init(%struct.TYPE_10__*, i32**) #1

declare dso_local i32 @png_reverse_filter_iterate(%struct.TYPE_10__*, i32**) #1

declare dso_local i32 @free(%struct.rpng_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
