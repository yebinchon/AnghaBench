; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_ScuDspSaveMD.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_ScuDspSaveMD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32** }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@ScuDsp = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScuDspSaveMD(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %115

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %115

17:                                               ; preds = %12
  %18 = call i64 @malloc(i32 8)
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %8, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @fclose(i32* %22)
  store i32 -2, i32* %3, align 4
  br label %115

24:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %103, %24
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 64
  br i1 %27, label %28, label %106

28:                                               ; preds = %25
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ScuDsp, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 24
  %41 = sext i32 %40 to i64
  %42 = load i64*, i64** %8, align 8
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %43, 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  store i64 %41, i64* %46, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ScuDsp, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 16
  %59 = sext i32 %58 to i64
  %60 = load i64*, i64** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 %61, 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %60, i64 %64
  store i64 %59, i64* %65, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ScuDsp, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 8
  %78 = sext i32 %77 to i64
  %79 = load i64*, i64** %8, align 8
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 %80, 4
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %79, i64 %83
  store i64 %78, i64* %84, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ScuDsp, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64*, i64** %8, align 8
  %98 = load i32, i32* %7, align 4
  %99 = mul nsw i32 %98, 4
  %100 = add nsw i32 %99, 3
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %97, i64 %101
  store i64 %96, i64* %102, align 8
  br label %103

103:                                              ; preds = %28
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %25

106:                                              ; preds = %25
  %107 = load i64*, i64** %8, align 8
  %108 = bitcast i64* %107 to i8*
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @fwrite(i8* %108, i32 1, i32 8, i32* %109)
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @fclose(i32* %111)
  %113 = load i64*, i64** %8, align 8
  %114 = call i32 @free(i64* %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %106, %21, %16, %11
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
