; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_postProcessScanlines.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_postProcessScanlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, %struct.TYPE_3__*)* @postProcessScanlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @postProcessScanlines(i8* %0, i8* %1, i32 %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [7 x i32], align 16
  %14 = alloca [7 x i32], align 16
  %15 = alloca [8 x i64], align 16
  %16 = alloca [8 x i64], align 16
  %17 = alloca [8 x i64], align 16
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = call i32 @lodepng_get_bpp(i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 31, i32* %6, align 4
  br label %158

25:                                               ; preds = %5
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %74

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  %32 = icmp ult i32 %31, 8
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %12, align 4
  %36 = mul i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %12, align 4
  %39 = mul i32 %37, %38
  %40 = add i32 %39, 7
  %41 = udiv i32 %40, 8
  %42 = mul i32 %41, 8
  %43 = icmp ne i32 %36, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %33
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @unfilter(i8* %45, i8* %46, i32 %47, i32 %48, i32 %49)
  %51 = call i32 @CERROR_TRY_RETURN(i32 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %12, align 4
  %56 = mul i32 %54, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %12, align 4
  %59 = mul i32 %57, %58
  %60 = add i32 %59, 7
  %61 = udiv i32 %60, 8
  %62 = mul i32 %61, 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @removePaddingBits(i8* %52, i8* %53, i32 %56, i32 %62, i32 %63)
  br label %73

65:                                               ; preds = %33, %30
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @unfilter(i8* %66, i8* %67, i32 %68, i32 %69, i32 %70)
  %72 = call i32 @CERROR_TRY_RETURN(i32 %71)
  br label %73

73:                                               ; preds = %65, %44
  br label %157

74:                                               ; preds = %25
  %75 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 0
  %76 = getelementptr inbounds [7 x i32], [7 x i32]* %14, i64 0, i64 0
  %77 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 0
  %78 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 0
  %79 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 0
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @Adam7_getpassvalues(i32* %75, i32* %76, i64* %77, i64* %78, i64* %79, i32 %80, i32 %81, i32 %82)
  store i32 0, i32* %18, align 4
  br label %84

84:                                               ; preds = %147, %74
  %85 = load i32, i32* %18, align 4
  %86 = icmp ult i32 %85, 7
  br i1 %86, label %87, label %150

87:                                               ; preds = %84
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %18, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %18, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  %100 = load i32, i32* %18, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %18, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [7 x i32], [7 x i32]* %14, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @unfilter(i8* %93, i8* %99, i32 %103, i32 %107, i32 %108)
  %110 = call i32 @CERROR_TRY_RETURN(i32 %109)
  %111 = load i32, i32* %12, align 4
  %112 = icmp ult i32 %111, 8
  br i1 %112, label %113, label %146

113:                                              ; preds = %87
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* %18, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i8, i8* %114, i64 %118
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %18, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [8 x i64], [8 x i64]* %16, i64 0, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  %126 = load i32, i32* %18, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %12, align 4
  %131 = mul i32 %129, %130
  %132 = load i32, i32* %18, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [7 x i32], [7 x i32]* %13, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %12, align 4
  %137 = mul i32 %135, %136
  %138 = add i32 %137, 7
  %139 = udiv i32 %138, 8
  %140 = mul i32 %139, 8
  %141 = load i32, i32* %18, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [7 x i32], [7 x i32]* %14, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @removePaddingBits(i8* %119, i8* %125, i32 %131, i32 %140, i32 %144)
  br label %146

146:                                              ; preds = %113, %87
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %18, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %18, align 4
  br label %84

150:                                              ; preds = %84
  %151 = load i8*, i8** %7, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @Adam7_deinterlace(i8* %151, i8* %152, i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %150, %73
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %157, %24
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32 @lodepng_get_bpp(i32*) #1

declare dso_local i32 @CERROR_TRY_RETURN(i32) #1

declare dso_local i32 @unfilter(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @removePaddingBits(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @Adam7_getpassvalues(i32*, i32*, i64*, i64*, i64*, i32, i32, i32) #1

declare dso_local i32 @Adam7_deinterlace(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
