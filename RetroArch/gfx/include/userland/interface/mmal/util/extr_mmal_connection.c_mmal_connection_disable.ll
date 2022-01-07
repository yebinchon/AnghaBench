; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_connection.c_mmal_connection_disable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_connection.c_mmal_connection_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%p, %s\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_CONNECTION_FLAG_TUNNELLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"output port couldn't be disabled\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"input port couldn't be disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_connection_disable(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %6, i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %16, i64* %2, align 8
  br label %104

17:                                               ; preds = %1
  %18 = call i8* (...) @vcos_getmicrosecs()
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MMAL_CONNECTION_FLAG_TUNNELLING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @mmal_port_disable(i32 %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %27
  br label %85

37:                                               ; preds = %17
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @mmal_port_disable(i32 %40)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %85

46:                                               ; preds = %37
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @mmal_port_disable(i32 %49)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %85

55:                                               ; preds = %46
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32* @mmal_queue_get(i32 %58)
  store i32* %59, i32** %5, align 8
  br label %60

60:                                               ; preds = %63, %55
  %61 = load i32*, i32** %5, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @mmal_buffer_header_release(i32* %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32* @mmal_queue_get(i32 %68)
  store i32* %69, i32** %5, align 8
  br label %60

70:                                               ; preds = %60
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @mmal_queue_length(i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %76, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @vcos_assert(i32 %83)
  br label %85

85:                                               ; preds = %70, %53, %44, %36
  %86 = call i8* (...) @vcos_getmicrosecs()
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = ptrtoint i8* %86 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* @MMAL_SUCCESS, align 8
  %98 = icmp eq i64 %96, %97
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i64, i64* %4, align 8
  store i64 %103, i64* %2, align 8
  br label %104

104:                                              ; preds = %85, %15
  %105 = load i64, i64* %2, align 8
  ret i64 %105
}

declare dso_local i32 @LOG_TRACE(i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i8* @vcos_getmicrosecs(...) #1

declare dso_local i64 @mmal_port_disable(i32) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32* @mmal_queue_get(i32) #1

declare dso_local i32 @mmal_buffer_header_release(i32*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @mmal_queue_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
