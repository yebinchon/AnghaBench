; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_pix_fmt_match.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_pix_fmt_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@AV_PIX_FMT_FLAG_PAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @pix_fmt_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_fmt_match(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.TYPE_6__* @av_pix_fmt_desc_get(i32 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %13, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %17 = call i32 @av_assert2(%struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %149

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %147 [
    i32 4, label %26
    i32 3, label %51
    i32 2, label %82
    i32 1, label %113
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load i32, i32* %10, align 4
  %40 = ashr i32 %39, 14
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = ashr i32 %44, 12
  %46 = and i32 %45, 3
  %47 = icmp eq i32 %46, 0
  br label %48

48:                                               ; preds = %43, %38, %29, %26
  %49 = phi i1 [ false, %38 ], [ false, %29 ], [ false, %26 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %24, %48
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %54
  %64 = load i32, i32* %10, align 4
  %65 = ashr i32 %64, 10
  %66 = and i32 %65, 3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load i32, i32* %10, align 4
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %74, %77
  br label %79

79:                                               ; preds = %71, %63, %54, %51
  %80 = phi i1 [ false, %63 ], [ false, %54 ], [ false, %51 ], [ %78, %71 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %24, %79
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %82
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %85
  %95 = load i32, i32* %10, align 4
  %96 = ashr i32 %95, 6
  %97 = and i32 %96, 3
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load i32, i32* %10, align 4
  %104 = ashr i32 %103, 4
  %105 = and i32 %104, 3
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %105, %108
  br label %110

110:                                              ; preds = %102, %94, %85, %82
  %111 = phi i1 [ false, %94 ], [ false, %85 ], [ false, %82 ], [ %109, %102 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %24, %110
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %113
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %116
  %126 = load i32, i32* %10, align 4
  %127 = ashr i32 %126, 2
  %128 = and i32 %127, 3
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %125
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, 3
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %142 = mul nsw i32 %140, %141
  %143 = icmp eq i32 %139, %142
  br label %144

144:                                              ; preds = %134, %130, %125, %116, %113
  %145 = phi i1 [ false, %130 ], [ false, %125 ], [ false, %116 ], [ false, %113 ], [ %143, %134 ]
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %144, %24
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %147, %23
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local %struct.TYPE_6__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_assert2(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
