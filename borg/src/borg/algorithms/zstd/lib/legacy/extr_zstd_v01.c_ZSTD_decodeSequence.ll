; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v01.c_ZSTD_decodeSequence.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/legacy/extr_zstd_v01.c_ZSTD_decodeSequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i32*, i32, i32, i32, i32, i32* }

@MaxLL = common dso_local global i64 0, align 8
@MaxML = common dso_local global i64 0, align 8
@MINMATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @ZSTD_decodeSequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZSTD_decodeSequence(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = call i8* @FSE_decodeSymbol(i32* %22, i32* %24)
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i64 [ %32, %29 ], [ %36, %33 ]
  store i64 %38, i64* %6, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @MaxLL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %37
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ult i32* %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %9, align 8
  %54 = load i32, i32* %52, align 4
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i32 [ %54, %51 ], [ 0, %55 ]
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 255
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %5, align 8
  br label %78

65:                                               ; preds = %56
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 -3
  %69 = icmp ule i32* %66, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @ZSTD_readLE32(i32* %71)
  %73 = and i32 %72, 16777215
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %5, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  store i32* %76, i32** %9, align 8
  br label %77

77:                                               ; preds = %70, %65
  br label %78

78:                                               ; preds = %77, %60
  br label %79

79:                                               ; preds = %78, %37
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = call i8* @FSE_decodeSymbol(i32* %81, i32* %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %12, align 4
  %86 = call i64 (...) @ZSTD_32bits()
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = call i32 @FSE_reloadDStream(i32* %90)
  br label %92

92:                                               ; preds = %88, %79
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %97, %92
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = and i64 %100, 63
  %102 = shl i64 1, %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32, i32* %13, align 4
  %106 = call i64 @FSE_readBits(i32* %104, i32 %105)
  %107 = add i64 %102, %106
  store i64 %107, i64* %7, align 8
  %108 = call i64 (...) @ZSTD_32bits()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %98
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = call i32 @FSE_reloadDStream(i32* %112)
  br label %114

114:                                              ; preds = %110, %98
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i64, i64* %6, align 8
  store i64 %118, i64* %7, align 8
  br label %119

119:                                              ; preds = %117, %114
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = call i8* @FSE_decodeSymbol(i32* %121, i32* %123)
  %125 = ptrtoint i8* %124 to i64
  store i64 %125, i64* %8, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* @MaxML, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %161

129:                                              ; preds = %119
  %130 = load i32*, i32** %9, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = icmp ult i32* %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32*, i32** %9, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %9, align 8
  %136 = load i32, i32* %134, align 4
  br label %138

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137, %133
  %139 = phi i32 [ %136, %133 ], [ 0, %137 ]
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %140, 255
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %8, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %8, align 8
  br label %160

147:                                              ; preds = %138
  %148 = load i32*, i32** %9, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 -3
  %151 = icmp ule i32* %148, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %147
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @ZSTD_readLE32(i32* %153)
  %155 = and i32 %154, 16777215
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %8, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  store i32* %158, i32** %9, align 8
  br label %159

159:                                              ; preds = %152, %147
  br label %160

160:                                              ; preds = %159, %142
  br label %161

161:                                              ; preds = %160, %119
  %162 = load i64, i64* @MINMATCH, align 8
  %163 = load i64, i64* %8, align 8
  %164 = add i64 %163, %162
  store i64 %164, i64* %8, align 8
  %165 = load i64, i64* %5, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  %168 = load i64, i64* %7, align 8
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load i64, i64* %8, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  store i64 %171, i64* %173, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  store i32* %174, i32** %176, align 8
  ret void
}

declare dso_local i8* @FSE_decodeSymbol(i32*, i32*) #1

declare dso_local i32 @ZSTD_readLE32(i32*) #1

declare dso_local i64 @ZSTD_32bits(...) #1

declare dso_local i32 @FSE_reloadDStream(i32*) #1

declare dso_local i64 @FSE_readBits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
