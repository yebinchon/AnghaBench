; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_pool.c_mmal_pool_resize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_pool.c_mmal_pool_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@ALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"MMAL buffer headers\00", align 1
@MMAL_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_pool_resize(%struct.TYPE_5__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = bitcast %struct.TYPE_5__* %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %132

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %32, i32* %4, align 4
  br label %132

33:                                               ; preds = %25, %19
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %45, %33
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @mmal_queue_get(i32 %43)
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %34

48:                                               ; preds = %34
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @mmal_pool_initialise_buffer_headers(%struct.TYPE_5__* %51, i32 %54, i32 0)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ugt i32 %58, %61
  br i1 %62, label %63, label %102

63:                                               ; preds = %48
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 0, i32* %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @vcos_free(i32* %73)
  br label %75

75:                                               ; preds = %70, %63
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = mul i32 %78, %79
  %81 = zext i32 %80 to i64
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = mul i64 8, %83
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* @ALIGN, align 4
  %87 = call i64 @ROUND_UP(i32 %85, i32 %86)
  %88 = add nsw i64 %81, %87
  %89 = call i32* @vcos_calloc(i64 %88, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32* %89, i32** %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %75
  %97 = load i32, i32* @MMAL_ENOMEM, align 4
  store i32 %97, i32* %4, align 4
  br label %132

98:                                               ; preds = %75
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %48
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @mmal_pool_initialise_buffer_headers(%struct.TYPE_5__* %106, i32 %107, i32 1)
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %127, %102
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ult i32 %110, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %109
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mmal_queue_put(i32 %118, i32 %125)
  br label %127

127:                                              ; preds = %115
  %128 = load i32, i32* %9, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %109

130:                                              ; preds = %109
  %131 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %130, %96, %31, %17
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @mmal_queue_get(i32) #1

declare dso_local i32 @mmal_pool_initialise_buffer_headers(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @vcos_free(i32*) #1

declare dso_local i32* @vcos_calloc(i64, i32, i8*) #1

declare dso_local i64 @ROUND_UP(i32, i32) #1

declare dso_local i32 @mmal_queue_put(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
