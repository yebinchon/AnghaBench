; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_darknet.c_mkimg.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_darknet.c_mkimg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s/gen_%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mkimg(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_18__, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [256 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call %struct.TYPE_17__* @load_network(i8* %23, i8* %24, i32 0)
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %13, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_18__* @get_weights(i32 %31)
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %14, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %110, %6
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %113

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @make_image(i32 %44, i32 %45, i32 3)
  %47 = bitcast %struct.TYPE_18__* %17 to i64*
  store i64 %46, i64* %47, align 4
  %48 = bitcast %struct.TYPE_18__* %17 to i64*
  %49 = load i64, i64* %48, align 4
  %50 = call i32 @fill_image(i64 %49, double 5.000000e-01)
  store i32 0, i32* %18, align 4
  br label %51

51:                                               ; preds = %95, %43
  %52 = load i32, i32* %18, align 4
  %53 = icmp slt i32 %52, 100
  br i1 %53, label %54, label %98

54:                                               ; preds = %51
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %56 = call i32 (...) @rand()
  %57 = load i32, i32* %15, align 4
  %58 = srem i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i64 %59
  %61 = bitcast %struct.TYPE_18__* %60 to i64*
  %62 = load i64, i64* %61, align 4
  %63 = call i64 @copy_image(i64 %62)
  %64 = bitcast %struct.TYPE_18__* %19 to i64*
  store i64 %63, i64* %64, align 4
  %65 = call i32 (...) @rand()
  %66 = srem i32 %65, 4
  %67 = bitcast %struct.TYPE_18__* %19 to i64*
  %68 = load i64, i64* %67, align 4
  %69 = call i32 @rotate_image_cw(i64 %68, i32 %66)
  %70 = bitcast %struct.TYPE_18__* %19 to i64*
  %71 = load i64, i64* %70, align 4
  %72 = call i32 @random_distort_image(i64 %71, i32 1, double 1.500000e+00, double 1.500000e+00)
  %73 = call i32 (...) @rand()
  %74 = load i32, i32* %10, align 4
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %74, %76
  %78 = srem i32 %73, %77
  store i32 %78, i32* %20, align 4
  %79 = call i32 (...) @rand()
  %80 = load i32, i32* %9, align 4
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %80, %82
  %84 = srem i32 %79, %83
  store i32 %84, i32* %21, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %21, align 4
  %87 = bitcast %struct.TYPE_18__* %19 to i64*
  %88 = load i64, i64* %87, align 4
  %89 = bitcast %struct.TYPE_18__* %17 to i64*
  %90 = load i64, i64* %89, align 4
  %91 = call i32 @ghost_image(i64 %88, i64 %90, i32 %85, i32 %86)
  %92 = bitcast %struct.TYPE_18__* %19 to i64*
  %93 = load i64, i64* %92, align 4
  %94 = call i32 @free_image(i64 %93)
  br label %95

95:                                               ; preds = %54
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %18, align 4
  br label %51

98:                                               ; preds = %51
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %100 = load i8*, i8** %12, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @sprintf(i8* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %100, i32 %101)
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %22, i64 0, i64 0
  %104 = bitcast %struct.TYPE_18__* %17 to i64*
  %105 = load i64, i64* %104, align 4
  %106 = call i32 @save_image(i64 %105, i8* %103)
  %107 = bitcast %struct.TYPE_18__* %17 to i64*
  %108 = load i64, i64* %107, align 4
  %109 = call i32 @free_image(i64 %108)
  br label %110

110:                                              ; preds = %98
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %16, align 4
  br label %39

113:                                              ; preds = %39
  ret void
}

declare dso_local %struct.TYPE_17__* @load_network(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_18__* @get_weights(i32) #1

declare dso_local i64 @make_image(i32, i32, i32) #1

declare dso_local i32 @fill_image(i64, double) #1

declare dso_local i64 @copy_image(i64) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @rotate_image_cw(i64, i32) #1

declare dso_local i32 @random_distort_image(i64, i32, double, double) #1

declare dso_local i32 @ghost_image(i64, i64, i32, i32) #1

declare dso_local i32 @free_image(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @save_image(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
