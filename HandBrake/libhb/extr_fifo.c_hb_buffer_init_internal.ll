; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_fifo.c_hb_buffer_init_internal.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_fifo.c_hb_buffer_init_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_18__ = type { i32 }

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@buffers = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @hb_buffer_init_internal(i32 %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_18__* @size_to_pool(i32 %11)
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %6, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %14 = icmp ne %struct.TYPE_18__* %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %1
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = call %struct.TYPE_17__* @hb_fifo_get(%struct.TYPE_18__* %16)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %4, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = icmp ne %struct.TYPE_17__* %18, null
  br i1 %19, label %20, label %53

20:                                               ; preds = %15
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %7, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %25 = call i32 @memset(%struct.TYPE_17__* %24, i32 0, i32 48)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 3
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %36, align 8
  %37 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 3
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %2, align 8
  br label %119

53:                                               ; preds = %15
  br label %54

54:                                               ; preds = %53, %1
  %55 = call %struct.TYPE_17__* @calloc(i32 48, i32 1)
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %4, align 8
  %56 = icmp ne %struct.TYPE_17__* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = call i32 @hb_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %119

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = icmp ne %struct.TYPE_18__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  br label %71

69:                                               ; preds = %59
  %70 = load i32, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi i32 [ %68, %65 ], [ %70, %69 ]
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %71
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.TYPE_17__* @av_malloc(i32 %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 3
  store %struct.TYPE_17__* %81, %struct.TYPE_17__** %83, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = icmp ne %struct.TYPE_17__* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %77
  %89 = call i32 @hb_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = call i32 @free(%struct.TYPE_17__* %90)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %119

92:                                               ; preds = %77
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @buffers, i32 0, i32 1), align 4
  %94 = call i32 @hb_lock(i32 %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @buffers, i32 0, i32 0), align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @buffers, i32 0, i32 0), align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @buffers, i32 0, i32 1), align 4
  %101 = call i32 @hb_unlock(i32 %100)
  br label %102

102:                                              ; preds = %92, %71
  %103 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 3
  store i8* %103, i8** %106, align 8
  %107 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  store i8* %107, i8** %110, align 8
  %111 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  store i8* %111, i8** %114, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  store i32 -1, i32* %117, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %118, %struct.TYPE_17__** %2, align 8
  br label %119

119:                                              ; preds = %102, %88, %57, %20
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %120
}

declare dso_local %struct.TYPE_18__* @size_to_pool(i32) #1

declare dso_local %struct.TYPE_17__* @hb_fifo_get(%struct.TYPE_18__*) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @calloc(i32, i32) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local %struct.TYPE_17__* @av_malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

declare dso_local i32 @hb_lock(i32) #1

declare dso_local i32 @hb_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
