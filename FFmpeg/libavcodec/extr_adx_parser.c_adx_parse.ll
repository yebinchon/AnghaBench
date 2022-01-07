; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adx_parser.c_adx_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adx_parser.c_adx_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@END_NOT_FOUND = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@BLOCK_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32**, i32*, i32*, i32)* @adx_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adx_parse(%struct.TYPE_7__* %0, i32* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %14, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %15, align 8
  %26 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %26, i32* %16, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %18, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %94, label %34

34:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %87, %34
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %35
  %40 = load i32, i32* %18, align 4
  %41 = shl i32 %40, 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %41, %46
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = and i64 %49, -281470681743616
  %51 = icmp eq i64 %50, -9223372036803263488
  br i1 %51, label %52, label %86

52:                                               ; preds = %39
  %53 = load i32, i32* %18, align 4
  %54 = and i32 %53, 255
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %18, align 4
  %56 = ashr i32 %55, 32
  %57 = and i32 %56, 65535
  %58 = add nsw i32 %57, 4
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %19, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %52
  %62 = load i32, i32* %20, align 4
  %63 = icmp sge i32 %62, 8
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load i32, i32* %20, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @BLOCK_SIZE, align 4
  %69 = load i32, i32* %19, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %17, align 4
  %74 = sub nsw i32 %73, 7
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  br label %90

85:                                               ; preds = %61, %52
  br label %86

86:                                               ; preds = %85, %39
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %35

90:                                               ; preds = %64, %35
  %91 = load i32, i32* %18, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %6
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %129

99:                                               ; preds = %94
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %99
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %16, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  store i32 0, i32* %121, align 4
  br label %128

122:                                              ; preds = %110
  %123 = load i32, i32* %13, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %116
  br label %129

129:                                              ; preds = %128, %94
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %131 = load i32, i32* %16, align 4
  %132 = call i64 @ff_combine_frame(%struct.TYPE_6__* %130, i32 %131, i32** %12, i32* %13)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134, %129
  %138 = load i32**, i32*** %10, align 8
  store i32* null, i32** %138, align 8
  %139 = load i32*, i32** %11, align 8
  store i32 0, i32* %139, align 4
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %7, align 4
  br label %150

141:                                              ; preds = %134
  %142 = load i32, i32* @BLOCK_SAMPLES, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = load i32**, i32*** %10, align 8
  store i32* %145, i32** %146, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32*, i32** %11, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %16, align 4
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %141, %137
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i64 @ff_combine_frame(%struct.TYPE_6__*, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
