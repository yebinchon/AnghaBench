; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_ps2_descriptor.c___ps2_acquire_descriptor.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_ps2_descriptor.c___ps2_acquire_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@MAX_OPEN_FILES = common dso_local global i32 0, align 4
@__ps2_fdmap = common dso_local global %struct.TYPE_3__** null, align 8
@__ps2_fdmap_pool = common dso_local global %struct.TYPE_3__* null, align 8
@FILEENTRY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ps2_acquire_descriptor() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 -1, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @_lock()
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %68, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @MAX_OPEN_FILES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %71

9:                                                ; preds = %5
  %10 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @__ps2_fdmap, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %10, i64 %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %67

16:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %63, %16
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @MAX_OPEN_FILES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__ps2_fdmap_pool, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @__ps2_fdmap_pool, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @__ps2_fdmap, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %34, i64 %36
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %37, align 8
  %38 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @__ps2_fdmap, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %38, i64 %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i64 1, i64* %43, align 8
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @__ps2_fdmap, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %44, i64 %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 -1, i32* %49, align 8
  %50 = load i32, i32* @FILEENTRY_SIZE, align 4
  %51 = call i32 @calloc(i32 4, i32 %50)
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @__ps2_fdmap, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %52, i64 %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %51, i32* %57, align 4
  %58 = call i32 (...) @_unlock()
  %59 = load i32, i32* @MAX_OPEN_FILES, align 4
  %60 = load i32, i32* %2, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %1, align 4
  br label %73

62:                                               ; preds = %21
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %17

66:                                               ; preds = %17
  br label %67

67:                                               ; preds = %66, %9
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %2, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %2, align 4
  br label %5

71:                                               ; preds = %5
  %72 = call i32 (...) @_unlock()
  store i32 -1, i32* %1, align 4
  br label %73

73:                                               ; preds = %71, %29
  %74 = load i32, i32* %1, align 4
  ret i32 %74
}

declare dso_local i32 @_lock(...) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
