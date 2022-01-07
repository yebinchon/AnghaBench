; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_cart.c_pm_seek.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_cart.c_pm_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PMT_UNCOMPRESSED = common dso_local global i64 0, align 8
@PMT_ZIP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Decompressing data...\00", align 1
@PMT_CSO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_seek(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PMT_UNCOMPRESSED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @fseek(i32 %18, i64 %19, i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ftell(i32 %24)
  store i32 %25, i32* %4, align 4
  br label %97

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PMT_ZIP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %26
  %33 = load i64, i64* %6, align 8
  %34 = icmp sgt i64 %33, 6291456
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = ptrtoint %struct.TYPE_7__* %38 to i32
  %40 = call i64 @gztell(i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp sgt i64 %47, 6291456
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %35
  %50 = call i32 @PicoMessage(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = ptrtoint %struct.TYPE_7__* %55 to i32
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @gzseek(i32 %56, i64 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %97

60:                                               ; preds = %26
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PMT_CSO, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %60
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %9, align 8
  %70 = load i32, i32* %7, align 4
  switch i32 %70, label %91 [
    i32 130, label %71
    i32 128, label %77
    i32 129, label %81
  ]

71:                                               ; preds = %66
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %72
  store i64 %76, i64* %74, align 8
  br label %91

77:                                               ; preds = %66
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %91

81:                                               ; preds = %66
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %6, align 8
  %88 = sub nsw i64 %86, %87
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %66, %81, %77, %71
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %4, align 4
  br label %97

96:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %91, %52, %15
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @fseek(i32, i64, i32) #1

declare dso_local i32 @ftell(i32) #1

declare dso_local i64 @gztell(i32) #1

declare dso_local i32 @PicoMessage(i8*) #1

declare dso_local i32 @gzseek(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
