; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_image_transform_png_set_shift_set.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_image_transform_png_set_shift_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, %struct.TYPE_11__*, i32, i32)* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@data = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32)* @image_transform_png_set_shift_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_transform_png_set_shift_set(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @random_mod(i32 %14)
  %16 = add nsw i64 %15, 1
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @data, i32 0, i32 4), align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @random_mod(i32 %18)
  %20 = add nsw i64 %19, 1
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @data, i32 0, i32 3), align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @random_mod(i32 %22)
  %24 = add nsw i64 %23, 1
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @data, i32 0, i32 2), align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @random_mod(i32 %26)
  %28 = add nsw i64 %27, 1
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @data, i32 0, i32 1), align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @random_mod(i32 %30)
  %32 = add nsw i64 %31, 1
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @data, i32 0, i32 0), align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @png_set_shift(i32 %34, %struct.TYPE_14__* @data)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_13__*, %struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_13__*, %struct.TYPE_11__*, i32, i32)** %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 %40(%struct.TYPE_13__* %43, %struct.TYPE_11__* %44, i32 %45, i32 %46)
  ret void
}

declare dso_local i64 @random_mod(i32) #1

declare dso_local i32 @png_set_shift(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
