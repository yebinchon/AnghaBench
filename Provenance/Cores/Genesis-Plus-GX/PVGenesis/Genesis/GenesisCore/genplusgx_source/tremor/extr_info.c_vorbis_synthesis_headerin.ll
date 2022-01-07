; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_info.c_vorbis_synthesis_headerin.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_info.c_vorbis_synthesis_headerin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"vorbis\00", align 1
@OV_ENOTVORBIS = common dso_local global i32 0, align 4
@OV_EBADHEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_synthesis_headerin(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [6 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %12 = icmp ne %struct.TYPE_12__* %11, null
  br i1 %12, label %13, label %74

13:                                               ; preds = %3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @oggpack_readinit(i32* %8, i32 %16)
  %18 = call i32 @oggpack_read(i32* %8, i32 8)
  store i32 %18, i32* %10, align 4
  %19 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %20 = call i32 @memset(i8* %19, i32 0, i32 6)
  %21 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %22 = call i32 @_v_readstring(i32* %8, i8* %21, i32 6)
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %9, i64 0, i64 0
  %24 = call i64 @memcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = load i32, i32* @OV_ENOTVORBIS, align 4
  store i32 %27, i32* %4, align 4
  br label %76

28:                                               ; preds = %13
  %29 = load i32, i32* %10, align 4
  switch i32 %29, label %72 [
    i32 1, label %30
    i32 3, label %47
    i32 5, label %57
  ]

30:                                               ; preds = %28
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %36, i32* %4, align 4
  br label %76

37:                                               ; preds = %30
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %43, i32* %4, align 4
  br label %76

44:                                               ; preds = %37
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = call i32 @_vorbis_unpack_info(%struct.TYPE_10__* %45, i32* %8)
  store i32 %46, i32* %4, align 4
  br label %76

47:                                               ; preds = %28
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %53, i32* %4, align 4
  br label %76

54:                                               ; preds = %47
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = call i32 @_vorbis_unpack_comment(%struct.TYPE_11__* %55, i32* %8)
  store i32 %56, i32* %4, align 4
  br label %76

57:                                               ; preds = %28
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %57
  %68 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %68, i32* %4, align 4
  br label %76

69:                                               ; preds = %62
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = call i32 @_vorbis_unpack_books(%struct.TYPE_10__* %70, i32* %8)
  store i32 %71, i32* %4, align 4
  br label %76

72:                                               ; preds = %28
  %73 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %73, i32* %4, align 4
  br label %76

74:                                               ; preds = %3
  %75 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %72, %69, %67, %54, %52, %44, %42, %35, %26
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @oggpack_readinit(i32*, i32) #1

declare dso_local i32 @oggpack_read(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @_v_readstring(i32*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @_vorbis_unpack_info(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @_vorbis_unpack_comment(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @_vorbis_unpack_books(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
