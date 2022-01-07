; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc.c_put_pce.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc.c_put_pce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32**, i32** }

@AV_CODEC_FLAG_BITEXACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Lavc\00", align 1
@LIBAVCODEC_IDENT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*)* @put_pce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_pce(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AV_CODEC_FLAG_BITEXACT, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %26

24:                                               ; preds = %2
  %25 = load i8*, i8** @LIBAVCODEC_IDENT, align 8
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %23 ], [ %25, %24 ]
  store i8* %27, i8** %10, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @put_bits(i32* %28, i32 4, i32 0)
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @put_bits(i32* %30, i32 2, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @put_bits(i32* %35, i32 4, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @put_bits(i32* %40, i32 4, i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @put_bits(i32* %47, i32 4, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @put_bits(i32* %54, i32 4, i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @put_bits(i32* %61, i32 2, i32 %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @put_bits(i32* %68, i32 3, i32 0)
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @put_bits(i32* %70, i32 4, i32 0)
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @put_bits(i32* %72, i32 1, i32 0)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @put_bits(i32* %74, i32 1, i32 0)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @put_bits(i32* %76, i32 1, i32 0)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %127, %26
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 4
  br i1 %80, label %81, label %130

81:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %123, %81
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %83, %90
  br i1 %91, label %92, label %126

92:                                               ; preds = %82
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = load i32*, i32** %3, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @put_bits(i32* %96, i32 1, i32 %107)
  br label %109

109:                                              ; preds = %95, %92
  %110 = load i32*, i32** %3, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @put_bits(i32* %110, i32 4, i32 %121)
  br label %123

123:                                              ; preds = %109
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %82

126:                                              ; preds = %82
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %78

130:                                              ; preds = %78
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @avpriv_align_put_bits(i32* %131)
  %133 = load i32*, i32** %3, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 @strlen(i8* %134)
  %136 = call i32 @put_bits(i32* %133, i32 8, i32 %135)
  %137 = load i32*, i32** %3, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @avpriv_put_string(i32* %137, i8* %138, i32 0)
  ret void
}

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @avpriv_align_put_bits(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @avpriv_put_string(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
