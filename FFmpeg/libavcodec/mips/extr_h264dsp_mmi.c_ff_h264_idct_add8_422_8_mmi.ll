; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_mmi.c_ff_h264_idct_add8_422_8_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_mmi.c_ff_h264_idct_add8_422_8_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scan8 = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_idct_add8_422_8_mmi(i64** %0, i32* %1, i64* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64** %0, i64*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %91, %5
  %14 = load i32, i32* %12, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %94

16:                                               ; preds = %13
  %17 = load i32, i32* %12, align 4
  %18 = mul nsw i32 %17, 16
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %87, %16
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = mul nsw i32 %21, 16
  %23 = add nsw i32 %22, 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %90

25:                                               ; preds = %19
  %26 = load i64*, i64** %10, align 8
  %27 = load i64*, i64** @scan8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %26, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %25
  %36 = load i64**, i64*** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64*, i64** %36, i64 %39
  %41 = load i64*, i64** %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %41, i64 %47
  %49 = load i64*, i64** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %50, 16
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @ff_h264_idct_add_8_mmi(i64* %48, i64* %53, i32 %54)
  br label %86

56:                                               ; preds = %25
  %57 = load i64*, i64** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = mul nsw i32 %58, 16
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %56
  %65 = load i64**, i64*** %6, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64*, i64** %65, i64 %68
  %70 = load i64*, i64** %69, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %70, i64 %76
  %78 = load i64*, i64** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = mul nsw i32 %79, 16
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @ff_h264_idct_dc_add_8_mmi(i64* %77, i64* %82, i32 %83)
  br label %85

85:                                               ; preds = %64, %56
  br label %86

86:                                               ; preds = %85, %35
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %19

90:                                               ; preds = %19
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %13

94:                                               ; preds = %13
  store i32 1, i32* %12, align 4
  br label %95

95:                                               ; preds = %177, %94
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %96, 3
  br i1 %97, label %98, label %180

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = mul nsw i32 %99, 16
  %101 = add nsw i32 %100, 4
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %173, %98
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = mul nsw i32 %104, 16
  %106 = add nsw i32 %105, 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %176

108:                                              ; preds = %102
  %109 = load i64*, i64** %10, align 8
  %110 = load i64*, i64** @scan8, align 8
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i64, i64* %109, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %108
  %120 = load i64**, i64*** %6, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64*, i64** %120, i64 %123
  %125 = load i64*, i64** %124, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %125, i64 %132
  %134 = load i64*, i64** %8, align 8
  %135 = load i32, i32* %11, align 4
  %136 = mul nsw i32 %135, 16
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @ff_h264_idct_add_8_mmi(i64* %133, i64* %138, i32 %139)
  br label %172

141:                                              ; preds = %108
  %142 = load i64*, i64** %8, align 8
  %143 = load i32, i32* %11, align 4
  %144 = mul nsw i32 %143, 16
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %142, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %141
  %150 = load i64**, i64*** %6, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64*, i64** %150, i64 %153
  %155 = load i64*, i64** %154, align 8
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %155, i64 %162
  %164 = load i64*, i64** %8, align 8
  %165 = load i32, i32* %11, align 4
  %166 = mul nsw i32 %165, 16
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %164, i64 %167
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @ff_h264_idct_dc_add_8_mmi(i64* %163, i64* %168, i32 %169)
  br label %171

171:                                              ; preds = %149, %141
  br label %172

172:                                              ; preds = %171, %119
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %102

176:                                              ; preds = %102
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %12, align 4
  br label %95

180:                                              ; preds = %95
  ret void
}

declare dso_local i32 @ff_h264_idct_add_8_mmi(i64*, i64*, i32) #1

declare dso_local i32 @ff_h264_idct_dc_add_8_mmi(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
