; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_encode_slice_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_encode_slice_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_10__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@CONTEXT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_14__*)* @encode_slice_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_slice_header(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 16
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @CONTEXT_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = mul nuw i64 4, %12
  %16 = trunc i64 %15 to i32
  %17 = call i32 @memset(i32* %14, i32 128, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sdiv i32 %26, %29
  %31 = call i32 @put_symbol(i32* %18, i32* %14, i32 %30, i32 0)
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %36, %39
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %40, %43
  %45 = call i32 @put_symbol(i32* %32, i32* %14, i32 %44, i32 0)
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %54, %57
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @put_symbol(i32* %46, i32* %14, i32 %59, i32 0)
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %69, %72
  %74 = sub nsw i32 %73, 1
  %75 = call i32 @put_symbol(i32* %61, i32* %14, i32 %74, i32 0)
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %107, %2
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %76
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 15
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @put_symbol(i32* %83, i32* %14, i32 %91, i32 0)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 15
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %100, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @av_assert0(i32 %105)
  br label %107

107:                                              ; preds = %82
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %76

110:                                              ; preds = %76
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 14
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %110
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @put_symbol(i32* %119, i32* %14, i32 3, i32 0)
  br label %134

121:                                              ; preds = %110
  %122 = load i32*, i32** %5, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 14
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = add nsw i32 1, %131
  %133 = call i32 @put_symbol(i32* %122, i32* %14, i32 %132, i32 0)
  br label %134

134:                                              ; preds = %121, %118
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 14
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @put_symbol(i32* %135, i32* %14, i32 %142, i32 0)
  %144 = load i32*, i32** %5, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 14
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @put_symbol(i32* %144, i32* %14, i32 %151, i32 0)
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 10
  %155 = load i32, i32* %154, align 8
  %156 = icmp sgt i32 %155, 3
  br i1 %156, label %157, label %195

157:                                              ; preds = %134
  %158 = load i32*, i32** %5, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 11
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 1
  %163 = zext i1 %162 to i32
  %164 = call i32 @put_rac(i32* %158, i32* %14, i32 %163)
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 11
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %173

169:                                              ; preds = %157
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %172 = call i32 @ff_ffv1_clear_slice_state(%struct.TYPE_14__* %170, %struct.TYPE_14__* %171)
  br label %173

173:                                              ; preds = %169, %157
  %174 = load i32*, i32** %5, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 11
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @put_symbol(i32* %174, i32* %14, i32 %177, i32 0)
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 11
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 1
  br i1 %182, label %183, label %194

183:                                              ; preds = %173
  %184 = load i32*, i32** %5, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 12
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @put_symbol(i32* %184, i32* %14, i32 %187, i32 0)
  %189 = load i32*, i32** %5, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 13
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @put_symbol(i32* %189, i32* %14, i32 %192, i32 0)
  br label %194

194:                                              ; preds = %183, %173
  br label %195

195:                                              ; preds = %194, %134
  %196 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %196)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @put_symbol(i32*, i32*, i32, i32) #2

declare dso_local i32 @av_assert0(i32) #2

declare dso_local i32 @put_rac(i32*, i32*, i32) #2

declare dso_local i32 @ff_ffv1_clear_slice_state(%struct.TYPE_14__*, %struct.TYPE_14__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
