; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_generic_blockpool.c_vcos_generic_blockpool_subpool_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_generic_blockpool.c_vcos_generic_blockpool_subpool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i8*, i8*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }

@.str = private unnamed_addr constant [75 x i8] c"%s: pool %p subpool %p mem %p pool_size %d num_blocks %d align %d flags %x\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@VCOS_BLOCKPOOL_SUBPOOL_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"%s: mem %p subpool->start %p pool->block_size %d pool->block_data_size %d\00", align 1
@VCOS_BLOCKPOOL_DEBUG_MEMSET_MAX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i8*, i64, i32, i32, i32)* @vcos_generic_blockpool_subpool_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcos_generic_blockpool_subpool_init(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i8* %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = call i32 @vcos_unused(i32 %17)
  %19 = load i32, i32* @VCOS_FUNCTION, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = bitcast %struct.TYPE_8__* %20 to i8*
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i32 (i8*, i32, i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %21, %struct.TYPE_9__* %22, i8* %23, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @VCOS_BLOCKPOOL_SUBPOOL_MAGIC, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load i32, i32* %13, align 4
  %47 = call i64 @VCOS_BLOCKPOOL_ROUND_UP(i64 %45, i32 %46)
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 -8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp uge i8* %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @vcos_assert(i32 %64)
  %66 = load i32, i32* @VCOS_FUNCTION, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 (i8*, i32, i8*, ...) @vcos_log_trace(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %67, i8* %70, i32 %73, i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 6
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %89, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @VCOS_BLOCKPOOL_DEBUG_MEMSET_MAX_SIZE, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %7
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @memset(i8* %96, i32 188, i64 %97)
  br label %99

99:                                               ; preds = %93, %7
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = bitcast i8* %102 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %103, %struct.TYPE_10__** %15, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %106, i64 %112
  %114 = bitcast i8* %113 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %16, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 5
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %117, align 8
  br label %118

118:                                              ; preds = %122, %99
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %121 = icmp ult %struct.TYPE_10__* %119, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %118
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  store %struct.TYPE_10__* %125, %struct.TYPE_10__** %128, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 4
  store %struct.TYPE_10__* %129, %struct.TYPE_10__** %131, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %133 = bitcast %struct.TYPE_10__* %132 to i8*
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %133, i64 %137
  %139 = bitcast i8* %138 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %139, %struct.TYPE_10__** %15, align 8
  br label %118

140:                                              ; preds = %118
  ret void
}

declare dso_local i32 @vcos_unused(i32) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, i8*, ...) #1

declare dso_local i64 @VCOS_BLOCKPOOL_ROUND_UP(i64, i32) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
