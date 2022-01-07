; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_encryption_info.c_av_encryption_info_get_side_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_encryption_info.c_av_encryption_info_get_side_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@FF_ENCRYPTION_INFO_EXTRA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @av_encryption_info_get_side_data(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @FF_ENCRYPTION_INFO_EXTRA, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %116

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 12
  %21 = call i8* @AV_RB32(i32* %20)
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 16
  %25 = call i8* @AV_RB32(i32* %24)
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 20
  %29 = call i8* @AV_RB32(i32* %28)
  %30 = ptrtoint i8* %29 to i64
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @FF_ENCRYPTION_INFO_EXTRA, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %32, %33
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %34, %35
  %37 = load i64, i64* %9, align 8
  %38 = mul i64 %37, 8
  %39 = add i64 %36, %38
  %40 = icmp ult i64 %31, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %18
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %116

42:                                               ; preds = %18
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call %struct.TYPE_6__* @av_encryption_info_alloc(i64 %43, i64 %44, i64 %45)
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %6, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %116

50:                                               ; preds = %42
  %51 = load i32*, i32** %4, align 8
  %52 = call i8* @AV_RB32(i32* %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  %57 = call i8* @AV_RB32(i32* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 8
  %62 = call i8* @AV_RB32(i32* %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 24
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @memcpy(i32 %67, i32* %69, i64 %70)
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = getelementptr inbounds i32, i32* %77, i64 24
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @memcpy(i32 %74, i32* %78, i64 %79)
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %81, %82
  %84 = add i64 %83, 24
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 %84
  store i32* %86, i32** %4, align 8
  store i64 0, i64* %10, align 8
  br label %87

87:                                               ; preds = %111, %50
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %87
  %92 = load i32*, i32** %4, align 8
  %93 = call i8* @AV_RB32(i32* %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  store i8* %93, i8** %99, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = call i8* @AV_RB32(i32* %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i8* %102, i8** %108, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 8
  store i32* %110, i32** %4, align 8
  br label %111

111:                                              ; preds = %91
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %10, align 8
  br label %87

114:                                              ; preds = %87
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %115, %struct.TYPE_6__** %3, align 8
  br label %116

116:                                              ; preds = %114, %49, %41, %17
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %117
}

declare dso_local i8* @AV_RB32(i32*) #1

declare dso_local %struct.TYPE_6__* @av_encryption_info_alloc(i64, i64, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
