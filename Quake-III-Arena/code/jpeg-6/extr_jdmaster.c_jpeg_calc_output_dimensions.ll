; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdmaster.c_jpeg_calc_output_dimensions.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdmaster.c_jpeg_calc_output_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8* }

@DSTATE_READY = common dso_local global i64 0, align 8
@JERR_BAD_STATE = common dso_local global i32 0, align 4
@RGB_PIXELSIZE = common dso_local global i32 0, align 4
@DCTSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jpeg_calc_output_dimensions(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DSTATE_READY, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = load i32, i32* @JERR_BAD_STATE, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @ERREXIT1(%struct.TYPE_7__* %9, i32 %10, i64 %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 14
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 15
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 12
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 13
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %42 [
    i32 131, label %29
    i32 130, label %32
    i32 128, label %36
    i32 132, label %39
    i32 129, label %39
  ]

29:                                               ; preds = %15
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 8
  store i32 1, i32* %31, align 4
  br label %48

32:                                               ; preds = %15
  %33 = load i32, i32* @RGB_PIXELSIZE, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  br label %48

36:                                               ; preds = %15
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 8
  store i32 3, i32* %38, align 4
  br label %48

39:                                               ; preds = %15, %15
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 8
  store i32 4, i32* %41, align 4
  br label %48

42:                                               ; preds = %15
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %39, %36, %32, %29
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 11
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %54, %53
  %59 = phi i32 [ 1, %53 ], [ %57, %54 ]
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = call i64 @use_merged_upsample(%struct.TYPE_7__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 4
  br label %74

71:                                               ; preds = %58
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 10
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %65
  ret void
}

declare dso_local i32 @ERREXIT1(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i64 @use_merged_upsample(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
