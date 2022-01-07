; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/extr_audio_thread_wrapper.c_audio_init_thread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/extr_audio_thread_wrapper.c_audio_init_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32*, i32, i32, i32, i32, i64, i32, i32, i32, i32* }

@audio_thread_loop = common dso_local global i32 0, align 4
@audio_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audio_init_thread(i32** %0, i8** %1, i8* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  store i32** %0, i32*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %19 = call i64 @calloc(i32 1, i32 72)
  %20 = inttoptr i64 %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %18, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %105

24:                                               ; preds = %8
  %25 = load i32*, i32** %17, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 11
  store i32* %25, i32** %27, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %16, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = call i32 (...) @scond_new()
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = icmp ne i32 %43, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %24
  br label %100

48:                                               ; preds = %24
  %49 = call i32 (...) @slock_new()
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = icmp ne i32 %49, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %100

54:                                               ; preds = %48
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 5
  store i32 1, i32* %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 6
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* @audio_thread_loop, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %61 = call i32 @sthread_create(i32 %59, %struct.TYPE_4__* %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 10
  store i32 %61, i32* %63, align 8
  %64 = icmp ne i32 %61, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %54
  br label %100

66:                                               ; preds = %54
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @slock_lock(i32 %69)
  br label %71

71:                                               ; preds = %77, %66
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  %76 = xor i1 %75, true
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @scond_wait(i32 %80, i32 %83)
  br label %71

85:                                               ; preds = %71
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @slock_unlock(i32 %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %100

95:                                               ; preds = %85
  %96 = load i32**, i32*** %10, align 8
  store i32* @audio_thread, i32** %96, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %98 = bitcast %struct.TYPE_4__* %97 to i8*
  %99 = load i8**, i8*** %11, align 8
  store i8* %98, i8** %99, align 8
  store i32 1, i32* %9, align 4
  br label %105

100:                                              ; preds = %94, %65, %53, %47
  %101 = load i32**, i32*** %10, align 8
  store i32* null, i32** %101, align 8
  %102 = load i8**, i8*** %11, align 8
  store i8* null, i8** %102, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %104 = call i32 @audio_thread_free(%struct.TYPE_4__* %103)
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %100, %95, %23
  %106 = load i32, i32* %9, align 4
  ret i32 %106
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @scond_new(...) #1

declare dso_local i32 @slock_new(...) #1

declare dso_local i32 @sthread_create(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @scond_wait(i32, i32) #1

declare dso_local i32 @slock_unlock(i32) #1

declare dso_local i32 @audio_thread_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
