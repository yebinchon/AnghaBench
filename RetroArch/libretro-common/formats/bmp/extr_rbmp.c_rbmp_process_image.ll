; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/bmp/extr_rbmp.c_rbmp_process_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/bmp/extr_rbmp.c_rbmp_process_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@IMAGE_PROCESS_ERROR = common dso_local global i32 0, align 4
@IMAGE_PROCESS_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rbmp_process_image(%struct.TYPE_3__* %0, i8** %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* @IMAGE_PROCESS_ERROR, align 4
  store i32 %16, i32* %6, align 4
  br label %43

17:                                               ; preds = %5
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32*, i32** %10, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i64 @rbmp_load_from_memory(i32 %20, i32 %22, i32* %23, i32* %24, i32* %12, i32 4)
  %26 = inttoptr i64 %25 to i32*
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i8**, i8*** %8, align 8
  store i8* %32, i8** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rbmp_convert_frame(i32* %36, i32 %38, i32 %40)
  %42 = load i32, i32* @IMAGE_PROCESS_END, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %17, %15
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i64 @rbmp_load_from_memory(i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @rbmp_convert_frame(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
