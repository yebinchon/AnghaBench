; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_sbr_hf_gen.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_sbr_hf_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32, i32*, i32*, i32, i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32**, i32**, i32*, i32*, i32, i32, i32)* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ERROR : no subband found for frequency %d\0A\00", align 1
@ENVELOPE_ADJUSTMENT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, [40 x [2 x i32]]*, [40 x [2 x i32]]*, [2 x i32]*, [2 x i32]*, i32*, i32*, i32)* @sbr_hf_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbr_hf_gen(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, [40 x [2 x i32]]* %2, [40 x [2 x i32]]* %3, [2 x i32]* %4, [2 x i32]* %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca [40 x [2 x i32]]*, align 8
  %14 = alloca [40 x [2 x i32]]*, align 8
  %15 = alloca [2 x i32]*, align 8
  %16 = alloca [2 x i32]*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %12, align 8
  store [40 x [2 x i32]]* %2, [40 x [2 x i32]]** %13, align 8
  store [40 x [2 x i32]]* %3, [40 x [2 x i32]]** %14, align 8
  store [2 x i32]* %4, [2 x i32]** %15, align 8
  store [2 x i32]* %5, [2 x i32]** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %23, align 4
  store i32 0, i32* %20, align 4
  br label %30

30:                                               ; preds = %145, %9
  %31 = load i32, i32* %20, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %148

36:                                               ; preds = %30
  store i32 0, i32* %21, align 4
  br label %37

37:                                               ; preds = %139, %36
  %38 = load i32, i32* %21, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %20, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %38, %45
  br i1 %46, label %47, label %144

47:                                               ; preds = %37
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %20, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %21, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %24, align 4
  br label %57

57:                                               ; preds = %75, %47
  %58 = load i32, i32* %22, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = icmp sle i32 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load i32, i32* %23, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %22, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %64, %71
  br label %73

73:                                               ; preds = %63, %57
  %74 = phi i1 [ false, %57 ], [ %72, %63 ]
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = load i32, i32* %22, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %22, align 4
  br label %57

78:                                               ; preds = %73
  %79 = load i32, i32* %22, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %22, align 4
  %81 = load i32, i32* %22, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = load i32, i32* %23, align 4
  %89 = call i32 @av_log(i32 %86, i32 %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %88)
  store i32 -1, i32* %10, align 4
  br label %186

90:                                               ; preds = %78
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32 (i32**, i32**, i32*, i32*, i32, i32, i32)*, i32 (i32**, i32**, i32*, i32*, i32, i32, i32)** %93, align 8
  %95 = load [40 x [2 x i32]]*, [40 x [2 x i32]]** %13, align 8
  %96 = load i32, i32* %23, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %95, i64 %97
  %99 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %98, i64 0, i64 0
  %100 = load i32, i32* @ENVELOPE_ADJUSTMENT_OFFSET, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %99, i64 %101
  %103 = bitcast [2 x i32]* %102 to i32**
  %104 = load [40 x [2 x i32]]*, [40 x [2 x i32]]** %14, align 8
  %105 = load i32, i32* %24, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %104, i64 %106
  %108 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %107, i64 0, i64 0
  %109 = load i32, i32* @ENVELOPE_ADJUSTMENT_OFFSET, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %108, i64 %110
  %112 = bitcast [2 x i32]* %111 to i32**
  %113 = load [2 x i32]*, [2 x i32]** %15, align 8
  %114 = load i32, i32* %24, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %113, i64 %115
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %116, i64 0, i64 0
  %118 = load [2 x i32]*, [2 x i32]** %16, align 8
  %119 = load i32, i32* %24, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %118, i64 %120
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %121, i64 0, i64 0
  %123 = load i32*, i32** %17, align 8
  %124 = load i32, i32* %22, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %18, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 2, %130
  %132 = load i32*, i32** %18, align 8
  %133 = load i32, i32* %19, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 2, %136
  %138 = call i32 %94(i32** %103, i32** %112, i32* %117, i32* %122, i32 %127, i32 %131, i32 %137)
  br label %139

139:                                              ; preds = %90
  %140 = load i32, i32* %21, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %21, align 4
  %142 = load i32, i32* %23, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %23, align 4
  br label %37

144:                                              ; preds = %37
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %20, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %20, align 4
  br label %30

148:                                              ; preds = %30
  %149 = load i32, i32* %23, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 6
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %154, %159
  %161 = icmp slt i32 %149, %160
  br i1 %161, label %162, label %185

162:                                              ; preds = %148
  %163 = load [40 x [2 x i32]]*, [40 x [2 x i32]]** %13, align 8
  %164 = load i32, i32* %23, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [40 x [2 x i32]], [40 x [2 x i32]]* %163, i64 %165
  %167 = bitcast [40 x [2 x i32]]* %166 to i32***
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 6
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %172, %177
  %179 = load i32, i32* %23, align 4
  %180 = sub nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = mul i64 %181, 320
  %183 = trunc i64 %182 to i32
  %184 = call i32 @memset(i32*** %167, i32 0, i32 %183)
  br label %185

185:                                              ; preds = %162, %148
  store i32 0, i32* %10, align 4
  br label %186

186:                                              ; preds = %185, %83
  %187 = load i32, i32* %10, align 4
  ret i32 %187
}

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @memset(i32***, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
