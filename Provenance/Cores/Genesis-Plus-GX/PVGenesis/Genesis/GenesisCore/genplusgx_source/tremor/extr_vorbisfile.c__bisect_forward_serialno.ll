; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c__bisect_forward_serialno.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c__bisect_forward_serialno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64*, i64* }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i32, i32 }

@CHUNKSIZE = common dso_local global i64 0, align 8
@OV_EREAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, i64, i64, i64, i64)* @_bisect_forward_serialno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bisect_forward_serialno(%struct.TYPE_10__* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load i64, i64* %11, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* %11, align 8
  store i64 %20, i64* %15, align 8
  %21 = bitcast %struct.TYPE_9__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 32, i1 false)
  br label %22

22:                                               ; preds = %73, %6
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %14, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %22
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* %10, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load i64, i64* @CHUNKSIZE, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %18, align 8
  br label %39

34:                                               ; preds = %26
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %14, align 8
  %37 = add nsw i64 %35, %36
  %38 = sdiv i64 %37, 2
  store i64 %38, i64* %18, align 8
  br label %39

39:                                               ; preds = %34, %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = load i64, i64* %18, align 8
  %42 = call i32 @_seek_helper(%struct.TYPE_10__* %40, i64 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = call i64 @_get_next_page(%struct.TYPE_10__* %43, %struct.TYPE_9__* %16, i32 -1)
  store i64 %44, i64* %17, align 8
  %45 = load i64, i64* %17, align 8
  %46 = load i64, i64* @OV_EREAD, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i64, i64* @OV_EREAD, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  br label %159

51:                                               ; preds = %39
  %52 = load i64, i64* %17, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = call i64 @ogg_page_serialno(%struct.TYPE_9__* %16)
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54, %51
  %59 = load i64, i64* %18, align 8
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %17, align 8
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* %17, align 8
  store i64 %63, i64* %15, align 8
  br label %64

64:                                               ; preds = %62, %58
  br label %73

65:                                               ; preds = %54
  %66 = load i64, i64* %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %66, %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %69, %71
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %65, %64
  %74 = call i32 @ogg_page_release(%struct.TYPE_9__* %16)
  br label %22

75:                                               ; preds = %22
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @_seek_helper(%struct.TYPE_10__* %76, i64 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = call i64 @_get_next_page(%struct.TYPE_10__* %79, %struct.TYPE_9__* %16, i32 -1)
  store i64 %80, i64* %17, align 8
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* @OV_EREAD, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i64, i64* @OV_EREAD, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %7, align 4
  br label %159

87:                                               ; preds = %75
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %17, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %126

94:                                               ; preds = %91, %87
  %95 = call i32 @ogg_page_release(%struct.TYPE_9__* %16)
  %96 = load i64, i64* %13, align 8
  %97 = add nsw i64 %96, 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  %104 = mul i64 %103, 8
  %105 = trunc i64 %104 to i32
  %106 = call i8* @_ogg_malloc(i32 %105)
  %107 = bitcast i8* %106 to i64*
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  store i64* %107, i64** %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = mul i64 %112, 8
  %114 = trunc i64 %113 to i32
  %115 = call i8* @_ogg_malloc(i32 %114)
  %116 = bitcast i8* %115 to i64*
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  store i64* %116, i64** %118, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* %13, align 8
  %124 = add nsw i64 %123, 1
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  store i64 %119, i64* %125, align 8
  br label %146

126:                                              ; preds = %91
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = load i64, i64* %15, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %11, align 8
  %133 = call i64 @ogg_page_serialno(%struct.TYPE_9__* %16)
  %134 = load i64, i64* %13, align 8
  %135 = add nsw i64 %134, 1
  %136 = call i32 @_bisect_forward_serialno(%struct.TYPE_10__* %127, i64 %128, i64 %131, i64 %132, i64 %133, i64 %135)
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %17, align 8
  %138 = call i32 @ogg_page_release(%struct.TYPE_9__* %16)
  %139 = load i64, i64* %17, align 8
  %140 = load i64, i64* @OV_EREAD, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %126
  %143 = load i64, i64* @OV_EREAD, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %7, align 4
  br label %159

145:                                              ; preds = %126
  br label %146

146:                                              ; preds = %145, %94
  %147 = load i64, i64* %9, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 3
  %150 = load i64*, i64** %149, align 8
  %151 = load i64, i64* %13, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  store i64 %147, i64* %152, align 8
  %153 = load i64, i64* %12, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 2
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* %13, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  store i64 %153, i64* %158, align 8
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %146, %142, %84, %48
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @_seek_helper(%struct.TYPE_10__*, i64) #2

declare dso_local i64 @_get_next_page(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #2

declare dso_local i64 @ogg_page_serialno(%struct.TYPE_9__*) #2

declare dso_local i32 @ogg_page_release(%struct.TYPE_9__*) #2

declare dso_local i8* @_ogg_malloc(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
