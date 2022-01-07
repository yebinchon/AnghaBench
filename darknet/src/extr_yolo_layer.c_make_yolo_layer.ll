; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_make_yolo_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_make_yolo_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double*, i32*, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i32, i32 }

@YOLO = common dso_local global i32 0, align 4
@forward_yolo_layer = common dso_local global i32 0, align 4
@backward_yolo_layer = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"yolo\0A\00", align 1
@backward_yolo_layer_gpu = common dso_local global i32 0, align 4
@forward_yolo_layer_gpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_yolo_layer(%struct.TYPE_3__* noalias sret %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  store i32 %7, i32* %15, align 4
  %17 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 144, i1 false)
  %18 = load i32, i32* @YOLO, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 25
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %12, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %13, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %15, align 4
  %32 = add nsw i32 %31, 4
  %33 = add nsw i32 %32, 1
  %34 = mul nsw i32 %30, %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  store i32 %43, i32* %44, align 8
  %45 = load i32, i32* %15, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  store i32 %45, i32* %46, align 4
  %47 = call i8* @calloc(i32 1, i32 4)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 24
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = mul nsw i32 %49, 2
  %51 = call i8* @calloc(i32 %50, i32 4)
  %52 = bitcast i8* %51 to double*
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 10
  store double* %52, double** %53, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %8
  %57 = load i32*, i32** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  store i32* %57, i32** %58, align 8
  br label %79

59:                                               ; preds = %8
  %60 = load i32, i32* %12, align 4
  %61 = call i8* @calloc(i32 %60, i32 4)
  %62 = bitcast i8* %61 to i32*
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  store i32* %62, i32** %63, align 8
  store i32 0, i32* %16, align 4
  br label %64

64:                                               ; preds = %75, %59
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32, i32* %16, align 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %69, i32* %74, align 4
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %64

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %56
  %80 = load i32, i32* %12, align 4
  %81 = mul nsw i32 %80, 2
  %82 = call i8* @calloc(i32 %81, i32 4)
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 23
  store i8* %82, i8** %83, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %12, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 4
  %91 = add nsw i32 %90, 1
  %92 = mul nsw i32 %88, %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 13
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 14
  store i32 450, i32* %97, align 8
  %98 = load i32, i32* %9, align 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %98, %100
  %102 = call i8* @calloc(i32 %101, i32 4)
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 15
  store i8* %102, i8** %103, align 8
  %104 = load i32, i32* %9, align 4
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %104, %106
  %108 = call i8* @calloc(i32 %107, i32 4)
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 17
  store i8* %108, i8** %109, align 8
  store i32 0, i32* %16, align 4
  br label %110

110:                                              ; preds = %121, %79
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %13, align 4
  %113 = mul nsw i32 %112, 2
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 10
  %117 = load double*, double** %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %117, i64 %119
  store double 5.000000e-01, double* %120, align 8
  br label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %110

124:                                              ; preds = %110
  %125 = load i32, i32* @forward_yolo_layer, align 4
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 22
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* @backward_yolo_layer, align 4
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 21
  store i32 %127, i32* %128, align 8
  %129 = load i32, i32* @stderr, align 4
  %130 = call i32 @fprintf(i32 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %131 = call i32 @srand(i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @calloc(i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @srand(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
