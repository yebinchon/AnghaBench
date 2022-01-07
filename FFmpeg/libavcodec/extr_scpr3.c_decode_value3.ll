; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_decode_value3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_decode_value3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*, i32*, i32*, i32*, i32*, i32*)* @decode_value3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_value3(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32* %31, i32** %18, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %19, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 4095
  %39 = lshr i32 %38, 7
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %34, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %8
  br label %47

47:                                               ; preds = %65, %46
  %48 = load i32*, i32** %14, align 8
  %49 = load i32, i32* %20, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 4095
  %58 = icmp sle i32 %53, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %47
  %60 = load i32, i32* %20, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %20, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %66

65:                                               ; preds = %59
  br label %47

66:                                               ; preds = %64, %47
  br label %67

67:                                               ; preds = %66, %8
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %72, i32* %9, align 4
  br label %181

73:                                               ; preds = %67
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 16
  store i32 %79, i32* %77, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %20, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %22, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %23, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 16
  store i32 %92, i32* %90, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 16
  %96 = icmp sgt i32 %95, 4096
  br i1 %96, label %97, label %170

97:                                               ; preds = %73
  %98 = load i32*, i32** %12, align 8
  store i32 0, i32* %98, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %99

99:                                               ; preds = %166, %97
  %100 = load i32, i32* %28, align 4
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %169

104:                                              ; preds = %99
  %105 = load i32*, i32** %15, align 8
  %106 = load i32, i32* %28, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %24, align 4
  %110 = load i32, i32* %27, align 4
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* %28, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* %24, align 4
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* %28, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %27, align 4
  %121 = add nsw i32 %120, 127
  %122 = ashr i32 %121, 7
  store i32 %122, i32* %25, align 4
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %27, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %27, align 4
  %126 = load i32, i32* %27, align 4
  %127 = sub nsw i32 %126, 1
  %128 = ashr i32 %127, 7
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %26, align 4
  %130 = load i32, i32* %26, align 4
  %131 = load i32, i32* %25, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %104
  store i32 0, i32* %29, align 4
  br label %134

134:                                              ; preds = %148, %133
  %135 = load i32, i32* %29, align 4
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %25, align 4
  %138 = sub nsw i32 %136, %137
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load i32, i32* %28, align 4
  %142 = load i32*, i32** %16, align 8
  %143 = load i32, i32* %29, align 4
  %144 = load i32, i32* %25, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  store i32 %141, i32* %147, align 4
  br label %148

148:                                              ; preds = %140
  %149 = load i32, i32* %29, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %29, align 4
  br label %134

151:                                              ; preds = %134
  br label %152

152:                                              ; preds = %151, %104
  %153 = load i32, i32* %24, align 4
  %154 = load i32, i32* %24, align 4
  %155 = ashr i32 %154, 1
  %156 = sub nsw i32 %153, %155
  store i32 %156, i32* %21, align 4
  %157 = load i32, i32* %21, align 4
  %158 = load i32*, i32** %15, align 8
  %159 = load i32, i32* %28, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %157, i32* %161, align 4
  %162 = load i32, i32* %21, align 4
  %163 = load i32*, i32** %12, align 8
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %162
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %152
  %167 = load i32, i32* %28, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %28, align 4
  br label %99

169:                                              ; preds = %99
  br label %170

170:                                              ; preds = %169, %73
  %171 = load i32*, i32** %18, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %173 = load i32, i32* %22, align 4
  %174 = load i32, i32* %23, align 4
  %175 = call i32 @decode3(i32* %171, %struct.TYPE_7__* %172, i32 %173, i32 %174)
  %176 = load i32*, i32** %18, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %178 = call i32 @sync_code3(i32* %176, %struct.TYPE_7__* %177)
  %179 = load i32, i32* %20, align 4
  %180 = load i32*, i32** %17, align 8
  store i32 %179, i32* %180, align 4
  store i32 0, i32* %9, align 4
  br label %181

181:                                              ; preds = %170, %71
  %182 = load i32, i32* %9, align 4
  ret i32 %182
}

declare dso_local i32 @decode3(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @sync_code3(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
