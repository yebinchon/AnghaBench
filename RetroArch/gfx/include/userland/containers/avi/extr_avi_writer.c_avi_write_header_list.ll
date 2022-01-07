; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_header_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_header_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Chunk ID\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"LIST Size\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i64)* @avi_write_header_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_write_header_list(%struct.TYPE_14__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %6, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = call i32 @VC_FOURCC(i8 signext 76, i8 signext 73, i8 signext 83, i8 signext 84)
  %17 = call i32 @WRITE_FOURCC(%struct.TYPE_14__* %15, i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @WRITE_U32(%struct.TYPE_14__* %18, i64 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = call i32 @VC_FOURCC(i8 signext 104, i8 signext 100, i8 signext 114, i8 signext 108)
  %23 = call i32 @WRITE_FOURCC(%struct.TYPE_14__* %21, i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = call i32 @STREAM_STATUS(%struct.TYPE_14__* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %83

30:                                               ; preds = %2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = call i32 @avi_write_avi_header_chunk(%struct.TYPE_14__* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %83

37:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %78, %37
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %38
  store i64 0, i64* %9, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = call i32 @vc_container_writer_extraio_enable(%struct.TYPE_14__* %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @avi_write_stream_header_list(%struct.TYPE_14__* %51, i32 %52, i64 0)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %83

59:                                               ; preds = %50
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = call i64 @STREAM_POSITION(%struct.TYPE_14__* %60)
  %62 = sub nsw i64 %61, 8
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %59, %44
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = call i32 @vc_container_writer_extraio_disable(%struct.TYPE_14__* %64, i32* %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @avi_write_stream_header_list(%struct.TYPE_14__* %68, i32 %69, i64 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %83

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %38

81:                                               ; preds = %38
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %75, %57, %35, %28
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @WRITE_FOURCC(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_14__*, i64, i8*) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_14__*) #1

declare dso_local i32 @avi_write_avi_header_chunk(%struct.TYPE_14__*) #1

declare dso_local i32 @vc_container_writer_extraio_enable(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @avi_write_stream_header_list(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_14__*) #1

declare dso_local i32 @vc_container_writer_extraio_disable(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
