; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_readChunk_zTXt.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_readChunk_zTXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64)* @readChunk_zTXt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readChunk_zTXt(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %13, align 8
  %15 = call i32 @ucvector_init(%struct.TYPE_5__* %14)
  br label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %138

20:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %11, align 4
  %23 = zext i32 %22 to i64
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %26, %21
  %35 = phi i1 [ false, %21 ], [ %33, %26 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %11, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %21

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = add i32 %41, 2
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* %8, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @CERROR_BREAK(i32 %47, i32 75)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* %11, align 4
  %51 = icmp ult i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = icmp ugt i32 %53, 79
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @CERROR_BREAK(i32 %56, i32 89)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %11, align 4
  %60 = add i32 %59, 1
  %61 = call i64 @lodepng_malloc(i32 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @CERROR_BREAK(i32 %66, i32 83)
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 0, i8* %72, align 1
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %87, %68
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %73
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = load i8*, i8** %13, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 %82, i8* %86, align 1
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %10, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %73

90:                                               ; preds = %73
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %11, align 4
  %93 = add i32 %92, 1
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @CERROR_BREAK(i32 %100, i32 72)
  br label %102

102:                                              ; preds = %99, %90
  %103 = load i32, i32* %11, align 4
  %104 = add i32 %103, 2
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %8, align 8
  %108 = icmp ugt i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @CERROR_BREAK(i32 %110, i32 75)
  br label %112

112:                                              ; preds = %109, %102
  %113 = load i64, i64* %8, align 8
  %114 = load i32, i32* %12, align 4
  %115 = zext i32 %114 to i64
  %116 = sub i64 %113, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %11, align 4
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %120 = load i8*, i8** %7, align 8
  %121 = load i32, i32* %12, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i32, i32* %11, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @zlib_decompress(i64* %118, i32* %119, i8* %123, i32 %124, i32* %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %112
  br label %138

130:                                              ; preds = %112
  %131 = call i32 @ucvector_push_back(%struct.TYPE_5__* %14, i32 0)
  %132 = load i32*, i32** %5, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i8*
  %137 = call i32 @lodepng_add_text(i32* %132, i8* %133, i8* %136)
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %130, %129, %16
  %139 = load i8*, i8** %13, align 8
  %140 = call i32 @lodepng_free(i8* %139)
  %141 = call i32 @ucvector_cleanup(%struct.TYPE_5__* %14)
  %142 = load i32, i32* %9, align 4
  ret i32 %142
}

declare dso_local i32 @ucvector_init(%struct.TYPE_5__*) #1

declare dso_local i32 @CERROR_BREAK(i32, i32) #1

declare dso_local i64 @lodepng_malloc(i32) #1

declare dso_local i32 @zlib_decompress(i64*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @ucvector_push_back(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lodepng_add_text(i32*, i8*, i8*) #1

declare dso_local i32 @lodepng_free(i8*) #1

declare dso_local i32 @ucvector_cleanup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
