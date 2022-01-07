; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_uncompr.c_uncompress.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_uncompr.c_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i64, i8*, i8*, i8*, i32* }

@Z_BUF_ERROR = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_NEED_DICT = common dso_local global i32 0, align 4
@Z_DATA_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uncompress(i8* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 6
  store i32* %13, i32** %14, align 8
  %15 = load i64, i64* %9, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = ptrtoint i8* %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @Z_BUF_ERROR, align 4
  store i32 %24, i32* %5, align 4
  br label %80

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @Z_BUF_ERROR, align 4
  store i32 %39, i32* %5, align 4
  br label %80

40:                                               ; preds = %25
  %41 = load i8*, i8** @Z_NULL, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** @Z_NULL, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i8* %43, i8** %44, align 8
  %45 = call i32 @inflateInit(%struct.TYPE_5__* %10)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @Z_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %5, align 4
  br label %80

51:                                               ; preds = %40
  %52 = load i32, i32* @Z_FINISH, align 4
  %53 = call i32 @inflate(%struct.TYPE_5__* %10, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @Z_STREAM_END, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %51
  %58 = call i32 @inflateEnd(%struct.TYPE_5__* %10)
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @Z_NEED_DICT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @Z_BUF_ERROR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %57
  %71 = load i32, i32* @Z_DATA_ERROR, align 4
  store i32 %71, i32* %5, align 4
  br label %80

72:                                               ; preds = %66, %62
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %80

74:                                               ; preds = %51
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %7, align 8
  store i64 %76, i64* %77, align 8
  %78 = call i32 @inflateEnd(%struct.TYPE_5__* %10)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %74, %72, %70, %49, %38, %23
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @inflateInit(%struct.TYPE_5__*) #1

declare dso_local i32 @inflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
