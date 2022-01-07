; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_add_renditions_to_variant.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_add_renditions_to_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.rendition** }
%struct.rendition = type { i32, %struct.rendition*, i32 }
%struct.variant = type { %struct.TYPE_5__**, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.variant*, i32, i8*)* @add_renditions_to_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_renditions_to_variant(%struct.TYPE_4__* %0, %struct.variant* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.variant*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rendition*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.variant* %1, %struct.variant** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %68, %4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.rendition**, %struct.rendition*** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rendition*, %struct.rendition** %20, i64 %22
  %24 = load %struct.rendition*, %struct.rendition** %23, align 8
  store %struct.rendition* %24, %struct.rendition** %10, align 8
  %25 = load %struct.rendition*, %struct.rendition** %10, align 8
  %26 = getelementptr inbounds %struct.rendition, %struct.rendition* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %17
  %31 = load %struct.rendition*, %struct.rendition** %10, align 8
  %32 = getelementptr inbounds %struct.rendition, %struct.rendition* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strcmp(i32 %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %67, label %37

37:                                               ; preds = %30
  %38 = load %struct.rendition*, %struct.rendition** %10, align 8
  %39 = getelementptr inbounds %struct.rendition, %struct.rendition* %38, i32 0, i32 1
  %40 = load %struct.rendition*, %struct.rendition** %39, align 8
  %41 = icmp ne %struct.rendition* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.variant*, %struct.variant** %6, align 8
  %44 = getelementptr inbounds %struct.variant, %struct.variant* %43, i32 0, i32 0
  %45 = load %struct.variant*, %struct.variant** %6, align 8
  %46 = getelementptr inbounds %struct.variant, %struct.variant* %45, i32 0, i32 1
  %47 = load %struct.rendition*, %struct.rendition** %10, align 8
  %48 = getelementptr inbounds %struct.rendition, %struct.rendition* %47, i32 0, i32 1
  %49 = load %struct.rendition*, %struct.rendition** %48, align 8
  %50 = call i32 @dynarray_add(%struct.TYPE_5__*** %44, i32* %46, %struct.rendition* %49)
  br label %66

51:                                               ; preds = %37
  %52 = load %struct.variant*, %struct.variant** %6, align 8
  %53 = getelementptr inbounds %struct.variant, %struct.variant* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %54, i64 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load %struct.variant*, %struct.variant** %6, align 8
  %59 = getelementptr inbounds %struct.variant, %struct.variant* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %60, i64 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.rendition*, %struct.rendition** %10, align 8
  %65 = call i32 @dynarray_add(%struct.TYPE_5__*** %57, i32* %63, %struct.rendition* %64)
  br label %66

66:                                               ; preds = %51, %42
  br label %67

67:                                               ; preds = %66, %30, %17
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %11

71:                                               ; preds = %11
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @dynarray_add(%struct.TYPE_5__***, i32*, %struct.rendition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
