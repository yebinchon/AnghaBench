; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_encavcodec.c_encavcodecWork.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_encavcodec.c_encavcodecWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"encavcodec: codec context is uninitialized\00", align 1
@HB_WORK_DONE = common dso_local global i32 0, align 4
@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_WORK_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encavcodecWork(%struct.TYPE_16__* %0, %struct.TYPE_17__** %1, %struct.TYPE_17__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__**, align 8
  %7 = alloca %struct.TYPE_17__**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %6, align 8
  store %struct.TYPE_17__** %2, %struct.TYPE_17__*** %7, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %8, align 8
  %14 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %9, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = icmp eq %struct.TYPE_14__* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %3
  %28 = call i32 @hb_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %29, i32* %4, align 4
  br label %54

30:                                               ; preds = %20
  %31 = call %struct.TYPE_17__* @hb_buffer_list_clear(i32* %10)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = call i32 @Flush(%struct.TYPE_16__* %40, i32* %10)
  %42 = call i32 (...) @hb_buffer_eof_init()
  %43 = call i32 @hb_buffer_list_append(i32* %10, i32 %42)
  %44 = call %struct.TYPE_17__* @hb_buffer_list_clear(i32* %10)
  %45 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %45, align 8
  %46 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %46, i32* %4, align 4
  br label %54

47:                                               ; preds = %30
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %50 = call i32 @Encode(%struct.TYPE_16__* %48, %struct.TYPE_17__* %49, i32* %10)
  %51 = call %struct.TYPE_17__* @hb_buffer_list_clear(i32* %10)
  %52 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %52, align 8
  %53 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %47, %39, %27
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @hb_error(i8*) #1

declare dso_local %struct.TYPE_17__* @hb_buffer_list_clear(i32*) #1

declare dso_local i32 @Flush(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, i32) #1

declare dso_local i32 @hb_buffer_eof_init(...) #1

declare dso_local i32 @Encode(%struct.TYPE_16__*, %struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
