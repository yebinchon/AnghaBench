; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_yui.c_GetCartridgePath.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_yui.c_GetCartridgePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (%struct.TYPE_10__**, i8**, i32)* }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_9__**, i32)*, i8* (%struct.TYPE_9__**, i32, i32*)*, i32 (%struct.TYPE_9__**, i32, i32)*, i32 (%struct.TYPE_9__**, i32, i8*, i8*)*, i32 (%struct.TYPE_9__**, i32)* }

@yvm = common dso_local global %struct.TYPE_10__** null, align 8
@JNI_VERSION_1_6 = common dso_local global i32 0, align 4
@JNI_OK = common dso_local global i64 0, align 8
@yabause = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"getCartridgePath\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"()Ljava/lang/String;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetCartridgePath() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @yvm, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64 (%struct.TYPE_10__**, i8**, i32)*, i64 (%struct.TYPE_10__**, i8**, i32)** %9, align 8
  %11 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @yvm, align 8
  %12 = bitcast %struct.TYPE_9__*** %6 to i8**
  %13 = load i32, i32* @JNI_VERSION_1_6, align 4
  %14 = call i64 %10(%struct.TYPE_10__** %11, i8** %12, i32 %13)
  %15 = load i64, i64* @JNI_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i8* null, i8** %1, align 8
  br label %58

18:                                               ; preds = %0
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  %22 = load i32 (%struct.TYPE_9__**, i32)*, i32 (%struct.TYPE_9__**, i32)** %21, align 8
  %23 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %24 = load i32, i32* @yabause, align 4
  %25 = call i32 %22(%struct.TYPE_9__** %23, i32 %24)
  store i32 %25, i32* %2, align 4
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  %29 = load i32 (%struct.TYPE_9__**, i32, i8*, i8*)*, i32 (%struct.TYPE_9__**, i32, i8*, i8*)** %28, align 8
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %31 = load i32, i32* %2, align 4
  %32 = call i32 %29(%struct.TYPE_9__** %30, i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %3, align 4
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32 (%struct.TYPE_9__**, i32, i32)*, i32 (%struct.TYPE_9__**, i32, i32)** %35, align 8
  %37 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %38 = load i32, i32* @yabause, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 %36(%struct.TYPE_9__** %37, i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64 (%struct.TYPE_9__**, i32)*, i64 (%struct.TYPE_9__**, i32)** %43, align 8
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i64 %44(%struct.TYPE_9__** %45, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %18
  store i8* null, i8** %1, align 8
  br label %58

50:                                               ; preds = %18
  %51 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i8* (%struct.TYPE_9__**, i32, i32*)*, i8* (%struct.TYPE_9__**, i32, i32*)** %53, align 8
  %55 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i8* %54(%struct.TYPE_9__** %55, i32 %56, i32* %5)
  store i8* %57, i8** %1, align 8
  br label %58

58:                                               ; preds = %50, %49, %17
  %59 = load i8*, i8** %1, align 8
  ret i8* %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
