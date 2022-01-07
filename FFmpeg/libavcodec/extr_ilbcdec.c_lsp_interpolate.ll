; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_lsp_interpolate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_lsp_interpolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@LPC_FILTERORDER = common dso_local global i32 0, align 4
@lsf_weight_30ms = common dso_local global i32* null, align 8
@kLpcChirpSyntDenum = common dso_local global i32 0, align 4
@lsf_weight_20ms = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, %struct.TYPE_3__*)* @lsp_interpolate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsp_interpolate(i32* %0, i32* %1, i32* %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %17 = load i32, i32* @LPC_FILTERORDER, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %16, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 30
  br i1 %31, label %32, label %85

32:                                               ; preds = %5
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** @lsf_weight_30ms, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @lsp_interpolate2polydec(i32* %21, i32* %35, i32* %36, i32 %39, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %16, align 4
  %44 = mul nsw i32 %43, 2
  %45 = call i32 @memcpy(i32* %42, i32* %21, i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @kLpcChirpSyntDenum, align 4
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @bw_expand(i32* %46, i32* %21, i32 %47, i32 %48)
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %51

51:                                               ; preds = %81, %32
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 6
  br i1 %53, label %54, label %84

54:                                               ; preds = %51
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i32*, i32** @lsf_weight_30ms, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @lsp_interpolate2polydec(i32* %21, i32* %55, i32* %56, i32 %61, i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %16, align 4
  %69 = mul nsw i32 %68, 2
  %70 = call i32 @memcpy(i32* %67, i32* %21, i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* @kLpcChirpSyntDenum, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @bw_expand(i32* %74, i32* %21, i32 %75, i32 %76)
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %54
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %51

84:                                               ; preds = %51
  br label %125

85:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %121, %85
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %86
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = load i32*, i32** @lsf_weight_20ms, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @lsp_interpolate2polydec(i32* %21, i32* %95, i32* %96, i32 %101, i32 %102)
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %16, align 4
  %109 = mul nsw i32 %108, 2
  %110 = call i32 @memcpy(i32* %107, i32* %21, i32 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* @kLpcChirpSyntDenum, align 4
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @bw_expand(i32* %114, i32* %21, i32 %115, i32 %116)
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %92
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %86

124:                                              ; preds = %86
  br label %125

125:                                              ; preds = %124, %84
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 30
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = load i32, i32* %9, align 4
  %136 = mul nsw i32 %135, 2
  %137 = call i32 @memcpy(i32* %133, i32* %134, i32 %136)
  br label %146

138:                                              ; preds = %125
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = mul nsw i32 %143, 2
  %145 = call i32 @memcpy(i32* %141, i32* %142, i32 %144)
  br label %146

146:                                              ; preds = %138, %130
  %147 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %147)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lsp_interpolate2polydec(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @bw_expand(i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
