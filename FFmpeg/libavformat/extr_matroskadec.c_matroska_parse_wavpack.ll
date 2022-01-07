; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_parse_wavpack.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_parse_wavpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32**, i32*)* @matroska_parse_wavpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroska_parse_wavpack(%struct.TYPE_7__* %0, i32* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 12
  br i1 %25, label %35, label %26

26:                                               ; preds = %4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %26, %4
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %5, align 4
  br label %205

37:                                               ; preds = %26
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @AV_RL16(i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @AV_RL32(i32* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32* %49, i32** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 %50, 4
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %106, %37
  %53 = load i32, i32* %12, align 4
  %54 = icmp sge i32 %53, 8
  br i1 %54, label %55, label %191

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @AV_RL32(i32* %56)
  store i32 %57, i32* %20, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = call i32 @AV_RL32(i32* %59)
  store i32 %60, i32* %21, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  store i32* %62, i32** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sub nsw i32 %63, 8
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %20, align 4
  %66 = and i32 %65, 6144
  %67 = icmp ne i32 %66, 6144
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %55
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %75, i32* %15, align 4
  br label %202

76:                                               ; preds = %71
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @AV_RL32(i32* %77)
  store i32 %78, i32* %18, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32* %80, i32** %7, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %81, 4
  store i32 %82, i32* %12, align 4
  br label %85

83:                                               ; preds = %55
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %18, align 4
  br label %85

85:                                               ; preds = %83, %76
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %90, i32* %15, align 4
  br label %202

91:                                               ; preds = %85
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %93, %94
  %96 = add nsw i32 %95, 32
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32* @av_realloc(i32* %92, i64 %99)
  store i32* %100, i32** %19, align 8
  %101 = load i32*, i32** %19, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %91
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = call i32 @AVERROR(i32 %104)
  store i32 %105, i32* %15, align 4
  br label %202

106:                                              ; preds = %91
  %107 = load i32*, i32** %19, align 8
  store i32* %107, i32** %10, align 8
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %108, 32
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %11, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = call i32 @MKTAG(i8 signext 119, i8 signext 118, i8 signext 112, i8 signext 107)
  %117 = call i32 @AV_WL32(i32* %115, i32 %116)
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %18, align 4
  %124 = add nsw i32 %123, 24
  %125 = call i32 @AV_WL32(i32* %122, i32 %124)
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = getelementptr inbounds i32, i32* %129, i64 8
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @AV_WL16(i32* %130, i32 %131)
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = getelementptr inbounds i32, i32* %136, i64 10
  %138 = call i32 @AV_WL16(i32* %137, i32 0)
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %16, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = getelementptr inbounds i32, i32* %142, i64 12
  %144 = call i32 @AV_WL32(i32* %143, i32 0)
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = getelementptr inbounds i32, i32* %148, i64 16
  %150 = call i32 @AV_WL32(i32* %149, i32 0)
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = getelementptr inbounds i32, i32* %154, i64 20
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @AV_WL32(i32* %155, i32 %156)
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = getelementptr inbounds i32, i32* %161, i64 24
  %163 = load i32, i32* %20, align 4
  %164 = call i32 @AV_WL32(i32* %162, i32 %163)
  %165 = load i32*, i32** %10, align 8
  %166 = load i32, i32* %16, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = getelementptr inbounds i32, i32* %168, i64 28
  %170 = load i32, i32* %21, align 4
  %171 = call i32 @AV_WL32(i32* %169, i32 %170)
  %172 = load i32*, i32** %10, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = getelementptr inbounds i32, i32* %175, i64 32
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* %18, align 4
  %179 = call i32 @memcpy(i32* %176, i32* %177, i32 %178)
  %180 = load i32, i32* %18, align 4
  %181 = load i32*, i32** %7, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32* %183, i32** %7, align 8
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* %12, align 4
  %186 = sub nsw i32 %185, %184
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, 32
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %16, align 4
  br label %52

191:                                              ; preds = %52
  %192 = load i32*, i32** %10, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %197 = call i32 @memset(i32* %195, i32 0, i64 %196)
  %198 = load i32*, i32** %10, align 8
  %199 = load i32**, i32*** %8, align 8
  store i32* %198, i32** %199, align 8
  %200 = load i32, i32* %11, align 4
  %201 = load i32*, i32** %9, align 8
  store i32 %200, i32* %201, align 4
  store i32 0, i32* %5, align 4
  br label %205

202:                                              ; preds = %103, %89, %74
  %203 = call i32 @av_freep(i32** %10)
  %204 = load i32, i32* %15, align 4
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %202, %191, %35
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @AV_RL16(i32) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32* @av_realloc(i32*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @AV_WL16(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
