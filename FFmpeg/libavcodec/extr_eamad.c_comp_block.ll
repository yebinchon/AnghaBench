; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eamad.c_comp_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eamad.c_comp_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32*, i64* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32*, i64* }

@AV_CODEC_FLAG_GRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32)* @comp_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @comp_block(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %119

22:                                               ; preds = %8
  %23 = load i32, i32* %12, align 4
  %24 = mul nsw i32 %23, 16
  %25 = load i32, i32* %13, align 4
  %26 = and i32 %25, 2
  %27 = shl i32 %26, 2
  %28 = add nsw i32 %24, %27
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %28, %29
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %30, %37
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %39, 16
  %41 = add nsw i32 %38, %40
  %42 = load i32, i32* %13, align 4
  %43 = and i32 %42, 1
  %44 = shl i32 %43, 3
  %45 = add nsw i32 %41, %44
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 7
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %54, %61
  %63 = sub nsw i32 %62, 7
  %64 = icmp uge i32 %48, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %22
  br label %228

66:                                               ; preds = %22
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = mul nsw i32 %72, 16
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %74, 2
  %76 = shl i32 %75, 2
  %77 = add nsw i32 %73, %76
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %77, %82
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %71, %84
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 %86, 16
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %85, %88
  %90 = load i32, i32* %13, align 4
  %91 = and i32 %90, 1
  %92 = shl i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %89, %93
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %17, align 4
  %108 = zext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @comp(i64 %94, i32 %99, i64 %109, i32 %116, i32 %117)
  br label %228

119:                                              ; preds = %8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @AV_CODEC_FLAG_GRAY, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %227, label %128

128:                                              ; preds = %119
  %129 = load i32, i32* %13, align 4
  %130 = sub nsw i32 %129, 3
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %12, align 4
  %132 = mul nsw i32 %131, 8
  %133 = load i32, i32* %15, align 4
  %134 = sdiv i32 %133, 2
  %135 = add nsw i32 %132, %134
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %135, %144
  %146 = load i32, i32* %11, align 4
  %147 = mul nsw i32 %146, 8
  %148 = add nsw i32 %145, %147
  %149 = load i32, i32* %14, align 4
  %150 = sdiv i32 %149, 2
  %151 = add nsw i32 %148, %150
  store i32 %151, i32* %19, align 4
  %152 = load i32, i32* %19, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sdiv i32 %157, 2
  %159 = sub nsw i32 %158, 7
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %18, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %159, %168
  %170 = sub nsw i32 %169, 7
  %171 = icmp uge i32 %152, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %128
  br label %228

173:                                              ; preds = %128
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %18, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %12, align 4
  %182 = mul nsw i32 %181, 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %182, %189
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %180, %191
  %193 = load i32, i32* %11, align 4
  %194 = mul nsw i32 %193, 8
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %192, %195
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %18, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = load i64*, i64** %207, align 8
  %209 = load i32, i32* %18, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %208, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* %19, align 4
  %214 = zext i32 %213 to i64
  %215 = add nsw i64 %212, %214
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %18, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %16, align 4
  %226 = call i32 @comp(i64 %196, i32 %203, i64 %215, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %173, %119
  br label %228

228:                                              ; preds = %65, %172, %227, %66
  ret void
}

declare dso_local i32 @comp(i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
