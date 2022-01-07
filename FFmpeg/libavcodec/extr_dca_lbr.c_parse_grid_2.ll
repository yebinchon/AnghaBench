; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_grid_2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_grid_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32*** }

@ff_dca_scf_to_grid_2 = common dso_local global i32* null, align 8
@ff_dca_grid_2_to_scf = common dso_local global i64* null, align 8
@ff_dca_vlc_grid_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32, i32, i32)* @parse_grid_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_grid_2(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32*, i32** @ff_dca_scf_to_grid_2, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %31, %6
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %15, align 4
  br label %35

35:                                               ; preds = %149, %33
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %152

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %145, %39
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %148

45:                                               ; preds = %41
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32***, i32**** %47, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32**, i32*** %48, i64 %50
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %18, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %45
  %61 = load i64*, i64** @ff_dca_grid_2_to_scf, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %65, %68
  br label %70

70:                                               ; preds = %60, %45
  %71 = phi i1 [ false, %45 ], [ %69, %60 ]
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %70
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = load i32*, i32** %18, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32***, i32**** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32**, i32*** %82, i64 %84
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @memcpy(i32* %79, i32* %90, i32 64)
  br label %92

92:                                               ; preds = %78, %75
  br label %145

93:                                               ; preds = %70
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %139, %93
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %97, label %144

97:                                               ; preds = %94
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = call i32 @get_bits_left(i32* %99)
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i32*, i32** %18, align 8
  %104 = load i32, i32* %13, align 4
  %105 = mul nsw i32 %104, 8
  %106 = sub nsw i32 64, %105
  %107 = call i32 @memset(i32* %103, i32 0, i32 %106)
  br label %144

108:                                              ; preds = %97
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = call i64 @get_bits1(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %108
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %131, %113
  %115 = load i32, i32* %14, align 4
  %116 = icmp slt i32 %115, 8
  br i1 %116, label %117, label %134

117:                                              ; preds = %114
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = call i64 @ensure_bits(i32* %119, i32 20)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %134

123:                                              ; preds = %117
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = call i32 @parse_vlc(i32* %125, i32* @ff_dca_vlc_grid_2, i32 2)
  %127 = load i32*, i32** %18, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %126, i32* %130, align 4
  br label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %114

134:                                              ; preds = %122, %114
  br label %138

135:                                              ; preds = %108
  %136 = load i32*, i32** %18, align 8
  %137 = call i32 @memset(i32* %136, i32 0, i32 8)
  br label %138

138:                                              ; preds = %135, %134
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  %142 = load i32*, i32** %18, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 8
  store i32* %143, i32** %18, align 8
  br label %94

144:                                              ; preds = %102, %94
  br label %145

145:                                              ; preds = %144, %92
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  br label %41

148:                                              ; preds = %41
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %15, align 4
  br label %35

152:                                              ; preds = %35
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i64 @ensure_bits(i32*, i32) #1

declare dso_local i32 @parse_vlc(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
