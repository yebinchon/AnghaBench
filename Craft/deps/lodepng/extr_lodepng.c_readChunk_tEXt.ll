; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_readChunk_tEXt.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_readChunk_tEXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @readChunk_tEXt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readChunk_tEXt(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  br label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %131

17:                                               ; preds = %13
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i32, i32* %11, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %23, %18
  %32 = phi i1 [ false, %18 ], [ %30, %23 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i32, i32* %11, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %18

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  %38 = icmp ult i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = icmp ugt i32 %40, 79
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @CERROR_BREAK(i32 %43, i32 89)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %11, align 4
  %47 = add i32 %46, 1
  %48 = call i64 @lodepng_malloc(i32 %47)
  %49 = inttoptr i64 %48 to i8*
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @CERROR_BREAK(i32 %53, i32 83)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 0, i8* %59, align 1
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %74, %55
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 %69, i8* %73, align 1
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %60

77:                                               ; preds = %60
  %78 = load i32, i32* %11, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %12, align 4
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = icmp ult i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %90

85:                                               ; preds = %77
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = sub i64 %86, %88
  br label %90

90:                                               ; preds = %85, %84
  %91 = phi i64 [ 0, %84 ], [ %89, %85 ]
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add i32 %93, 1
  %95 = call i64 @lodepng_malloc(i32 %94)
  %96 = inttoptr i64 %95 to i8*
  store i8* %96, i8** %9, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @CERROR_BREAK(i32 %100, i32 83)
  br label %102

102:                                              ; preds = %99, %90
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 0, i8* %106, align 1
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %123, %102
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %113, %114
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %112, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %10, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 %118, i8* %122, align 1
  br label %123

123:                                              ; preds = %111
  %124 = load i32, i32* %10, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %107

126:                                              ; preds = %107
  %127 = load i32*, i32** %4, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = call i32 @lodepng_add_text(i32* %127, i8* %128, i8* %129)
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %126, %13
  %132 = load i8*, i8** %8, align 8
  %133 = call i32 @lodepng_free(i8* %132)
  %134 = load i8*, i8** %9, align 8
  %135 = call i32 @lodepng_free(i8* %134)
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @CERROR_BREAK(i32, i32) #1

declare dso_local i64 @lodepng_malloc(i32) #1

declare dso_local i32 @lodepng_add_text(i32*, i8*, i8*) #1

declare dso_local i32 @lodepng_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
