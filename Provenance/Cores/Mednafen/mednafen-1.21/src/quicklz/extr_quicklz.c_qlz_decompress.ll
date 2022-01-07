; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/quicklz/extr_quicklz.c_qlz_decompress.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/quicklz/extr_quicklz.c_qlz_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QLZ_STREAMING_MODE_ROUNDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qlz_decompress(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 8
  %16 = load i8*, i8** %6, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = urem i64 %17, 8
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to i64*
  store i64* %22, i64** %8, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 2
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 4, i32 1
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* @QLZ_STREAMING_MODE_ROUNDED, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = bitcast i8* %37 to i8**
  store i8** %38, i8*** %11, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @qlz_size_decompressed(i8* %39)
  store i64 %40, i64* %12, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @qlz_size_compressed(i8* %41)
  store i64 %42, i64* %13, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i64 @qlz_size_decompressed(i8* %45)
  %47 = add i64 %44, %46
  %48 = sub i64 %47, 1
  %49 = load i32, i32* @QLZ_STREAMING_MODE_ROUNDED, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp uge i64 %48, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %3
  %53 = load i8*, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i8**, i8*** %11, align 8
  %68 = call i32 @qlz_decompress_core(i8* %62, i8* %63, i64 %64, i64 %65, i8* %66, i8** %67)
  br label %77

69:                                               ; preds = %52
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i64, i64* %12, align 8
  %76 = call i32 (i8*, ...) @memcpy(i8* %70, i8* %74, i64 %75)
  br label %77

77:                                               ; preds = %69, %58
  %78 = load i64*, i64** %8, align 8
  store i64 0, i64* %78, align 8
  br label %122

79:                                               ; preds = %3
  %80 = load i8*, i8** %4, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8*, i8** %10, align 8
  %91 = load i64*, i64** %8, align 8
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i8**, i8*** %11, align 8
  %98 = call i32 @qlz_decompress_core(i8* %89, i8* %93, i64 %94, i64 %95, i8* %96, i8** %97)
  br label %110

99:                                               ; preds = %79
  %100 = load i8*, i8** %10, align 8
  %101 = load i64*, i64** %8, align 8
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8*, i8** %4, align 8
  %105 = load i32, i32* %9, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i64, i64* %12, align 8
  %109 = call i32 (i8*, ...) @memcpy(i8* %103, i8* %107, i64 %108)
  br label %110

110:                                              ; preds = %99, %85
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = load i64*, i64** %8, align 8
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i64, i64* %12, align 8
  %117 = call i32 (i8*, ...) @memcpy(i8* %111, i8* %115, i64 %116)
  %118 = load i64, i64* %12, align 8
  %119 = load i64*, i64** %8, align 8
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, %118
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %110, %77
  %123 = load i64, i64* %12, align 8
  ret i64 %123
}

declare dso_local i64 @qlz_size_decompressed(i8*) #1

declare dso_local i64 @qlz_size_compressed(i8*) #1

declare dso_local i32 @qlz_decompress_core(i8*, i8*, i64, i64, i8*, i8**) #1

declare dso_local i32 @memcpy(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
