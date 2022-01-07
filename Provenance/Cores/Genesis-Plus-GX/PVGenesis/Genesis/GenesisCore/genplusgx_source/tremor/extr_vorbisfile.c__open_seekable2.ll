; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c__open_seekable2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c__open_seekable2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 (i32)*, i32 (i32, i32, i32)* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }

@SEEK_END = common dso_local global i32 0, align 4
@OV_EREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @_open_seekable2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_open_seekable2(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 16, i1 false)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %18, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SEEK_END, align 4
  %24 = call i32 %19(i32 %22, i32 0, i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64 (i32)*, i64 (i32)** %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 %28(i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  store i64 %32, i64* %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = call i64 @_get_prev_page(%struct.TYPE_14__* %37, %struct.TYPE_13__* %8)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load i64, i64* %7, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %77

44:                                               ; preds = %1
  %45 = call i64 @ogg_page_serialno(%struct.TYPE_13__* %8)
  store i64 %45, i64* %5, align 8
  %46 = call i32 @ogg_page_release(%struct.TYPE_13__* %8)
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, 1
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @_bisect_forward_serialno(%struct.TYPE_14__* %51, i32 0, i64 0, i64 %53, i64 %54, i32 0)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @OV_EREAD, align 4
  store i32 %58, i32* %2, align 4
  br label %77

59:                                               ; preds = %50
  br label %71

60:                                               ; preds = %44
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %63, 1
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @_bisect_forward_serialno(%struct.TYPE_14__* %61, i32 0, i64 %62, i64 %64, i64 %65, i32 0)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @OV_EREAD, align 4
  store i32 %69, i32* %2, align 4
  br label %77

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %59
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @_prefetch_all_headers(%struct.TYPE_14__* %72, i64 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = call i32 @ov_raw_seek(%struct.TYPE_14__* %75, i32 0)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %71, %68, %57, %41
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @_get_prev_page(%struct.TYPE_14__*, %struct.TYPE_13__*) #2

declare dso_local i64 @ogg_page_serialno(%struct.TYPE_13__*) #2

declare dso_local i32 @ogg_page_release(%struct.TYPE_13__*) #2

declare dso_local i64 @_bisect_forward_serialno(%struct.TYPE_14__*, i32, i64, i64, i64, i32) #2

declare dso_local i32 @_prefetch_all_headers(%struct.TYPE_14__*, i64) #2

declare dso_local i32 @ov_raw_seek(%struct.TYPE_14__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
