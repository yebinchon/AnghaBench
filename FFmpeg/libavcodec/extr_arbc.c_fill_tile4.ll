; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_arbc.c_fill_tile4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_arbc.c_fill_tile4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, %struct.TYPE_6__*)* @fill_tile4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_tile4(%struct.TYPE_7__* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %8, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @bytestream2_get_le16(i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 4
  %38 = add nsw i32 %37, 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 4
  %43 = add nsw i32 %42, 1
  %44 = mul nsw i32 %38, %43
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %138

48:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %133, %48
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %136

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @bytestream2_get_byte(i32* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @bytestream2_get_byte(i32* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @bytestream2_get_le16(i32* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %14, align 4
  %61 = mul nsw i32 %60, 4
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %15, align 4
  %63 = mul nsw i32 %62, 4
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 4
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %18, align 4
  %67 = add nsw i32 %66, 4
  store i32 %67, i32* %20, align 4
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %21, align 4
  br label %69

69:                                               ; preds = %129, %53
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %19, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %132

73:                                               ; preds = %69
  %74 = load i32, i32* %18, align 4
  store i32 %74, i32* %22, align 4
  br label %75

75:                                               ; preds = %125, %73
  %76 = load i32, i32* %22, align 4
  %77 = load i32, i32* %20, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %128

79:                                               ; preds = %75
  %80 = load i32, i32* %16, align 4
  %81 = and i32 %80, 32768
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %122

83:                                               ; preds = %79
  %84 = load i32, i32* %21, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sge i32 %84, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %22, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89, %83
  %96 = load i32, i32* %16, align 4
  %97 = shl i32 %96, 1
  store i32 %97, i32* %16, align 4
  br label %125

98:                                               ; preds = %89
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %21, align 4
  %111 = sub nsw i32 %109, %110
  %112 = mul nsw i32 %108, %111
  %113 = load i32, i32* %22, align 4
  %114 = mul nsw i32 3, %113
  %115 = add nsw i32 %112, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %103, i64 %116
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @AV_WB24(i32* %117, i32 %118)
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %98, %79
  %123 = load i32, i32* %16, align 4
  %124 = shl i32 %123, 1
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %122, %95
  %126 = load i32, i32* %22, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %22, align 4
  br label %75

128:                                              ; preds = %75
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %21, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %21, align 4
  br label %69

132:                                              ; preds = %69
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %49

136:                                              ; preds = %49
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %136, %47
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @AV_WB24(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
