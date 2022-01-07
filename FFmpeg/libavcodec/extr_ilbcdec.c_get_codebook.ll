; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_get_codebook.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_get_codebook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBL = common dso_local global i32 0, align 4
@CB_HALFFILTERLEN = common dso_local global i32 0, align 4
@kCbFiltersRev = common dso_local global i64 0, align 8
@CB_FILTERLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @get_codebook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_codebook(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @SUBL, align 4
  %18 = add nsw i32 %17, 5
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @SUBL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = sdiv i32 %30, 2
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %29, %5
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %36, %37
  %39 = add nsw i32 %38, 1
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 %54, 2
  %56 = call i32 @memcpy(i32* %45, i32* %53, i32 %55)
  br label %167

57:                                               ; preds = %34
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %63, %64
  %66 = add nsw i32 %65, 1
  %67 = sub nsw i32 %62, %66
  %68 = call i64 @SPL_MUL_16_16(i32 2, i32 %67)
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sdiv i32 %72, 2
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @create_augmented_vector(i32 %74, i32* %78, i32* %79)
  br label %166

81:                                               ; preds = %57
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = sub nsw i32 %85, %86
  %88 = add nsw i32 %87, 1
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %124

90:                                               ; preds = %81
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %94, %95
  %97 = sub nsw i32 %91, %96
  store i32 %97, i32* %16, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* @CB_HALFFILTERLEN, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* @CB_HALFFILTERLEN, align 4
  %104 = mul nsw i32 %103, 2
  %105 = call i32 @memset(i32* %102, i32 0, i32 %104)
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* @CB_HALFFILTERLEN, align 4
  %111 = mul nsw i32 %110, 2
  %112 = call i32 @memset(i32* %109, i32 0, i32 %111)
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32*, i32** %6, align 8
  %119 = load i64, i64* @kCbFiltersRev, align 8
  %120 = inttoptr i64 %119 to i32*
  %121 = load i32, i32* @CB_FILTERLEN, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @filter_mafq12(i32* %117, i32* %118, i32* %120, i32 %121, i32 %122)
  br label %165

124:                                              ; preds = %81
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load i32, i32* @CB_FILTERLEN, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %16, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* @CB_HALFFILTERLEN, align 4
  %135 = mul nsw i32 %134, 2
  %136 = call i32 @memset(i32* %133, i32 0, i32 %135)
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 7
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i64, i64* @kCbFiltersRev, align 8
  %143 = inttoptr i64 %142 to i32*
  %144 = load i32, i32* @CB_FILTERLEN, align 4
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 5
  %147 = call i32 @filter_mafq12(i32* %141, i32* %21, i32* %143, i32 %144, i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = shl i32 %148, 1
  %150 = sub nsw i32 %149, 20
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32, i32* %12, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32, i32* %9, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sub nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @SUBL, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %21, i64 %160
  %162 = getelementptr inbounds i32, i32* %161, i64 5
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 @create_augmented_vector(i32 %158, i32* %162, i32* %163)
  br label %165

165:                                              ; preds = %124, %90
  br label %166

166:                                              ; preds = %165, %61
  br label %167

167:                                              ; preds = %166, %41
  %168 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %168)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @SPL_MUL_16_16(i32, i32) #2

declare dso_local i32 @create_augmented_vector(i32, i32*, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @filter_mafq12(i32*, i32*, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
