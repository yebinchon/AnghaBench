; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_shortcut_layer.c_make_shortcut_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_shortcut_layer.c_make_shortcut_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"res  %3d                %4d x%4d x%4d   ->  %4d x%4d x%4d\0A\00", align 1
@SHORTCUT = common dso_local global i32 0, align 4
@forward_shortcut_layer = common dso_local global i32 0, align 4
@backward_shortcut_layer = common dso_local global i32 0, align 4
@backward_shortcut_layer_gpu = common dso_local global i32 0, align 4
@forward_shortcut_layer_gpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_shortcut_layer(%struct.TYPE_3__* noalias sret %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 %8, i32* %17, align 4
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* %17, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = bitcast %struct.TYPE_3__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 96, i1 false)
  %28 = load i32, i32* @SHORTCUT, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 18
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %15, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %16, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %17, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %12, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %13, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %14, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %14, align 4
  %48 = mul nsw i32 %46, %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 9
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 %56, %57
  %59 = call i8* @calloc(i32 %58, i32 4)
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 12
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 %62, %63
  %65 = call i8* @calloc(i32 %64, i32 4)
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 10
  store i8* %65, i8** %66, align 8
  %67 = load i32, i32* @forward_shortcut_layer, align 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 17
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @backward_shortcut_layer, align 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 16
  store i32 %69, i32* %70, align 8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
