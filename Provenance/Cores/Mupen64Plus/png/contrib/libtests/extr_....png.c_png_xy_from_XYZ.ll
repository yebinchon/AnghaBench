; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_....png.c_png_xy_from_XYZ.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_....png.c_png_xy_from_XYZ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@PNG_FP_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_6__*)* @png_xy_from_XYZ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_xy_from_XYZ(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 7
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @PNG_FP_1, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @png_muldiv(i32* %22, i64 %25, i32 %26, i64 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %160

31:                                               ; preds = %2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @PNG_FP_1, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @png_muldiv(i32* %33, i64 %36, i32 %37, i64 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %160

42:                                               ; preds = %31
  %43 = load i64, i64* %6, align 8
  store i64 %43, i64* %7, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  store i64 %60, i64* %6, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @PNG_FP_1, align 4
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @png_muldiv(i32* %62, i64 %65, i32 %66, i64 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %160

71:                                               ; preds = %42
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @PNG_FP_1, align 4
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @png_muldiv(i32* %73, i64 %76, i32 %77, i64 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %160

82:                                               ; preds = %71
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %7, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %8, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %9, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  store i64 %106, i64* %6, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* @PNG_FP_1, align 4
  %113 = load i64, i64* %6, align 8
  %114 = call i64 @png_muldiv(i32* %108, i64 %111, i32 %112, i64 %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %82
  store i32 1, i32* %3, align 4
  br label %160

117:                                              ; preds = %82
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @PNG_FP_1, align 4
  %124 = load i64, i64* %6, align 8
  %125 = call i64 @png_muldiv(i32* %119, i64 %122, i32 %123, i64 %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  store i32 1, i32* %3, align 4
  br label %160

128:                                              ; preds = %117
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = add nsw i64 %130, %129
  store i64 %131, i64* %7, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %8, align 8
  %136 = add nsw i64 %135, %134
  store i64 %136, i64* %8, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %9, align 8
  %141 = add nsw i64 %140, %139
  store i64 %141, i64* %9, align 8
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i64, i64* %8, align 8
  %145 = load i32, i32* @PNG_FP_1, align 4
  %146 = load i64, i64* %7, align 8
  %147 = call i64 @png_muldiv(i32* %143, i64 %144, i32 %145, i64 %146)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %128
  store i32 1, i32* %3, align 4
  br label %160

150:                                              ; preds = %128
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i64, i64* %9, align 8
  %154 = load i32, i32* @PNG_FP_1, align 4
  %155 = load i64, i64* %7, align 8
  %156 = call i64 @png_muldiv(i32* %152, i64 %153, i32 %154, i64 %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  store i32 1, i32* %3, align 4
  br label %160

159:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %158, %149, %127, %116, %81, %70, %41, %30
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i64 @png_muldiv(i32*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
