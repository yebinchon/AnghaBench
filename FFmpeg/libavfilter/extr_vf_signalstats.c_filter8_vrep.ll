; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signalstats.c_filter8_vrep.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_signalstats.c_filter8_vrep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32*, i64** }

@VREP_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, i32)* @filter8_vrep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter8_vrep(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %9, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %10, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %11, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %12, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %13, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = mul nsw i32 %48, %50
  %52 = load i32, i32* %8, align 4
  %53 = sdiv i32 %51, %52
  store i32 %53, i32* %16, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i64**, i64*** %55, align 8
  %57 = getelementptr inbounds i64*, i64** %56, i64 0
  %58 = load i64*, i64** %57, align 8
  store i64* %58, i64** %17, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %18, align 4
  store i32 0, i32* %21, align 4
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %20, align 4
  br label %65

65:                                               ; preds = %140, %4
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %143

69:                                               ; preds = %65
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* @VREP_START, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* %18, align 4
  %74 = mul nsw i32 %72, %73
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %18, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* @VREP_START, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %140

82:                                               ; preds = %69
  store i32 0, i32* %19, align 4
  br label %83

83:                                               ; preds = %108, %82
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load i64*, i64** %17, align 8
  %89 = load i32, i32* %22, align 4
  %90 = load i32, i32* %19, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %88, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %17, align 8
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %95, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %94, %101
  %103 = call i64 @abs(i64 %102)
  %104 = load i32, i32* %25, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %25, align 4
  br label %108

108:                                              ; preds = %87
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %19, align 4
  br label %83

111:                                              ; preds = %83
  %112 = load i32, i32* %25, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %112, %113
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %24, align 4
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* %21, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %21, align 4
  %119 = load i32, i32* %24, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %111
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %123 = icmp ne %struct.TYPE_7__* %122, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %121
  store i32 0, i32* %19, align 4
  br label %125

125:                                              ; preds = %135, %124
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load i32*, i32** %10, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %20, align 4
  %134 = call i32 @burn_frame8(i32* %130, %struct.TYPE_7__* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %125

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138, %121, %111
  br label %140

140:                                              ; preds = %139, %81
  %141 = load i32, i32* %20, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %20, align 4
  br label %65

143:                                              ; preds = %65
  %144 = load i32, i32* %21, align 4
  %145 = load i32, i32* %13, align 4
  %146 = mul nsw i32 %144, %145
  ret i32 %146
}

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @burn_frame8(i32*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
