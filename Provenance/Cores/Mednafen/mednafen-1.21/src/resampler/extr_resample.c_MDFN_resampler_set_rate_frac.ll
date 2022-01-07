; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_MDFN_resampler_set_rate_frac.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_MDFN_resampler_set_rate_frac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64*, i64 }

@RESAMPLER_ERR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @speex_resampler_set_rate_frac(%struct.TYPE_4__* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @RESAMPLER_ERR_SUCCESS, align 4
  store i32 %39, i32* %6, align 4
  br label %161

40:                                               ; preds = %32, %26, %20, %5
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  store i64 2, i64* %12, align 8
  br label %56

56:                                               ; preds = %95, %40
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @IMIN(i64 %60, i64 %63)
  %65 = icmp sle i64 %57, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %83, %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %12, align 8
  %72 = srem i64 %70, %71
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = srem i64 %77, %78
  %80 = icmp eq i64 %79, 0
  br label %81

81:                                               ; preds = %74, %67
  %82 = phi i1 [ false, %67 ], [ %80, %74 ]
  br i1 %82, label %83, label %94

83:                                               ; preds = %81
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = sdiv i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = sdiv i64 %92, %89
  store i64 %93, i64* %91, align 8
  br label %67

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %12, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %12, align 8
  br label %56

98:                                               ; preds = %56
  %99 = load i64, i64* %13, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %151

101:                                              ; preds = %98
  store i64 0, i64* %14, align 8
  br label %102

102:                                              ; preds = %147, %101
  %103 = load i64, i64* %14, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %108, label %150

108:                                              ; preds = %102
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 5
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %14, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = mul nsw i64 %114, %117
  %119 = load i64, i64* %13, align 8
  %120 = sdiv i64 %118, %119
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 5
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* %14, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  store i64 %120, i64* %125, align 8
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 5
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp sge i64 %131, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %108
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %139, 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 5
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* %14, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  store i64 %140, i64* %145, align 8
  br label %146

146:                                              ; preds = %136, %108
  br label %147

147:                                              ; preds = %146
  %148 = load i64, i64* %14, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %14, align 8
  br label %102

150:                                              ; preds = %102
  br label %151

151:                                              ; preds = %150, %98
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %158 = call i32 @update_filter(%struct.TYPE_4__* %157)
  br label %159

159:                                              ; preds = %156, %151
  %160 = load i32, i32* @RESAMPLER_ERR_SUCCESS, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %159, %38
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i64 @IMIN(i64, i64) #1

declare dso_local i32 @update_filter(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
