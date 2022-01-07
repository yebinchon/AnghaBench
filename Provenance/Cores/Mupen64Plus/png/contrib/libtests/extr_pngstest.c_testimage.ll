; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngstest.c_testimage.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngstest.c_testimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i64*, i64, i32*, i32*, i64, i64, i32* }
%struct.TYPE_13__ = type { i32 }

@FORMAT_COUNT = common dso_local global i32 0, align 4
@PNG_FORMAT_FLAG_ALPHA = common dso_local global i32 0, align 4
@PNG_FORMAT_FLAG_COLORMAP = common dso_local global i32 0, align 4
@PNG_FORMAT_FLAG_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32*)* @testimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testimage(%struct.TYPE_14__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = call i32 @checkopaque(%struct.TYPE_14__* %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = bitcast %struct.TYPE_14__* %8 to i8*
  %18 = bitcast %struct.TYPE_14__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 64, i1 false)
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 8
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 7
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 5
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  store i64 0, i64* %33, align 8
  %34 = call i32 @newimage(%struct.TYPE_14__* %10)
  store i32 1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %103, %3
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @FORMAT_COUNT, align 4
  %38 = mul nsw i32 2, %37
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %106

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 1
  %44 = call i64 @format_isset(i32* %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %102

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %11, align 4
  store i32* null, i32** %13, align 8
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @PNG_FORMAT_FLAG_ALPHA, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PNG_FORMAT_FLAG_ALPHA, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %57
  %66 = call i32 @random_color(i32* %12)
  store i32* %12, i32** %13, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @PNG_FORMAT_FLAG_COLORMAP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @PNG_FORMAT_FLAG_LINEAR, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %76, %71, %65
  br label %83

80:                                               ; preds = %57, %52
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %79
  br label %84

84:                                               ; preds = %83, %46
  %85 = call i32 @resetimage(%struct.TYPE_14__* %8)
  %86 = load i32, i32* %5, align 4
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @read_file(%struct.TYPE_14__* %8, i32 %88, i32* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %84
  br label %106

94:                                               ; preds = %84
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @compare_two_images(%struct.TYPE_14__* %95, %struct.TYPE_14__* %8, i32 0, i32* %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  br label %106

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %40
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %35

106:                                              ; preds = %100, %93, %35
  %107 = call i32 @freeimage(%struct.TYPE_14__* %10)
  %108 = call i32 @freeimage(%struct.TYPE_14__* %8)
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @checkopaque(%struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @newimage(%struct.TYPE_14__*) #1

declare dso_local i64 @format_isset(i32*, i32) #1

declare dso_local i32 @random_color(i32*) #1

declare dso_local i32 @resetimage(%struct.TYPE_14__*) #1

declare dso_local i32 @read_file(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @compare_two_images(%struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @freeimage(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
