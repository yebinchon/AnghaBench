; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng.c_rpng_process_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng.c_rpng_process_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpng_process = type { i32, i32, i64, %struct.TYPE_8__*, i32*, i64, i64 }
%struct.TYPE_8__ = type { i32 (i64)*, i32 (i64, i32*, i32)*, i32 (i64, i32, i32)*, i64 (...)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_9__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpng_process* (%struct.TYPE_7__*)* @rpng_process_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpng_process* @rpng_process_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.rpng_process*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rpng_process*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* null, i32** %4, align 8
  %6 = call i64 @calloc(i32 1, i32 48)
  %7 = inttoptr i64 %6 to %struct.rpng_process*
  store %struct.rpng_process* %7, %struct.rpng_process** %5, align 8
  %8 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %9 = icmp ne %struct.rpng_process* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.rpng_process* null, %struct.rpng_process** %2, align 8
  br label %136

11:                                               ; preds = %1
  %12 = call %struct.TYPE_8__* (...) @trans_stream_get_zlib_inflate_backend()
  %13 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %14 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %13, i32 0, i32 3
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %14, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %26 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %25, i32 0, i32 0
  %27 = call i32 @png_pass_geom(%struct.TYPE_9__* %16, i32 %20, i32 %24, i32* null, i32* null, i32* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %11
  %34 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %35 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 2
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %33, %11
  %39 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %40 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i64 (...)*, i64 (...)** %42, align 8
  %44 = call i64 (...) %43()
  %45 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %46 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %48 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %38
  %52 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %53 = call i32 @free(%struct.rpng_process* %52)
  store %struct.rpng_process* null, %struct.rpng_process** %2, align 8
  br label %136

54:                                               ; preds = %38
  %55 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %56 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @malloc(i32 %57)
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %4, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %114

63:                                               ; preds = %54
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %66 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %65, i32 0, i32 4
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %72 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %71, i32 0, i32 6
  store i64 %70, i64* %72, align 8
  %73 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %74 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %77 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %79 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %78, i32 0, i32 5
  store i64 0, i64* %79, align 8
  %80 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %81 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %80, i32 0, i32 3
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %83, align 8
  %85 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %86 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 %84(i64 %87, i32 %91, i32 %96)
  %98 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %99 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %98, i32 0, i32 3
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32 (i64, i32*, i32)*, i32 (i64, i32*, i32)** %101, align 8
  %103 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %104 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %107 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %110 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 %102(i64 %105, i32* %108, i32 %111)
  %113 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  store %struct.rpng_process* %113, %struct.rpng_process** %2, align 8
  br label %136

114:                                              ; preds = %62
  %115 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %116 = icmp ne %struct.rpng_process* %115, null
  br i1 %116, label %117, label %135

117:                                              ; preds = %114
  %118 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %119 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %124 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %123, i32 0, i32 3
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32 (i64)*, i32 (i64)** %126, align 8
  %128 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %129 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i32 %127(i64 %130)
  br label %132

132:                                              ; preds = %122, %117
  %133 = load %struct.rpng_process*, %struct.rpng_process** %5, align 8
  %134 = call i32 @free(%struct.rpng_process* %133)
  br label %135

135:                                              ; preds = %132, %114
  store %struct.rpng_process* null, %struct.rpng_process** %2, align 8
  br label %136

136:                                              ; preds = %135, %63, %51, %10
  %137 = load %struct.rpng_process*, %struct.rpng_process** %2, align 8
  ret %struct.rpng_process* %137
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local %struct.TYPE_8__* @trans_stream_get_zlib_inflate_backend(...) #1

declare dso_local i32 @png_pass_geom(%struct.TYPE_9__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @free(%struct.rpng_process*) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
