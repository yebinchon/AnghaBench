; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dirac_vlc.c_ff_dirac_golomb_read_16bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dirac_vlc.c_ff_dirac_golomb_read_16bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i64, i32, i64, i32 }

@LUT_SIZE = common dso_local global i32 0, align 4
@res = common dso_local global i32 0, align 4
@res_bits = common dso_local global i32 0, align 4
@RSIZE_BITS = common dso_local global i32 0, align 4
@LUT_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dirac_golomb_read_16bit(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca [4 x %struct.TYPE_3__*], align 16
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32*, i32** %10, align 8
  store i32* %19, i32** %15, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = load i32, i32* @LUT_SIZE, align 4
  %22 = mul nsw i32 2, %21
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %27
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %17, align 8
  %29 = load i32, i32* @res, align 4
  %30 = call i32 @INIT_RESIDUE(i32 %29)
  store i32 1, i32* %13, align 4
  br label %31

31:                                               ; preds = %174, %5
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %177

35:                                               ; preds = %31
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %42
  %44 = getelementptr inbounds [4 x %struct.TYPE_3__*], [4 x %struct.TYPE_3__*]* %16, i64 0, i64 0
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %44, align 16
  %45 = getelementptr inbounds [4 x %struct.TYPE_3__*], [4 x %struct.TYPE_3__*]* %16, i64 0, i64 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 16
  %47 = load i32, i32* @LUT_SIZE, align 4
  %48 = mul nsw i32 1, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %49
  %51 = getelementptr inbounds [4 x %struct.TYPE_3__*], [4 x %struct.TYPE_3__*]* %16, i64 0, i64 1
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %51, align 8
  %52 = getelementptr inbounds [4 x %struct.TYPE_3__*], [4 x %struct.TYPE_3__*]* %16, i64 0, i64 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 16
  %54 = load i32, i32* @LUT_SIZE, align 4
  %55 = mul nsw i32 2, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %56
  %58 = getelementptr inbounds [4 x %struct.TYPE_3__*], [4 x %struct.TYPE_3__*]* %16, i64 0, i64 2
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %58, align 16
  %59 = getelementptr inbounds [4 x %struct.TYPE_3__*], [4 x %struct.TYPE_3__*]* %16, i64 0, i64 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 16
  %61 = load i32, i32* @LUT_SIZE, align 4
  %62 = mul nsw i32 3, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %63
  %65 = getelementptr inbounds [4 x %struct.TYPE_3__*], [4 x %struct.TYPE_3__*]* %16, i64 0, i64 3
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %65, align 8
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %35
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %6, align 4
  br label %179

72:                                               ; preds = %35
  %73 = load i32, i32* @res_bits, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %120

75:                                               ; preds = %72
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %120

80:                                               ; preds = %75
  store i32 1, i32* %18, align 4
  %81 = load i32, i32* @res, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @APPEND_RESIDUE(i32 %81, i32 %84)
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %105, %80
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @res_bits, align 4
  %89 = ashr i32 %88, 1
  %90 = sub nsw i32 %89, 1
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %86
  %93 = load i32, i32* %18, align 4
  %94 = shl i32 %93, 1
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* @res, align 4
  %96 = load i32, i32* @RSIZE_BITS, align 4
  %97 = load i32, i32* %12, align 4
  %98 = mul nsw i32 2, %97
  %99 = sub nsw i32 %96, %98
  %100 = sub nsw i32 %99, 2
  %101 = ashr i32 %95, %100
  %102 = and i32 %101, 1
  %103 = load i32, i32* %18, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %18, align 4
  br label %105

105:                                              ; preds = %92
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %86

108:                                              ; preds = %86
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sub nsw i32 %112, 1
  %114 = mul nsw i32 %111, %113
  %115 = load i32*, i32** %15, align 8
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %114, i32* %119, align 4
  store i32 0, i32* @res, align 4
  store i32 0, i32* @res_bits, align 4
  br label %120

120:                                              ; preds = %108, %75, %72
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %139, %120
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @LUT_BITS, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %121
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %15, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %125
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %121

142:                                              ; preds = %121
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* @res, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @APPEND_RESIDUE(i32 %150, i32 %153)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %142
  br label %169

160:                                              ; preds = %142
  %161 = load i32, i32* @res_bits, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  br label %167

164:                                              ; preds = %160
  %165 = load i32, i32* @res_bits, align 4
  %166 = and i32 %165, 1
  br label %167

167:                                              ; preds = %164, %163
  %168 = phi i32 [ 2, %163 ], [ %166, %164 ]
  br label %169

169:                                              ; preds = %167, %159
  %170 = phi i32 [ 3, %159 ], [ %168, %167 ]
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x %struct.TYPE_3__*], [4 x %struct.TYPE_3__*]* %16, i64 0, i64 %171
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  store %struct.TYPE_3__* %173, %struct.TYPE_3__** %17, align 8
  br label %174

174:                                              ; preds = %169
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %13, align 4
  br label %31

177:                                              ; preds = %31
  %178 = load i32, i32* %14, align 4
  store i32 %178, i32* %6, align 4
  br label %179

179:                                              ; preds = %177, %70
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local i32 @INIT_RESIDUE(i32) #1

declare dso_local i32 @APPEND_RESIDUE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
