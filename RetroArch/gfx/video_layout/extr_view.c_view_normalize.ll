; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_view.c_view_normalize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_view.c_view_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_normalize(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  %11 = call i64 @bounds_valid(%struct.TYPE_11__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %98

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %17, %21
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %27, %31
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sitofp i32 %37 to float
  %39 = fdiv float 1.000000e+00, %38
  %40 = fptosi float %39 to i32
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = sitofp i32 %45 to float
  %47 = fdiv float 1.000000e+00, %46
  %48 = fptosi float %47 to i32
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 3
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %13
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %63, %67
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  store i32 1, i32* %74, align 4
  br label %91

75:                                               ; preds = %13
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %79, %83
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %75, %59
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  store i32 0, i32* %97, align 8
  br label %111

98:                                               ; preds = %1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = call { i64, i64 } (...) @make_bounds_unit()
  %102 = bitcast %struct.TYPE_11__* %6 to { i64, i64 }*
  %103 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %102, i32 0, i32 0
  %104 = extractvalue { i64, i64 } %101, 0
  store i64 %104, i64* %103, align 4
  %105 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %102, i32 0, i32 1
  %106 = extractvalue { i64, i64 } %101, 1
  store i64 %106, i64* %105, align 4
  %107 = bitcast %struct.TYPE_11__* %100 to i8*
  %108 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 4 %108, i64 16, i1 false)
  %109 = bitcast %struct.TYPE_11__* %3 to i8*
  %110 = bitcast %struct.TYPE_11__* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 8 %110, i64 16, i1 false)
  br label %111

111:                                              ; preds = %98, %91
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %170, %111
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %173

118:                                              ; preds = %112
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %123
  store %struct.TYPE_12__* %124, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %166, %118
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %169

131:                                              ; preds = %125
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i64 %136
  store %struct.TYPE_13__* %137, %struct.TYPE_13__** %8, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = call i64 @bounds_valid(%struct.TYPE_11__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %131
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = call i32 @bounds_scale(%struct.TYPE_11__* %144, %struct.TYPE_11__* %3)
  br label %151

146:                                              ; preds = %131
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = bitcast %struct.TYPE_11__* %148 to i8*
  %150 = bitcast %struct.TYPE_11__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %149, i8* align 4 %150, i64 16, i1 false)
  br label %151

151:                                              ; preds = %146, %142
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, %153
  store i32 %158, i32* %156, align 4
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %164, %160
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %151
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %125

169:                                              ; preds = %125
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %4, align 4
  br label %112

173:                                              ; preds = %112
  ret void
}

declare dso_local i64 @bounds_valid(%struct.TYPE_11__*) #1

declare dso_local { i64, i64 } @make_bounds_unit(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bounds_scale(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
