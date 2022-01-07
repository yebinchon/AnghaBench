; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_encryption_info.c_av_encryption_init_info_get_side_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_encryption_info.c_av_encryption_init_info_get_side_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, %struct.TYPE_5__* }

@FF_ENCRYPTION_INIT_INFO_EXTRA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @av_encryption_init_info_get_side_data(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %147

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @AV_RB32(i32* %23)
  store i64 %24, i64* %15, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  store i32* %26, i32** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %27, 4
  store i64 %28, i64* %5, align 8
  store i64 0, i64* %13, align 8
  br label %29

29:                                               ; preds = %142, %22
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %15, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %145

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @FF_ENCRYPTION_INIT_INFO_EXTRA, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = call i32 @av_encryption_init_info_free(%struct.TYPE_5__* %38)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %147

40:                                               ; preds = %33
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @AV_RB32(i32* %41)
  store i64 %42, i64* %9, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = call i64 @AV_RB32(i32* %44)
  store i64 %45, i64* %10, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 8
  %48 = call i64 @AV_RB32(i32* %47)
  store i64 %48, i64* %11, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 12
  %51 = call i64 @AV_RB32(i32* %50)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @FF_ENCRYPTION_INIT_INFO_EXTRA, align 8
  %54 = sub i64 %52, %53
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %12, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = mul nsw i64 %58, %59
  %61 = add nsw i64 %57, %60
  %62 = icmp ult i64 %54, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %40
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = call i32 @av_encryption_init_info_free(%struct.TYPE_5__* %64)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %147

66:                                               ; preds = %40
  %67 = load i64, i64* @FF_ENCRYPTION_INIT_INFO_EXTRA, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 %67
  store i32* %69, i32** %4, align 8
  %70 = load i64, i64* @FF_ENCRYPTION_INIT_INFO_EXTRA, align 8
  %71 = load i64, i64* %5, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = call %struct.TYPE_5__* @av_encryption_init_info_alloc(i64 %73, i64 %74, i64 %75, i64 %76)
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %8, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %79 = icmp ne %struct.TYPE_5__* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %66
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = call i32 @av_encryption_init_info_free(%struct.TYPE_5__* %81)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %147

83:                                               ; preds = %66
  %84 = load i64, i64* %13, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %7, align 8
  br label %93

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %7, align 8
  br label %93

93:                                               ; preds = %88, %86
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @memcpy(i32 %96, i32* %97, i64 %98)
  %100 = load i64, i64* %9, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 %100
  store i32* %102, i32** %4, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %5, align 8
  %105 = sub i64 %104, %103
  store i64 %105, i64* %5, align 8
  store i64 0, i64* %14, align 8
  br label %106

106:                                              ; preds = %126, %93
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %10, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %14, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %4, align 8
  %118 = load i64, i64* %11, align 8
  %119 = call i32 @memcpy(i32 %116, i32* %117, i64 %118)
  %120 = load i64, i64* %11, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 %120
  store i32* %122, i32** %4, align 8
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %5, align 8
  %125 = sub i64 %124, %123
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %110
  %127 = load i64, i64* %14, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %14, align 8
  br label %106

129:                                              ; preds = %106
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32*, i32** %4, align 8
  %134 = load i64, i64* %12, align 8
  %135 = call i32 @memcpy(i32 %132, i32* %133, i64 %134)
  %136 = load i64, i64* %12, align 8
  %137 = load i32*, i32** %4, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 %136
  store i32* %138, i32** %4, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* %5, align 8
  %141 = sub i64 %140, %139
  store i64 %141, i64* %5, align 8
  br label %142

142:                                              ; preds = %129
  %143 = load i64, i64* %13, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %13, align 8
  br label %29

145:                                              ; preds = %29
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %146, %struct.TYPE_5__** %3, align 8
  br label %147

147:                                              ; preds = %145, %80, %63, %37, %21
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %148
}

declare dso_local i64 @AV_RB32(i32*) #1

declare dso_local i32 @av_encryption_init_info_free(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @av_encryption_init_info_alloc(i64, i64, i64, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
