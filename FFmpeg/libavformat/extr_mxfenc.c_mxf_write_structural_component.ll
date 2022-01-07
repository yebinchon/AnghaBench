; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_structural_component.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_structural_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_24__*, %struct.TYPE_22__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"sturctural component key\00", align 1
@SourceClip = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"structural component uid\00", align 1
@SourcePackage = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_21__*)* @mxf_write_structural_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_write_structural_component(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %7, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %8, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %17 = call i32 @mxf_write_metadata_key(%struct.TYPE_24__* %16, i32 69888)
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 16
  %23 = call i32 @PRINT_KEY(%struct.TYPE_25__* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %25 = call i32 @klv_encode_ber_length(%struct.TYPE_24__* %24, i32 108)
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %27 = call i32 @mxf_write_local_tag(%struct.TYPE_24__* %26, i32 16, i32 15370)
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %29 = load i32, i32* @SourceClip, align 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mxf_write_uuid(%struct.TYPE_24__* %28, i32 %29, i32 %32)
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, 16
  %39 = call i32 @PRINT_KEY(%struct.TYPE_25__* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %42 = call i32 @mxf_write_common_fields(%struct.TYPE_25__* %40, %struct.TYPE_23__* %41)
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %44 = call i32 @mxf_write_local_tag(%struct.TYPE_24__* %43, i32 8, i32 4609)
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %46 = call i32 @avio_wb64(%struct.TYPE_24__* %45, i32 0)
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %48 = call i32 @mxf_write_local_tag(%struct.TYPE_24__* %47, i32 32, i32 4353)
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %50, align 8
  %52 = icmp ne %struct.TYPE_20__* %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %60, %53
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %59 = call i32 @avio_wb64(%struct.TYPE_24__* %58, i32 0)
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %54

63:                                               ; preds = %54
  br label %72

64:                                               ; preds = %3
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mxf_write_umid(%struct.TYPE_25__* %65, i32 %70)
  br label %72

72:                                               ; preds = %64, %63
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %74 = call i32 @mxf_write_local_tag(%struct.TYPE_24__* %73, i32 4, i32 4354)
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SourcePackage, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %82, align 8
  %84 = icmp ne %struct.TYPE_20__* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %87 = call i32 @avio_wb32(%struct.TYPE_24__* %86, i64 0)
  br label %95

88:                                               ; preds = %80, %72
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 2
  %94 = call i32 @avio_wb32(%struct.TYPE_24__* %89, i64 %93)
  br label %95

95:                                               ; preds = %88, %85
  ret void
}

declare dso_local i32 @mxf_write_metadata_key(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @PRINT_KEY(%struct.TYPE_25__*, i8*, i64) #1

declare dso_local i32 @klv_encode_ber_length(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @mxf_write_local_tag(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @mxf_write_uuid(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @mxf_write_common_fields(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @avio_wb64(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @mxf_write_umid(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @avio_wb32(%struct.TYPE_24__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
