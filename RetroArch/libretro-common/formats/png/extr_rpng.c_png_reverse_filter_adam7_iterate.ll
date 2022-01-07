; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng.c_png_reverse_filter_adam7_iterate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/png/extr_rpng.c_png_reverse_filter_adam7_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.png_ihdr = type { i32 }
%struct.rpng_process = type { i64, i32, i64, i32, i32, i32*, i32, i32, i32, %struct.png_ihdr }

@passes = common dso_local global i32* null, align 8
@IMAGE_PROCESS_END = common dso_local global i32 0, align 4
@IMAGE_PROCESS_NEXT = common dso_local global i32 0, align 4
@IMAGE_PROCESS_ERROR_END = common dso_local global i32 0, align 4
@IMAGE_PROCESS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.png_ihdr*, %struct.rpng_process*)* @png_reverse_filter_adam7_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_reverse_filter_adam7_iterate(i32** %0, %struct.png_ihdr* %1, %struct.rpng_process* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.png_ihdr*, align 8
  %7 = alloca %struct.rpng_process*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.png_ihdr* %1, %struct.png_ihdr** %6, align 8
  store %struct.rpng_process* %2, %struct.rpng_process** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %12 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32*, i32** @passes, align 8
  %15 = call i64 @ARRAY_SIZE(i32* %14)
  %16 = icmp ult i64 %13, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32**, i32*** %5, align 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @IMAGE_PROCESS_END, align 4
  store i32 %23, i32* %4, align 4
  br label %127

24:                                               ; preds = %3
  %25 = load %struct.png_ihdr*, %struct.png_ihdr** %6, align 8
  %26 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %27 = call i32 @png_reverse_filter_init(%struct.png_ihdr* %25, %struct.rpng_process* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @IMAGE_PROCESS_NEXT, align 4
  store i32 %31, i32* %4, align 4
  br label %127

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @IMAGE_PROCESS_ERROR_END, align 4
  store i32 %36, i32* %4, align 4
  br label %127

37:                                               ; preds = %32
  %38 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %39 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %38, i32 0, i32 9
  %40 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %41 = call i32 @png_reverse_filter_init(%struct.png_ihdr* %39, %struct.rpng_process* %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @IMAGE_PROCESS_ERROR, align 4
  store i32 %44, i32* %4, align 4
  br label %127

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %53, %45
  %47 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %48 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %47, i32 0, i32 5
  %49 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %50 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %49, i32 0, i32 9
  %51 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %52 = call i32 @png_reverse_filter_regular_iterate(i32** %48, %struct.png_ihdr* %50, %struct.rpng_process* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @IMAGE_PROCESS_NEXT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %46, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @IMAGE_PROCESS_ERROR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @IMAGE_PROCESS_ERROR_END, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %57
  %66 = load i32, i32* @IMAGE_PROCESS_ERROR, align 4
  store i32 %66, i32* %4, align 4
  br label %127

67:                                               ; preds = %61
  %68 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %69 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %72 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 8
  %77 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %78 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %81 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  %86 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %87 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %90 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.png_ihdr*, %struct.png_ihdr** %6, align 8
  %97 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %98 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %101 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %104 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** @passes, align 8
  %107 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %108 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = call i32 @png_reverse_filter_adam7_deinterlace_pass(i32* %95, %struct.png_ihdr* %96, i32* %99, i32 %102, i32 %105, i32* %110)
  %112 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %113 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @free(i32* %114)
  %116 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %117 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %116, i32 0, i32 5
  store i32* null, i32** %117, align 8
  %118 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %119 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %118, i32 0, i32 4
  store i32 0, i32* %119, align 4
  %120 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %121 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %120, i32 0, i32 3
  store i32 0, i32* %121, align 8
  %122 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %123 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = load %struct.rpng_process*, %struct.rpng_process** %7, align 8
  %125 = getelementptr inbounds %struct.rpng_process, %struct.rpng_process* %124, i32 0, i32 1
  store i32 0, i32* %125, align 8
  %126 = load i32, i32* @IMAGE_PROCESS_NEXT, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %67, %65, %43, %35, %30, %22
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @png_reverse_filter_init(%struct.png_ihdr*, %struct.rpng_process*) #1

declare dso_local i32 @png_reverse_filter_regular_iterate(i32**, %struct.png_ihdr*, %struct.rpng_process*) #1

declare dso_local i32 @png_reverse_filter_adam7_deinterlace_pass(i32*, %struct.png_ihdr*, i32*, i32, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
