; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_elsdec.c_ff_els_decode_unsigned.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_elsdec.c_ff_els_decode_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { i32, i32 }

@ELS_EXPGOLOMB_LEN = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i64 0, align 8
@RUNG_SPACE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_els_decode_unsigned(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %209

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ELS_EXPGOLOMB_LEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @ff_els_decode_bit(%struct.TYPE_13__* %24, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %18

38:                                               ; preds = %33, %18
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @ELS_EXPGOLOMB_LEN, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %38
  %48 = load i64, i64* @AVERROR_INVALIDDATA, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i32 0, i32* %3, align 4
  br label %209

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %209

55:                                               ; preds = %51
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %86, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @RUNG_SPACE, align 4
  %62 = call %struct.TYPE_11__* @av_realloc(i32* null, i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = icmp ne %struct.TYPE_11__* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = call i64 @AVERROR(i32 %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  store i32 0, i32* %3, align 4
  br label %209

74:                                               ; preds = %60
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i32, i32* @RUNG_SPACE, align 4
  %79 = call i32 @memset(%struct.TYPE_11__* %77, i32 0, i32 %78)
  %80 = load i32, i32* @RUNG_SPACE, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @ELS_EXPGOLOMB_LEN, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %74, %55
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %200, %86
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %203

91:                                               ; preds = %87
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i64 %99
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %10, align 8
  br label %184

101:                                              ; preds = %91
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %173, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 8
  %117 = icmp ule i64 %110, %116
  br i1 %117, label %118, label %163

118:                                              ; preds = %106
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = ptrtoint %struct.TYPE_11__* %119 to i64
  %124 = ptrtoint %struct.TYPE_11__* %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 8
  store i64 %126, i64* %11, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @RUNG_SPACE, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i64 @av_reallocp(%struct.TYPE_11__** %128, i32 %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %209

142:                                              ; preds = %118
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i64 %149
  %151 = load i32, i32* @RUNG_SPACE, align 4
  %152 = call i32 @memset(%struct.TYPE_11__* %150, i32 0, i32 %151)
  %153 = load i32, i32* @RUNG_SPACE, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i64 %161
  store %struct.TYPE_11__* %162, %struct.TYPE_11__** %10, align 8
  br label %163

163:                                              ; preds = %142, %106
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 2
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %163, %101
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i64 %182
  store %struct.TYPE_11__* %183, %struct.TYPE_11__** %10, align 8
  br label %184

184:                                              ; preds = %173, %94
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = call i32 @ff_els_decode_bit(%struct.TYPE_13__* %185, i32* %187)
  store i32 %188, i32* %9, align 4
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %184
  %194 = load i32, i32* %9, align 4
  store i32 %194, i32* %3, align 4
  br label %209

195:                                              ; preds = %184
  %196 = load i32, i32* %8, align 4
  %197 = shl i32 %196, 1
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %197, %198
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %195
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %6, align 4
  br label %87

203:                                              ; preds = %87
  %204 = load i32, i32* %7, align 4
  %205 = shl i32 1, %204
  %206 = sub nsw i32 %205, 1
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %206, %207
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %203, %193, %141, %69, %54, %47, %16
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @ff_els_decode_bit(%struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_11__* @av_realloc(i32*, i32) #1

declare dso_local i64 @AVERROR(i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @av_reallocp(%struct.TYPE_11__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
