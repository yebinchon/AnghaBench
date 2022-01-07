; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_readChunk_PLTE.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_readChunk_PLTE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i64)* @readChunk_PLTE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readChunk_PLTE(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @lodepng_free(i8* %17)
  br label %19

19:                                               ; preds = %14, %3
  %20 = load i64, i64* %7, align 8
  %21 = udiv i64 %20, 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i64 @lodepng_malloc(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %19
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  store i32 83, i32* %4, align 4
  br label %114

45:                                               ; preds = %37, %19
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %48, 256
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 38, i32* %4, align 4
  br label %114

51:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %110, %51
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %113

59:                                               ; preds = %52
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = mul i32 4, %69
  %71 = add i32 %70, 0
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %68, i64 %72
  store i8 %65, i8* %73, align 1
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = mul i32 4, %83
  %85 = add i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  store i8 %79, i8* %87, align 1
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = zext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = mul i32 4, %97
  %99 = add i32 %98, 2
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  store i8 %93, i8* %101, align 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = mul i32 4, %105
  %107 = add i32 %106, 3
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %104, i64 %108
  store i8 -1, i8* %109, align 1
  br label %110

110:                                              ; preds = %59
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %52

113:                                              ; preds = %52
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %50, %42
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @lodepng_free(i8*) #1

declare dso_local i64 @lodepng_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
