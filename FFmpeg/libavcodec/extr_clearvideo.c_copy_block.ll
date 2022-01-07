; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_clearvideo.c_copy_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_clearvideo.c_copy_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32*, i32** }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32)* @copy_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_block(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp sgt i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %17, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %18, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %22, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %92, label %43

43:                                               ; preds = %9
  %44 = load i32, i32* %21, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %92, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %92, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %22, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %92, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %19, align 4
  %55 = add nsw i32 %53, %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %20, align 4
  %60 = ashr i32 %58, %59
  %61 = icmp sgt i32 %55, %60
  br i1 %61, label %92, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %63, %64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %20, align 4
  %70 = ashr i32 %68, %69
  %71 = icmp sgt i32 %65, %70
  br i1 %71, label %92, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %19, align 4
  %75 = add nsw i32 %73, %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %20, align 4
  %80 = ashr i32 %78, %79
  %81 = icmp sgt i32 %75, %80
  br i1 %81, label %92, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %83, %84
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %20, align 4
  %90 = ashr i32 %88, %89
  %91 = icmp sgt i32 %85, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %82, %72, %62, %52, %49, %46, %43, %9
  %93 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %93, i32* %10, align 4
  br label %160

94:                                               ; preds = %82
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %23, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %24, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %23, align 4
  %112 = mul nsw i32 %110, %111
  %113 = add nsw i32 %109, %112
  store i32 %113, i32* %25, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %27, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %24, align 4
  %124 = mul nsw i32 %122, %123
  %125 = add nsw i32 %121, %124
  store i32 %125, i32* %26, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %28, align 8
  store i32 0, i32* %29, align 4
  br label %133

133:                                              ; preds = %156, %94
  %134 = load i32, i32* %29, align 4
  %135 = load i32, i32* %19, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %159

137:                                              ; preds = %133
  %138 = load i32*, i32** %28, align 8
  %139 = load i32, i32* %26, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32* %141, i32** %30, align 8
  %142 = load i32*, i32** %27, align 8
  %143 = load i32, i32* %25, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32* %145, i32** %31, align 8
  %146 = load i32*, i32** %30, align 8
  %147 = load i32*, i32** %31, align 8
  %148 = load i32, i32* %19, align 4
  %149 = call i32 @memcpy(i32* %146, i32* %147, i32 %148)
  %150 = load i32, i32* %24, align 4
  %151 = load i32, i32* %26, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %26, align 4
  %153 = load i32, i32* %23, align 4
  %154 = load i32, i32* %25, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %25, align 4
  br label %156

156:                                              ; preds = %137
  %157 = load i32, i32* %29, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %29, align 4
  br label %133

159:                                              ; preds = %133
  store i32 0, i32* %10, align 4
  br label %160

160:                                              ; preds = %159, %92
  %161 = load i32, i32* %10, align 4
  ret i32 %161
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
