; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_super.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_load_data_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_15__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_data_super(%struct.TYPE_16__* noalias sret %0, i8** %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__, align 4
  %16 = alloca %struct.TYPE_15__, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_15__, align 4
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 %6, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %7
  %22 = load i8**, i8*** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i8** @get_random_paths(i8** %22, i32 %23, i32 %24)
  store i8** %25, i8*** %8, align 8
  br label %26

26:                                               ; preds = %21, %7
  %27 = bitcast %struct.TYPE_16__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 48, i1 false)
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i8* @calloc(i32 %32, i32 8)
  %34 = bitcast i8* %33 to i32*
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = mul nsw i32 %37, %38
  %40 = mul nsw i32 %39, 3
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @calloc(i32 %46, i32 8)
  %48 = bitcast i8* %47 to i32*
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 %55, %56
  %58 = mul nsw i32 %57, 3
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %117, %26
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %120

65:                                               ; preds = %61
  %66 = load i8**, i8*** %8, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @load_image_color(i8* %70, i32 0, i32 0)
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %13, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 %76, %77
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @random_crop_image(i32 %80, i32 %75, i32 %78)
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  %83 = call i32 (...) @rand()
  %84 = srem i32 %83, 2
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %65
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @flip_image(i32 %89)
  br label %91

91:                                               ; preds = %87, %65
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @resize_image(i32 %95, i32 %92, i32 %93)
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %0, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @free_image(i32 %115)
  br label %117

117:                                              ; preds = %91
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %61

120:                                              ; preds = %61
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i8**, i8*** %8, align 8
  %125 = call i32 @free(i8** %124)
  br label %126

126:                                              ; preds = %123, %120
  ret void
}

declare dso_local i8** @get_random_paths(i8**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @load_image_color(i8*, i32, i32) #1

declare dso_local i32 @random_crop_image(i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @flip_image(i32) #1

declare dso_local i32 @resize_image(i32, i32, i32) #1

declare dso_local i32 @free_image(i32) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
