; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_store_message.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_store_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64*, i32*, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"read: \00", align 1
@sep = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"write: \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"pngvalid: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*, i8*, i64, i64, i8*)* @store_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_message(%struct.TYPE_5__* %0, i32* %1, i8* %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %46

15:                                               ; preds = %6
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %16, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @safecat(i8* %22, i64 %23, i64 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %25, i64* %11, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %21
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @safecat(i8* %31, i64 %32, i64 %33, i8* %38)
  store i64 %39, i64* %11, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i8*, i8** @sep, align 8
  %44 = call i64 @safecat(i8* %40, i64 %41, i64 %42, i8* %43)
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %30, %21
  br label %78

46:                                               ; preds = %15, %6
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %50, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i64 @safecat(i8* %56, i64 %57, i64 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i64 %59, i64* %11, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @safecat(i8* %60, i64 %61, i64 %62, i8* %65)
  store i64 %66, i64* %11, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i8*, i8** @sep, align 8
  %71 = call i64 @safecat(i8* %67, i64 %68, i64 %69, i8* %70)
  store i64 %71, i64* %11, align 8
  br label %77

72:                                               ; preds = %49, %46
  %73 = load i8*, i8** %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i64 @safecat(i8* %73, i64 %74, i64 %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %72, %55
  br label %78

78:                                               ; preds = %77, %45
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load i8*, i8** %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = bitcast i64* %91 to i8*
  %93 = call i64 @safecat(i8* %86, i64 %87, i64 %88, i8* %92)
  store i64 %93, i64* %11, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load i8*, i8** @sep, align 8
  %98 = call i64 @safecat(i8* %94, i64 %95, i64 %96, i8* %97)
  store i64 %98, i64* %11, align 8
  br label %99

99:                                               ; preds = %85, %78
  %100 = load i8*, i8** %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = call i64 @safecat(i8* %100, i64 %101, i64 %102, i8* %103)
  store i64 %104, i64* %11, align 8
  %105 = load i64, i64* %11, align 8
  ret i64 %105
}

declare dso_local i64 @safecat(i8*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
