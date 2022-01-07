; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng.c_rpng_load_image_argb_process_inflate_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng.c_rpng_load_image_argb_process_inflate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.rpng_process = type { i64, i64, i32, i32, i64, i64, i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (i32*, i32, i64*, i64*, i32*)*, i32 (i32*)* }

@TRANS_STREAM_ERROR_BUFFER_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64**)* @rpng_load_image_argb_process_inflate_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpng_load_image_argb_process_inflate_init(%struct.TYPE_6__* %0, i64** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rpng_process*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64** %1, i64*** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.rpng_process*
  store %struct.rpng_process* %15, %struct.rpng_process** %10, align 8
  %16 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %17 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %22 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br label %25

25:                                               ; preds = %20, %2
  %26 = phi i1 [ false, %2 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %70

31:                                               ; preds = %25
  %32 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %33 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %32, i32 0, i32 7
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32 (i32*, i32, i64*, i64*, i32*)*, i32 (i32*, i32, i64*, i64*, i32*)** %35, align 8
  %37 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %38 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 %36(i32* %39, i32 0, i64* %8, i64* %9, i32* %7)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @TRANS_STREAM_ERROR_BUFFER_FULL, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %127

48:                                               ; preds = %43, %31
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %51 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %56 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %61 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %131

69:                                               ; preds = %48
  br label %70

70:                                               ; preds = %69, %30
  %71 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %72 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %71, i32 0, i32 7
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32 (i32*)*, i32 (i32*)** %74, align 8
  %76 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %77 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 %75(i32* %78)
  %80 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %81 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %80, i32 0, i32 6
  store i32* null, i32** %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %85, %89
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 8
  %93 = trunc i64 %92 to i32
  %94 = call i64 @malloc(i32 %93)
  %95 = inttoptr i64 %94 to i64*
  %96 = load i64**, i64*** %5, align 8
  store i64* %95, i64** %96, align 8
  %97 = load i64**, i64*** %5, align 8
  %98 = load i64*, i64** %97, align 8
  %99 = icmp ne i64* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %70
  br label %128

101:                                              ; preds = %70
  %102 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %103 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %102, i32 0, i32 5
  store i64 0, i64* %103, align 8
  %104 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %105 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %104, i32 0, i32 4
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %110 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %116, label %124

116:                                              ; preds = %101
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %120 = call i32 @png_reverse_filter_init(%struct.TYPE_7__* %118, %struct.rpng_process* %119)
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %128

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %101
  %125 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %126 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %125, i32 0, i32 2
  store i32 1, i32* %126, align 8
  store i32 1, i32* %3, align 4
  br label %131

127:                                              ; preds = %47
  br label %128

128:                                              ; preds = %127, %122, %100
  %129 = load %struct.rpng_process*, %struct.rpng_process** %10, align 8
  %130 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %129, i32 0, i32 2
  store i32 0, i32* %130, align 8
  store i32 -1, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %124, %68
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @png_reverse_filter_init(%struct.TYPE_7__*, %struct.rpng_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
