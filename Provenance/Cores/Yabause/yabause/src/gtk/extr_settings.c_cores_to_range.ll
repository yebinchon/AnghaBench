; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_settings.c_cores_to_range.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_settings.c_cores_to_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cores_to_range(i8* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %4, align 8
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %94

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_6__**
  store %struct.TYPE_6__** %15, %struct.TYPE_6__*** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %16, i64 %18
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %6, align 8
  br label %21

21:                                               ; preds = %24, %13
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %27, i64 %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %6, align 8
  br label %21

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 16, %35
  %37 = trunc i64 %36 to i32
  %38 = call %struct.TYPE_5__* @malloc(i32 %37)
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %39, align 8
  store i32 0, i32* %7, align 4
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %6, align 8
  br label %45

45:                                               ; preds = %48, %32
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @strdup(i8* %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32* %53, i32** %59, align 8
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %66 = call i8* @strdup(i8* %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32* %67, i32** %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %76, i64 %78
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %6, align 8
  br label %45

81:                                               ; preds = %45
  %82 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %81, %12
  ret void
}

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
