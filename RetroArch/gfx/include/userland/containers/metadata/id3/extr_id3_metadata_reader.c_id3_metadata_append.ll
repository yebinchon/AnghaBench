; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/metadata/id3/extr_id3_metadata_reader.c_id3_metadata_append.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/metadata/id3/extr_id3_metadata_reader.c_id3_metadata_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_10__*, i64, i32)* @id3_metadata_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @id3_metadata_append(%struct.TYPE_10__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %31, %3
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %21, i64 %23
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %18, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %34

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %11

34:                                               ; preds = %29, %11
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %102

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @MIN(i32 %42, i32 512)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = add i64 24, %45
  %47 = trunc i64 %46 to i32
  %48 = call %struct.TYPE_11__* @malloc(i32 %47)
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %8, align 8
  %49 = icmp eq %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %102

51:                                               ; preds = %41
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = mul i64 8, %59
  %61 = trunc i64 %60 to i32
  %62 = call %struct.TYPE_11__** @realloc(%struct.TYPE_11__** %54, i32 %61)
  store %struct.TYPE_11__** %62, %struct.TYPE_11__*** %9, align 8
  %63 = icmp eq %struct.TYPE_11__** %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = call i32 @free(%struct.TYPE_11__* %65)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %102

67:                                               ; preds = %51
  %68 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store %struct.TYPE_11__** %68, %struct.TYPE_11__*** %70, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = add i64 24, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memset(%struct.TYPE_11__* %71, i32 0, i32 %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %80, i64 %84
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %85, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i64 1
  %91 = bitcast %struct.TYPE_11__* %90 to i8*
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %4, align 8
  br label %102

102:                                              ; preds = %67, %64, %50, %40
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %103
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_11__* @malloc(i32) #1

declare dso_local %struct.TYPE_11__** @realloc(%struct.TYPE_11__**, i32) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
