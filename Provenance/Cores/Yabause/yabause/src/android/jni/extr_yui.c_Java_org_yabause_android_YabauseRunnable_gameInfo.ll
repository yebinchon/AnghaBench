; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_yui.c_Java_org_yabause_android_YabauseRunnable_gameInfo.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_yui.c_Java_org_yabause_android_YabauseRunnable_gameInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8* (%struct.TYPE_18__**, i32*, i32*)*, i32* (%struct.TYPE_18__**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_18__**, i32)*, i32 (%struct.TYPE_18__**, i32, i8*, i8*)*, i32 (%struct.TYPE_18__**, i8*)* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"org/yabause/android/GameInfo\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<init>\00", align 1
@.str.2 = private unnamed_addr constant [166 x i8] c"(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @Java_org_yabause_android_YabauseRunnable_gameInfo(%struct.TYPE_18__** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_19__, align 4
  %21 = alloca i8*, align 8
  store %struct.TYPE_18__** %0, %struct.TYPE_18__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i8* (%struct.TYPE_18__**, i32*, i32*)*, i8* (%struct.TYPE_18__**, i32*, i32*)** %24, align 8
  %26 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i8* %25(%struct.TYPE_18__** %26, i32* %27, i32* %9)
  store i8* %28, i8** %21, align 8
  %29 = load i8*, i8** %21, align 8
  %30 = call i32 @GameInfoFromPath(i8* %29, %struct.TYPE_19__* %20)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %136

33:                                               ; preds = %3
  %34 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 4
  %37 = load i32 (%struct.TYPE_18__**, i8*)*, i32 (%struct.TYPE_18__**, i8*)** %36, align 8
  %38 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %39 = call i32 %37(%struct.TYPE_18__** %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %10, align 4
  %40 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 3
  %43 = load i32 (%struct.TYPE_18__**, i32, i8*, i8*)*, i32 (%struct.TYPE_18__**, i32, i8*, i8*)** %42, align 8
  %44 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 %43(%struct.TYPE_18__** %44, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.2, i64 0, i64 0))
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = load i32 (%struct.TYPE_18__**, i32)*, i32 (%struct.TYPE_18__**, i32)** %49, align 8
  %51 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 %50(%struct.TYPE_18__** %51, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i32 (%struct.TYPE_18__**, i32)*, i32 (%struct.TYPE_18__**, i32)** %57, align 8
  %59 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = call i32 %58(%struct.TYPE_18__** %59, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 2
  %66 = load i32 (%struct.TYPE_18__**, i32)*, i32 (%struct.TYPE_18__**, i32)** %65, align 8
  %67 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32 %66(%struct.TYPE_18__** %67, i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = load i32 (%struct.TYPE_18__**, i32)*, i32 (%struct.TYPE_18__**, i32)** %73, align 8
  %75 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 %74(%struct.TYPE_18__** %75, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  %82 = load i32 (%struct.TYPE_18__**, i32)*, i32 (%struct.TYPE_18__**, i32)** %81, align 8
  %83 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 %82(%struct.TYPE_18__** %83, i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 2
  %90 = load i32 (%struct.TYPE_18__**, i32)*, i32 (%struct.TYPE_18__**, i32)** %89, align 8
  %91 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 %90(%struct.TYPE_18__** %91, i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 2
  %98 = load i32 (%struct.TYPE_18__**, i32)*, i32 (%struct.TYPE_18__**, i32)** %97, align 8
  %99 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 %98(%struct.TYPE_18__** %99, i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load i32 (%struct.TYPE_18__**, i32)*, i32 (%struct.TYPE_18__**, i32)** %105, align 8
  %107 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 %106(%struct.TYPE_18__** %107, i32 %109)
  store i32 %110, i32* %18, align 4
  %111 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 2
  %114 = load i32 (%struct.TYPE_18__**, i32)*, i32 (%struct.TYPE_18__**, i32)** %113, align 8
  %115 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 %114(%struct.TYPE_18__** %115, i32 %117)
  store i32 %118, i32* %19, align 4
  %119 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load i32* (%struct.TYPE_18__**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32* (%struct.TYPE_18__**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %121, align 8
  %123 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %5, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %19, align 4
  %135 = call i32* %122(%struct.TYPE_18__** %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  store i32* %135, i32** %4, align 8
  br label %136

136:                                              ; preds = %33, %32
  %137 = load i32*, i32** %4, align 8
  ret i32* %137
}

declare dso_local i32 @GameInfoFromPath(i8*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
