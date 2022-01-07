; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_sort_coins.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_sort_coins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64)* @sort_coins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_coins(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %5, align 8
  store i8 0, i8* %6, align 1
  br label %11

11:                                               ; preds = %89, %2
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 1
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ true, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %90

20:                                               ; preds = %18
  %21 = load i64, i64* %5, align 8
  %22 = mul i64 %21, 10
  %23 = udiv i64 %22, 13
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %24, 9
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %27, 10
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %20
  store i64 11, i64* %5, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i64, i64* %5, align 8
  %32 = icmp ult i64 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i64 1, i64* %5, align 8
  br label %34

34:                                               ; preds = %33, %30
  store i8 0, i8* %6, align 1
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %86, %34
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = sub i64 %37, %38
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %42, %43
  store i64 %44, i64* %8, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load float, float* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 4
  %55 = fcmp olt float %49, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %41
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load float, float* %60, align 4
  store float %61, float* %9, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load float, float* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store float %66, float* %70, align 4
  %71 = load float, float* %9, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store float %71, float* %75, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = call i32 @uivector_swap(i32* %79, i32* %83)
  store i8 1, i8* %6, align 1
  br label %85

85:                                               ; preds = %56, %41
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %7, align 8
  br label %35

89:                                               ; preds = %35
  br label %11

90:                                               ; preds = %18
  ret void
}

declare dso_local i32 @uivector_swap(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
