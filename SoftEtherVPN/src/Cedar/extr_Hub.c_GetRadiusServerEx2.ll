; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_GetRadiusServerEx2.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_GetRadiusServerEx2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i32, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetRadiusServerEx2(%struct.TYPE_5__* %0, i8* %1, i64 %2, i64* %3, i8* %4, i64 %5, i64* %6, i8* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64* %3, i64** %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i64* %6, i64** %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %24 = icmp eq %struct.TYPE_5__* %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %9
  %26 = load i8*, i8** %12, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load i64*, i64** %14, align 8
  %30 = icmp eq i64* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** %15, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64*, i64** %17, align 8
  %36 = icmp eq i64* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31, %28, %25, %9
  store i32 0, i32* %10, align 4
  br label %105

38:                                               ; preds = %34
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @Lock(i32 %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %99

47:                                               ; preds = %38
  %48 = load i8*, i8** %12, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @StrCpy(i8* %48, i64 %49, i8* %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %14, align 8
  store i64 %56, i64* %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %17, align 8
  store i64 %60, i64* %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %22, align 8
  %69 = load i64, i64* %22, align 8
  %70 = call i8* @ZeroMalloc(i64 %69)
  store i8* %70, i8** %21, align 8
  %71 = load i8*, i8** %21, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @Copy(i8* %71, i32 %76, i32 %81)
  %83 = load i8*, i8** %15, align 8
  %84 = load i64, i64* %16, align 8
  %85 = load i8*, i8** %21, align 8
  %86 = call i32 @StrCpy(i8* %83, i64 %84, i8* %85)
  %87 = load i8*, i8** %21, align 8
  %88 = call i32 @Free(i8* %87)
  %89 = load i8*, i8** %18, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %47
  %92 = load i8*, i8** %18, align 8
  %93 = load i64, i64* %19, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @StrCpy(i8* %92, i64 %93, i8* %96)
  br label %98

98:                                               ; preds = %91, %47
  store i32 1, i32* %20, align 4
  br label %99

99:                                               ; preds = %98, %38
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @Unlock(i32 %102)
  %104 = load i32, i32* %20, align 4
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %99, %37
  %106 = load i32, i32* %10, align 4
  ret i32 %106
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @StrCpy(i8*, i64, i8*) #1

declare dso_local i8* @ZeroMalloc(i64) #1

declare dso_local i32 @Copy(i8*, i32, i32) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
