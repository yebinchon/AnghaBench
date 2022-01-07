; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_reorg_layer.c_make_reorg_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_reorg_layer.c_make_reorg_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@REORG = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"reorg              %4d   ->  %4d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"reorg              /%2d  %4d x%4d x%4d   ->  %4d x%4d x%4d\0A\00", align 1
@forward_reorg_layer = common dso_local global i32 0, align 4
@backward_reorg_layer = common dso_local global i32 0, align 4
@backward_reorg_layer_gpu = common dso_local global i32 0, align 4
@forward_reorg_layer_gpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_reorg_layer(%struct.TYPE_3__* noalias sret %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 %8, i32* %17, align 4
  %19 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 112, i1 false)
  %20 = load i32, i32* @REORG, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 21
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %14, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %17, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %12, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %13, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %16, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %9
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %14, align 4
  %41 = mul nsw i32 %39, %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %14, align 4
  %45 = mul nsw i32 %43, %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sdiv i32 %47, %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  store i32 %51, i32* %52, align 4
  br label %68

53:                                               ; preds = %9
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %14, align 4
  %56 = sdiv i32 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %14, align 4
  %60 = sdiv i32 %58, %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = mul nsw i32 %63, %64
  %66 = mul nsw i32 %62, %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %53, %38
  %69 = load i32, i32* %15, align 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 10
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %72, %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %75, %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %13, align 4
  %84 = mul nsw i32 %82, %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %68
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  store i32 0, i32* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  store i32 0, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %94, %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %89, %68
  %100 = load i32, i32* %17, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32, i32* @stderr, align 4
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %107)
  br label %122

109:                                              ; preds = %99
  %110 = load i32, i32* @stderr, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %112, i32 %113, i32 %114, i32 %116, i32 %118, i32 %120)
  br label %122

122:                                              ; preds = %109, %102
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 11
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %10, align 4
  %126 = mul nsw i32 %124, %125
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = call i8* @calloc(i32 %127, i32 4)
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 15
  store i8* %128, i8** %129, align 8
  %130 = load i32, i32* %18, align 4
  %131 = call i8* @calloc(i32 %130, i32 4)
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 13
  store i8* %131, i8** %132, align 8
  %133 = load i32, i32* @forward_reorg_layer, align 4
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 20
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* @backward_reorg_layer, align 4
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 19
  store i32 %135, i32* %136, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #2

declare dso_local i8* @calloc(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
