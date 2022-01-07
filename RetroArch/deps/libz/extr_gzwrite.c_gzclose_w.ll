; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_gzwrite.c_gzclose_w.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_gzwrite.c_gzclose_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i64, i32, i64 }

@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@GZ_WRITE = common dso_local global i64 0, align 8
@Z_FINISH = common dso_local global i32 0, align 4
@Z_ERRNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gzclose_w(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @Z_OK, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %10, i32* %2, align 4
  br label %91

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GZ_WRITE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %20, i32* %2, align 4
  br label %91

21:                                               ; preds = %11
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 10
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 10
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @gz_zero(%struct.TYPE_6__* %29, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %26
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = load i32, i32* @Z_FINISH, align 4
  %43 = call i32 @gz_comp(%struct.TYPE_6__* %41, i32 %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 6
  %62 = call i32 @deflateEnd(i32* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @free(%struct.TYPE_6__* %65)
  br label %67

67:                                               ; preds = %59, %54
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i32 @free(%struct.TYPE_6__* %70)
  br label %72

72:                                               ; preds = %67, %49
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = load i32, i32* @Z_OK, align 4
  %75 = call i32 @gz_error(%struct.TYPE_6__* %73, i32 %74, i32* null)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = call i32 @free(%struct.TYPE_6__* %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @close(i32 %82)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = load i32, i32* @Z_ERRNO, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %72
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = call i32 @free(%struct.TYPE_6__* %88)
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %19, %9
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @gz_zero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @gz_comp(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @deflateEnd(i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @gz_error(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
