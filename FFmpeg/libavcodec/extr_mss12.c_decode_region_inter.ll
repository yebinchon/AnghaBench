; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_decode_region_inter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss12.c_decode_region_inter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32*, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32*)* }

@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_19__*, i32, i32, i32, i32)* @decode_region_inter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_region_inter(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %14, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_19__*, i32*)*, i32 (%struct.TYPE_19__*, i32*)** %20, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 2
  %25 = call i32 %21(%struct.TYPE_19__* %22, i32* %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %106, label %28

28:                                               ; preds = %6
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = call i32 @decode_pixel(%struct.TYPE_19__* %29, i32* %31, i32* null, i32 0, i32 0)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %7, align 4
  br label %150

37:                                               ; preds = %28
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AV_EF_EXPLODE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %37
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 4
  br i1 %59, label %71, label %60

60:                                               ; preds = %57, %54, %51, %46
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 128
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 255
  br i1 %70, label %71, label %72

71:                                               ; preds = %68, %57
  store i32 -1, i32* %7, align 4
  br label %150

72:                                               ; preds = %68, %65, %60, %37
  %73 = load i32, i32* %15, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @copy_rectangles(%struct.TYPE_18__* %76, i32 %77, i32 %78, i32 %79, i32 %80)
  br label %105

82:                                               ; preds = %72
  %83 = load i32, i32* %15, align 4
  %84 = icmp eq i32 %83, 4
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @motion_compensation(%struct.TYPE_18__* %86, i32 %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %7, align 4
  br label %150

92:                                               ; preds = %82
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 128
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @decode_region_intra(%struct.TYPE_17__* %96, %struct.TYPE_19__* %97, i32 %98, i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %7, align 4
  br label %150

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %75
  br label %149

106:                                              ; preds = %6
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = call i64 @decode_region(%struct.TYPE_19__* %107, i32 %110, i32* null, i32 %111, i32 %112, i32 %113, i32 %114, i32 %117, i32 0, i32* %119, i32* %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %106
  store i32 -1, i32* %7, align 4
  br label %150

127:                                              ; preds = %106
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = call i32 @decode_region_masked(%struct.TYPE_18__* %128, %struct.TYPE_19__* %129, i32 %132, i32 %135, i32 %138, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32* %147)
  store i32 %148, i32* %7, align 4
  br label %150

149:                                              ; preds = %105
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %149, %127, %126, %95, %85, %71, %35
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @decode_pixel(%struct.TYPE_19__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @copy_rectangles(%struct.TYPE_18__*, i32, i32, i32, i32) #1

declare dso_local i32 @motion_compensation(%struct.TYPE_18__*, i32, i32, i32, i32) #1

declare dso_local i32 @decode_region_intra(%struct.TYPE_17__*, %struct.TYPE_19__*, i32, i32, i32, i32) #1

declare dso_local i64 @decode_region(%struct.TYPE_19__*, i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @decode_region_masked(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
