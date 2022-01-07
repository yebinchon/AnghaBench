; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc_psy.c_ff_opus_psy_postencode_update.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc_psy.c_ff_opus_psy_postencode_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, float, i32, i64, %struct.TYPE_9__, i64, i64, %struct.TYPE_8__*, %struct.TYPE_12__** }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { float, i64 }

@FF_BUFQUEUE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_opus_psy_postencode_update(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @OPUS_BLOCK_SIZE(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, 120
  %25 = mul nsw i32 %22, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @FF_BUFQUEUE_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %10, align 8
  %29 = alloca i8*, i64 %27, align 16
  store i64 %27, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %43, %3
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 10
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %37, i64 %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = call i32 @memset(%struct.TYPE_12__* %41, i32 0, i32 4)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %30

46:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %65, %46
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 10
  %56 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %56, i64 %58
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = bitcast %struct.TYPE_12__* %60 to i8*
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %29, i64 %63
  store i8* %61, i8** %64, align 8
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %47

68:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %101, %68
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %29, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = bitcast i8* %82 to %struct.TYPE_12__*
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 10
  %86 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %75
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %92, %93
  br label %97

95:                                               ; preds = %75
  %96 = load i32, i32* %13, align 4
  br label %97

97:                                               ; preds = %95, %89
  %98 = phi i32 [ %94, %89 ], [ %96, %95 ]
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %86, i64 %99
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %100, align 8
  br label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %69

104:                                              ; preds = %69
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %124, %104
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %106
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 10
  %116 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %116, i64 %118
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, %113
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %112
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %106

127:                                              ; preds = %106
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 9
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 9
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %8, align 4
  %139 = sdiv i32 %137, %138
  %140 = sdiv i32 %132, %139
  %141 = sitofp i32 %140 to float
  store float %141, float* %12, align 4
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %174, %127
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %143, %147
  br i1 %148, label %149, label %177

149:                                              ; preds = %142
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %155
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %157, align 8
  %162 = load float, float* %12, align 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load float, float* %167, align 8
  %169 = fdiv float %162, %168
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 3
  %172 = load float, float* %171, align 4
  %173 = fmul float %172, %169
  store float %173, float* %171, align 4
  br label %174

174:                                              ; preds = %149
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %142

177:                                              ; preds = %142
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, 1
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = sdiv i32 %185, %182
  store i32 %186, i32* %184, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 8
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 7
  store i64 0, i64* %190, align 8
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %194, %191
  store i32 %195, i32* %193, align 4
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 6
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, %199
  store i32 %203, i32* %201, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 5
  store i64 0, i64* %205, align 8
  %206 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %206)
  ret void
}

declare dso_local i32 @OPUS_BLOCK_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
