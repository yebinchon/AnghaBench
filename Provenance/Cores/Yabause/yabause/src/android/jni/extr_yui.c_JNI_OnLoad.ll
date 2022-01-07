; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_yui.c_JNI_OnLoad.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_yui.c_JNI_OnLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__**, i8**, i32)* }

@JNI_VERSION_1_6 = common dso_local global i32 0, align 4
@JNI_OK = common dso_local global i64 0, align 8
@yvm = common dso_local global %struct.TYPE_5__** null, align 8
@DEBUG_CALLBACK = common dso_local global i32 0, align 4
@log_callback = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @JNI_OnLoad(%struct.TYPE_5__** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64 (%struct.TYPE_5__**, i8**, i32)*, i64 (%struct.TYPE_5__**, i8**, i32)** %9, align 8
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %12 = bitcast i32** %6 to i8**
  %13 = load i32, i32* @JNI_VERSION_1_6, align 4
  %14 = call i64 %10(%struct.TYPE_5__** %11, i8** %12, i32 %13)
  %15 = load i64, i64* @JNI_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  store %struct.TYPE_5__** %19, %struct.TYPE_5__*** @yvm, align 8
  %20 = call i32 (...) @LogStart()
  %21 = load i32, i32* @DEBUG_CALLBACK, align 4
  %22 = load i64, i64* @log_callback, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @LogChangeOutput(i32 %21, i8* %23)
  %25 = load i32, i32* @JNI_VERSION_1_6, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @LogStart(...) #1

declare dso_local i32 @LogChangeOutput(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
