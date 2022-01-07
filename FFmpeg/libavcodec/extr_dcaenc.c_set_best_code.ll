; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_set_best_code.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_set_best_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCA_CODE_BOOKS = common dso_local global i32 0, align 4
@ff_dca_quant_index_group_size = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ([7 x i64]*, i64*, i32*)* @set_best_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_best_code([7 x i64]* %0, i64* %1, i32* %2) #0 {
  %4 = alloca [7 x i64]*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store [7 x i64]* %0, [7 x i64]** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %181, %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %184

31:                                               ; preds = %27
  %32 = load [7 x i64]*, [7 x i64]** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [7 x i64], [7 x i64]* %32, i64 %34
  %36 = getelementptr inbounds [7 x i64], [7 x i64]* %35, i64 0, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load i64*, i64** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = xor i32 %41, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @av_assert0(i32 %54)
  %56 = load [7 x i64]*, [7 x i64]** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [7 x i64], [7 x i64]* %56, i64 %58
  %60 = getelementptr inbounds [7 x i64], [7 x i64]* %59, i64 0, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %31
  %64 = load i32*, i32** @ff_dca_quant_index_group_size, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  br label %181

73:                                               ; preds = %31
  %74 = load [7 x i64]*, [7 x i64]** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [7 x i64], [7 x i64]* %74, i64 %76
  %78 = getelementptr inbounds [7 x i64], [7 x i64]* %77, i64 0, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %23, i64 %81
  store i64 %79, i64* %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %26, i64 %84
  store i32 0, i32* %85, align 4
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %135, %73
  %87 = load i32, i32* %8, align 4
  %88 = load i32*, i32** @ff_dca_quant_index_group_size, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %87, %92
  br i1 %93, label %94, label %138

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %23, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load [7 x i64]*, [7 x i64]** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [7 x i64], [7 x i64]* %99, i64 %101
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [7 x i64], [7 x i64]* %102, i64 0, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %98, %106
  br i1 %107, label %108, label %134

108:                                              ; preds = %94
  %109 = load [7 x i64]*, [7 x i64]** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [7 x i64], [7 x i64]* %109, i64 %111
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [7 x i64], [7 x i64]* %112, i64 0, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %108
  %119 = load [7 x i64]*, [7 x i64]** %4, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [7 x i64], [7 x i64]* %119, i64 %121
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [7 x i64], [7 x i64]* %122, i64 0, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %23, i64 %128
  store i64 %126, i64* %129, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %26, i64 %132
  store i32 %130, i32* %133, align 4
  br label %134

134:                                              ; preds = %118, %108, %94
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %86

138:                                              ; preds = %86
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %23, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 2
  store i64 %143, i64* %12, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64*, i64** %5, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp slt i64 %144, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %138
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %26, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %155, i32* %159, align 4
  %160 = load i64, i64* %12, align 8
  %161 = load i64, i64* %13, align 8
  %162 = add nsw i64 %161, %160
  store i64 %162, i64* %13, align 8
  br label %180

163:                                              ; preds = %138
  %164 = load i32*, i32** @ff_dca_quant_index_group_size, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %168, i32* %172, align 4
  %173 = load i64*, i64** %5, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %13, align 8
  %179 = add nsw i64 %178, %177
  store i64 %179, i64* %13, align 8
  br label %180

180:                                              ; preds = %163, %151
  br label %181

181:                                              ; preds = %180, %63
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %27

184:                                              ; preds = %27
  %185 = load i64, i64* %13, align 8
  %186 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %186)
  ret i64 %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_assert0(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
