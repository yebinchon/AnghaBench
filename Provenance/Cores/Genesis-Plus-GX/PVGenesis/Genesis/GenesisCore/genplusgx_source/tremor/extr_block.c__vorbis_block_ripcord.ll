; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_block.c__vorbis_block_ripcord.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_block.c__vorbis_block_ripcord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.alloc_chain*, i64, i64, i64, i32 }
%struct.alloc_chain = type { %struct.alloc_chain*, %struct.alloc_chain* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_vorbis_block_ripcord(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.alloc_chain*, align 8
  %4 = alloca %struct.alloc_chain*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.alloc_chain*, %struct.alloc_chain** %6, align 8
  store %struct.alloc_chain* %7, %struct.alloc_chain** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.alloc_chain*, %struct.alloc_chain** %3, align 8
  %10 = icmp ne %struct.alloc_chain* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.alloc_chain*, %struct.alloc_chain** %3, align 8
  %13 = getelementptr inbounds %struct.alloc_chain, %struct.alloc_chain* %12, i32 0, i32 1
  %14 = load %struct.alloc_chain*, %struct.alloc_chain** %13, align 8
  store %struct.alloc_chain* %14, %struct.alloc_chain** %4, align 8
  %15 = load %struct.alloc_chain*, %struct.alloc_chain** %3, align 8
  %16 = getelementptr inbounds %struct.alloc_chain, %struct.alloc_chain* %15, i32 0, i32 0
  %17 = load %struct.alloc_chain*, %struct.alloc_chain** %16, align 8
  %18 = call i32 @_ogg_free(%struct.alloc_chain* %17)
  %19 = load %struct.alloc_chain*, %struct.alloc_chain** %3, align 8
  %20 = call i32 @memset(%struct.alloc_chain* %19, i32 0, i32 16)
  %21 = load %struct.alloc_chain*, %struct.alloc_chain** %3, align 8
  %22 = call i32 @_ogg_free(%struct.alloc_chain* %21)
  %23 = load %struct.alloc_chain*, %struct.alloc_chain** %4, align 8
  store %struct.alloc_chain* %23, %struct.alloc_chain** %3, align 8
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call i32 @_ogg_realloc(i32 %32, i64 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %29, %24
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store %struct.alloc_chain* null, %struct.alloc_chain** %56, align 8
  ret void
}

declare dso_local i32 @_ogg_free(%struct.alloc_chain*) #1

declare dso_local i32 @memset(%struct.alloc_chain*, i32, i32) #1

declare dso_local i32 @_ogg_realloc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
