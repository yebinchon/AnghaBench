; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsedaala.c_daala_match_pix_fmt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsedaala.c_daala_match_pix_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64*, i64*, i32 }
%struct.DaalaPixFmtMap = type { i64, i32, i64*, i64* }

@list_fmts = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.DaalaPixFmtMap*)* @daala_match_pix_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daala_match_pix_fmt(%struct.DaalaPixFmtMap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.DaalaPixFmtMap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.DaalaPixFmtMap* %0, %struct.DaalaPixFmtMap** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %103, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @list_fmts, align 8
  %10 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_3__* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %106

12:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  %13 = load %struct.DaalaPixFmtMap*, %struct.DaalaPixFmtMap** %3, align 8
  %14 = getelementptr inbounds %struct.DaalaPixFmtMap, %struct.DaalaPixFmtMap* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @list_fmts, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %103

24:                                               ; preds = %12
  %25 = load %struct.DaalaPixFmtMap*, %struct.DaalaPixFmtMap** %3, align 8
  %26 = getelementptr inbounds %struct.DaalaPixFmtMap, %struct.DaalaPixFmtMap* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @list_fmts, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %27, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %103

36:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %86, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.DaalaPixFmtMap*, %struct.DaalaPixFmtMap** %3, align 8
  %40 = getelementptr inbounds %struct.DaalaPixFmtMap, %struct.DaalaPixFmtMap* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %37
  %44 = load %struct.DaalaPixFmtMap*, %struct.DaalaPixFmtMap** %3, align 8
  %45 = getelementptr inbounds %struct.DaalaPixFmtMap, %struct.DaalaPixFmtMap* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @list_fmts, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %50, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %43
  br label %86

63:                                               ; preds = %43
  %64 = load %struct.DaalaPixFmtMap*, %struct.DaalaPixFmtMap** %3, align 8
  %65 = getelementptr inbounds %struct.DaalaPixFmtMap, %struct.DaalaPixFmtMap* %64, i32 0, i32 3
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @list_fmts, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %70, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %63
  br label %86

83:                                               ; preds = %63
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %83, %82, %62
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %37

89:                                               ; preds = %37
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.DaalaPixFmtMap*, %struct.DaalaPixFmtMap** %3, align 8
  %92 = getelementptr inbounds %struct.DaalaPixFmtMap, %struct.DaalaPixFmtMap* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @list_fmts, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %2, align 4
  br label %107

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %35, %23
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %7

106:                                              ; preds = %7
  store i32 -1, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %95
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
