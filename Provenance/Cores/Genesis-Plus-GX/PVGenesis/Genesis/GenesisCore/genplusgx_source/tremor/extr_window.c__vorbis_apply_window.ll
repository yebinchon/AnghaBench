; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_window.c__vorbis_apply_window.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_window.c__vorbis_apply_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_vorbis_apply_window(i64* %0, i8** %1, i64* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32*], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load i64*, i64** %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %14, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %15, align 8
  %33 = load i64*, i64** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %14, align 8
  %39 = sdiv i64 %38, 4
  %40 = load i64, i64* %15, align 8
  %41 = sdiv i64 %40, 4
  %42 = sub nsw i64 %39, %41
  store i64 %42, i64* %17, align 8
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* %15, align 8
  %45 = sdiv i64 %44, 2
  %46 = add nsw i64 %43, %45
  store i64 %46, i64* %18, align 8
  %47 = load i64, i64* %14, align 8
  %48 = sdiv i64 %47, 2
  %49 = load i64, i64* %14, align 8
  %50 = sdiv i64 %49, 4
  %51 = add nsw i64 %48, %50
  %52 = load i64, i64* %16, align 8
  %53 = sdiv i64 %52, 4
  %54 = sub nsw i64 %51, %53
  store i64 %54, i64* %19, align 8
  %55 = load i64, i64* %19, align 8
  %56 = load i64, i64* %16, align 8
  %57 = sdiv i64 %56, 2
  %58 = add nsw i64 %55, %57
  store i64 %58, i64* %20, align 8
  %59 = load i8**, i8*** %8, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 0
  store i32* %62, i32** %63, align 16
  %64 = load i8**, i8*** %8, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 1
  store i32* %67, i32** %68, align 8
  store i32 0, i32* %21, align 4
  br label %69

69:                                               ; preds = %79, %6
  %70 = load i32, i32* %21, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %17, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i64*, i64** %7, align 8
  %76 = load i32, i32* %21, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %21, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %21, align 4
  br label %69

82:                                               ; preds = %69
  store i32 0, i32* %22, align 4
  br label %83

83:                                               ; preds = %107, %82
  %84 = load i32, i32* %21, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %18, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %83
  %89 = load i64*, i64** %7, align 8
  %90 = load i32, i32* %21, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %22, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @MULT31(i64 %93, i32 %101)
  %103 = load i64*, i64** %7, align 8
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 %102, i64* %106, align 8
  br label %107

107:                                              ; preds = %88
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %21, align 4
  %110 = load i32, i32* %22, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %22, align 4
  br label %83

112:                                              ; preds = %83
  %113 = load i64, i64* %19, align 8
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %21, align 4
  %115 = load i64, i64* %16, align 8
  %116 = sdiv i64 %115, 2
  %117 = sub nsw i64 %116, 1
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %22, align 4
  br label %119

119:                                              ; preds = %143, %112
  %120 = load i32, i32* %21, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %20, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %148

124:                                              ; preds = %119
  %125 = load i64*, i64** %7, align 8
  %126 = load i32, i32* %21, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [2 x i32*], [2 x i32*]* %13, i64 0, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %22, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @MULT31(i64 %129, i32 %137)
  %139 = load i64*, i64** %7, align 8
  %140 = load i32, i32* %21, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 %138, i64* %142, align 8
  br label %143

143:                                              ; preds = %124
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %22, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %22, align 4
  br label %119

148:                                              ; preds = %119
  br label %149

149:                                              ; preds = %159, %148
  %150 = load i32, i32* %21, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %14, align 8
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load i64*, i64** %7, align 8
  %156 = load i32, i32* %21, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %21, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %21, align 4
  br label %149

162:                                              ; preds = %149
  ret void
}

declare dso_local i64 @MULT31(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
