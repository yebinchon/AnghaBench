; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pixlet.c_reconstruction.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pixlet.c_reconstruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32** }

@NB_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32, i32, i32*, i32*)* @reconstruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reconstruction(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %15, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @NB_LEVELS, align 4
  %30 = lshr i32 %28, %29
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @NB_LEVELS, align 4
  %33 = lshr i32 %31, %32
  store i32 %33, i32* %17, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %19, align 8
  store i32 0, i32* %20, align 4
  br label %39

39:                                               ; preds = %145, %7
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* @NB_LEVELS, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %148

43:                                               ; preds = %39
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %20, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %23, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %20, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %24, align 4
  %54 = load i32, i32* %16, align 4
  %55 = shl i32 %54, 1
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %17, align 4
  %58 = load i32*, i32** %9, align 8
  store i32* %58, i32** %18, align 8
  store i32 0, i32* %21, align 4
  br label %59

59:                                               ; preds = %77, %43
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load i32*, i32** %18, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %23, align 4
  %72 = call i32 @filterfn(i32* %64, i32* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %18, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %18, align 8
  br label %77

77:                                               ; preds = %63
  %78 = load i32, i32* %21, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %21, align 4
  br label %59

80:                                               ; preds = %59
  store i32 0, i32* %21, align 4
  br label %81

81:                                               ; preds = %141, %80
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %144

85:                                               ; preds = %81
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %21, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32* %89, i32** %18, align 8
  store i32 0, i32* %22, align 4
  br label %90

90:                                               ; preds = %105, %85
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i32*, i32** %18, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %19, align 8
  %98 = load i32, i32* %22, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** %18, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %18, align 8
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %22, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %22, align 4
  br label %90

108:                                              ; preds = %90
  %109 = load i32*, i32** %19, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32**, i32*** %111, align 8
  %113 = getelementptr inbounds i32*, i32** %112, i64 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %24, align 4
  %117 = call i32 @filterfn(i32* %109, i32* %114, i32 %115, i32 %116)
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %21, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32* %121, i32** %18, align 8
  store i32 0, i32* %22, align 4
  br label %122

122:                                              ; preds = %137, %108
  %123 = load i32, i32* %22, align 4
  %124 = load i32, i32* %17, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = load i32*, i32** %19, align 8
  %128 = load i32, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %18, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32*, i32** %18, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %18, align 8
  br label %137

137:                                              ; preds = %126
  %138 = load i32, i32* %22, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %22, align 4
  br label %122

140:                                              ; preds = %122
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %21, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %21, align 4
  br label %81

144:                                              ; preds = %81
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %20, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %20, align 4
  br label %39

148:                                              ; preds = %39
  ret void
}

declare dso_local i32 @filterfn(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
