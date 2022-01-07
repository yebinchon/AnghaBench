; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_decode_subpacket.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_decode_subpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, float**)* @decode_subpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_subpacket(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32* %2, float** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32* %2, i32** %8, align 8
  store float** %3, float*** %9, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memset(i32 %17, i32 0, i32 4)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 5
  %24 = call i32 @decode_bytes_and_gain(%struct.TYPE_13__* %19, %struct.TYPE_12__* %20, i32* %21, i32* %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @joint_decode(%struct.TYPE_13__* %30, %struct.TYPE_12__* %31, i32 %34, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %162

42:                                               ; preds = %29
  br label %80

43:                                               ; preds = %4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mono_decode(%struct.TYPE_13__* %44, %struct.TYPE_12__* %45, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %162

53:                                               ; preds = %43
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sdiv i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  %68 = call i32 @decode_bytes_and_gain(%struct.TYPE_13__* %59, %struct.TYPE_12__* %60, i32* %65, i32* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mono_decode(%struct.TYPE_13__* %69, %struct.TYPE_12__* %70, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %58
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %5, align 4
  br label %162

78:                                               ; preds = %58
  br label %79

79:                                               ; preds = %78, %53
  br label %80

80:                                               ; preds = %79, %42
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = load float**, float*** %9, align 8
  %91 = icmp ne float** %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %80
  %93 = load float**, float*** %9, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds float*, float** %93, i64 %96
  %98 = load float*, float** %97, align 8
  br label %100

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99, %92
  %101 = phi float* [ %98, %92 ], [ null, %99 ]
  %102 = call i32 @mlt_compensate_output(%struct.TYPE_13__* %81, i32 %84, i32* %86, i32 %89, float* %101)
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %161

107:                                              ; preds = %100
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %107
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = load float**, float*** %9, align 8
  %123 = icmp ne float** %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %112
  %125 = load float**, float*** %9, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, 1
  %130 = getelementptr inbounds float*, float** %125, i64 %129
  %131 = load float*, float** %130, align 8
  br label %133

132:                                              ; preds = %112
  br label %133

133:                                              ; preds = %132, %124
  %134 = phi float* [ %131, %124 ], [ null, %132 ]
  %135 = call i32 @mlt_compensate_output(%struct.TYPE_13__* %113, i32 %116, i32* %118, i32 %121, float* %134)
  br label %160

136:                                              ; preds = %107
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load float**, float*** %9, align 8
  %147 = icmp ne float** %146, null
  br i1 %147, label %148, label %156

148:                                              ; preds = %136
  %149 = load float**, float*** %9, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, 1
  %154 = getelementptr inbounds float*, float** %149, i64 %153
  %155 = load float*, float** %154, align 8
  br label %157

156:                                              ; preds = %136
  br label %157

157:                                              ; preds = %156, %148
  %158 = phi float* [ %155, %148 ], [ null, %156 ]
  %159 = call i32 @mlt_compensate_output(%struct.TYPE_13__* %137, i32 %140, i32* %142, i32 %145, float* %158)
  br label %160

160:                                              ; preds = %157, %133
  br label %161

161:                                              ; preds = %160, %100
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %76, %51, %40
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @decode_bytes_and_gain(%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @joint_decode(%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @mono_decode(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @mlt_compensate_output(%struct.TYPE_13__*, i32, i32*, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
