; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vble.c_vble_restore_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vble.c_vble_restore_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32*, i32*, i32*, i32, i32*, i32*)* }
%struct.TYPE_8__ = type { i32**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, i32*, i32, i32, i32, i32)* @vble_restore_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vble_restore_plane(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %15, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %16, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %43

43:                                               ; preds = %152, %7
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %155

47:                                               ; preds = %43
  store i32 0, i32* %19, align 4
  br label %48

48:                                               ; preds = %86, %47
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %19, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %52
  %60 = load i32*, i32** %16, align 8
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 1, %64
  %66 = load i32*, i32** %10, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @get_bits(i32* %66, i32 %71)
  %73 = add nsw i32 %65, %72
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %22, align 4
  %76 = ashr i32 %75, 1
  %77 = load i32, i32* %22, align 4
  %78 = and i32 %77, 1
  %79 = sub nsw i32 0, %78
  %80 = xor i32 %76, %79
  %81 = load i32*, i32** %16, align 8
  %82 = load i32, i32* %19, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %59, %52
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  br label %48

89:                                               ; preds = %48
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %89
  store i32 0, i32* %20, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sub nsw i32 0, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %21, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32 (i32*, i32*, i32*, i32, i32*, i32*)*, i32 (i32*, i32*, i32*, i32, i32*, i32*)** %101, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 0, %106
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32*, i32** %16, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i32 %102(i32* %103, i32* %108, i32* %109, i32 %110, i32* %20, i32* %21)
  br label %143

112:                                              ; preds = %89
  %113 = load i32*, i32** %16, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %15, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 %115, i32* %117, align 4
  store i32 1, i32* %19, align 4
  br label %118

118:                                              ; preds = %139, %112
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %118
  %123 = load i32*, i32** %16, align 8
  %124 = load i32, i32* %19, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %15, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %127, %133
  %135 = load i32*, i32** %15, align 8
  %136 = load i32, i32* %19, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %122
  %140 = load i32, i32* %19, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %19, align 4
  br label %118

142:                                              ; preds = %118
  br label %143

143:                                              ; preds = %142, %92
  %144 = load i32, i32* %17, align 4
  %145 = load i32*, i32** %15, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %15, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load i32*, i32** %16, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %16, align 8
  br label %152

152:                                              ; preds = %143
  %153 = load i32, i32* %18, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %18, align 4
  br label %43

155:                                              ; preds = %43
  ret void
}

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
