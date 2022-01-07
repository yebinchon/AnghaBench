; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_loop_wchar.h_wchar_id_loop_convert.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_loop_wchar.h_wchar_id_loop_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conv_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8**, i64*, i8**, i64*)* @wchar_id_loop_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wchar_id_loop_convert(i64 %0, i8** %1, i64* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.conv_struct*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64* %4, i64** %10, align 8
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to %struct.conv_struct*
  store %struct.conv_struct* %19, %struct.conv_struct** %11, align 8
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %12, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = load i64, i64* %23, align 8
  %25 = udiv i64 %24, 4
  store i64 %25, i64* %13, align 8
  %26 = load i8**, i8*** %9, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %14, align 8
  %29 = load i64*, i64** %10, align 8
  %30 = load i64, i64* %29, align 8
  %31 = udiv i64 %30, 4
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %15, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i64, i64* %13, align 8
  br label %39

37:                                               ; preds = %5
  %38 = load i64, i64* %15, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ]
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* %16, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %89

43:                                               ; preds = %39
  %44 = load i64, i64* %16, align 8
  %45 = mul i64 %44, 4
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %47, %45
  store i64 %48, i64* %46, align 8
  %49 = load i64, i64* %16, align 8
  %50 = mul i64 %49, 4
  %51 = load i64*, i64** %10, align 8
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %52, %50
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %78, %43
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %12, align 8
  %57 = load i32, i32* %55, align 4
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %14, align 8
  store i32 %58, i32* %59, align 4
  %61 = load %struct.conv_struct*, %struct.conv_struct** %11, align 8
  %62 = getelementptr inbounds %struct.conv_struct, %struct.conv_struct* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = icmp ne i32 (i32, i32)* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %54
  %67 = load %struct.conv_struct*, %struct.conv_struct** %11, align 8
  %68 = getelementptr inbounds %struct.conv_struct, %struct.conv_struct* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32 (i32, i32)*, i32 (i32, i32)** %69, align 8
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.conv_struct*, %struct.conv_struct** %11, align 8
  %73 = getelementptr inbounds %struct.conv_struct, %struct.conv_struct* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %70(i32 %71, i32 %75)
  br label %77

77:                                               ; preds = %66, %54
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %16, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %16, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %54, label %82

82:                                               ; preds = %78
  %83 = load i32*, i32** %12, align 8
  %84 = bitcast i32* %83 to i8*
  %85 = load i8**, i8*** %7, align 8
  store i8* %84, i8** %85, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = bitcast i32* %86 to i8*
  %88 = load i8**, i8*** %9, align 8
  store i8* %87, i8** %88, align 8
  br label %89

89:                                               ; preds = %82, %39
  ret i64 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
