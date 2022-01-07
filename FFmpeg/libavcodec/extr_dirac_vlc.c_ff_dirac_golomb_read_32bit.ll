; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dirac_vlc.c_ff_dirac_golomb_read_32bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dirac_vlc.c_ff_dirac_golomb_read_32bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i64, i32, i32 }

@LUT_SIZE = common dso_local global i32 0, align 4
@res = common dso_local global i32 0, align 4
@res_bits = common dso_local global i32 0, align 4
@RSIZE_BITS = common dso_local global i32 0, align 4
@LUT_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dirac_golomb_read_32bit(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
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

31:                                               ; preds = %164, %5
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %167

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
  br label %169

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
  %84 = load i32, i32* %83, align 4
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
  %121 = load i32*, i32** %15, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @LUT_BITS, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memcpy(i32* %124, i32 %127, i32 %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* @res, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @APPEND_RESIDUE(i32 %140, i32 %143)
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %120
  br label %159

150:                                              ; preds = %120
  %151 = load i32, i32* @res_bits, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  br label %157

154:                                              ; preds = %150
  %155 = load i32, i32* @res_bits, align 4
  %156 = and i32 %155, 1
  br label %157

157:                                              ; preds = %154, %153
  %158 = phi i32 [ 2, %153 ], [ %156, %154 ]
  br label %159

159:                                              ; preds = %157, %149
  %160 = phi i32 [ 3, %149 ], [ %158, %157 ]
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x %struct.TYPE_3__*], [4 x %struct.TYPE_3__*]* %16, i64 0, i64 %161
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  store %struct.TYPE_3__* %163, %struct.TYPE_3__** %17, align 8
  br label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  br label %31

167:                                              ; preds = %31
  %168 = load i32, i32* %14, align 4
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %167, %70
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

declare dso_local i32 @INIT_RESIDUE(i32) #1

declare dso_local i32 @APPEND_RESIDUE(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
