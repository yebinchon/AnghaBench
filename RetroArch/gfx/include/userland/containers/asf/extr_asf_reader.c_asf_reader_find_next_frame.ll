; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_reader_find_next_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_reader_find_next_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@ASF_MAX_SEARCH_PACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32, %struct.TYPE_14__*, i32, i32)* @asf_reader_find_next_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @asf_reader_find_next_frame(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_14__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %15, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %18, i64 %20
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %5
  br label %31

31:                                               ; preds = %74, %30
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %14, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @ASF_MAX_SEARCH_PACKETS, align 4
  %42 = icmp ult i32 %39, %41
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i1 [ true, %35 ], [ %42, %38 ]
  br label %45

45:                                               ; preds = %43, %31
  %46 = phi i1 [ false, %31 ], [ %44, %43 ]
  br i1 %46, label %47, label %78

47:                                               ; preds = %45
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = call i64 @asf_read_next_payload_header(%struct.TYPE_13__* %48, %struct.TYPE_14__* %49, i32* %12, i32* %13)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %78

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 7
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %78

74:                                               ; preds = %68, %65, %55
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = call i64 @asf_read_next_payload(%struct.TYPE_13__* %75, %struct.TYPE_14__* %76, i32 0, i32* %13)
  store i64 %77, i64* %11, align 8
  br label %31

78:                                               ; preds = %73, %54, %45
  %79 = load i64, i64* %11, align 8
  ret i64 %79
}

declare dso_local i64 @asf_read_next_payload_header(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i64 @asf_read_next_payload(%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
