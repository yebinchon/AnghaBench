; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_unpack_SQVH.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cook.c_unpack_SQVH.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@vd_tab = common dso_local global i32* null, align 8
@vpr_tab = common dso_local global i32* null, align 8
@invradix_tab = common dso_local global i32* null, align 8
@kmax_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32*, i32*)* @unpack_SQVH to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_SQVH(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32*, i32** @vd_tab, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %155, %5
  %23 = load i32, i32* %11, align 4
  %24 = load i32*, i32** @vpr_tab, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %23, %28
  br i1 %29, label %30, label %158

30:                                               ; preds = %22
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @get_vlc2(i32* %32, i32 %40, i32 %48, i32 3)
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = call i64 @get_bits_count(i32* %54)
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  store i32 1, i32* %16, align 4
  br label %58

58:                                               ; preds = %57, %30
  %59 = load i32, i32* %14, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %92, %58
  %62 = load i32, i32* %12, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = load i32*, i32** @invradix_tab, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %65, %70
  %72 = sdiv i32 %71, 1048576
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** @kmax_tab, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  %81 = mul nsw i32 %74, %80
  %82 = sub nsw i32 %73, %81
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %83, i64 %89
  store i32 %82, i32* %90, align 4
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %64
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %12, align 4
  br label %61

95:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %151, %95
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %154

100:                                              ; preds = %96
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %14, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %101, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %141

111:                                              ; preds = %100
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = call i64 @get_bits_count(i32* %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %114, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %111
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = call i32 @get_bits1(i32* %121)
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %14, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %123, i64 %129
  store i32 %122, i32* %130, align 4
  br label %140

131:                                              ; preds = %111
  store i32 1, i32* %16, align 4
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %14, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %132, i64 %138
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %131, %119
  br label %150

141:                                              ; preds = %100
  %142 = load i32*, i32** %10, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %14, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %142, i64 %148
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %141, %140
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %96

154:                                              ; preds = %96
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %22

158:                                              ; preds = %22
  %159 = load i32, i32* %16, align 4
  ret i32 %159
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i64 @get_bits_count(i32*) #1

declare dso_local i32 @get_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
