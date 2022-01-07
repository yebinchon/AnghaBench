; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_hpel_motion_lowres.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_hpel_motion_lowres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 (i32*, i32*, i32, i32, i32, i32)**, i32, i32)* @hpel_motion_lowres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpel_motion_lowres(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 (i32*, i32*, i32, i32, i32, i32)** %14, i32 %15, i32 %16) #0 {
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32 (i32*, i32*, i32, i32, i32, i32)**, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %18, align 8
  store i32* %1, i32** %19, align 8
  store i32* %2, i32** %20, align 8
  store i32 %3, i32* %21, align 4
  store i32 %4, i32* %22, align 4
  store i32 %5, i32* %23, align 4
  store i32 %6, i32* %24, align 4
  store i32 %7, i32* %25, align 4
  store i32 %8, i32* %26, align 4
  store i32 %9, i32* %27, align 4
  store i32 %10, i32* %28, align 4
  store i32 %11, i32* %29, align 4
  store i32 %12, i32* %30, align 4
  store i32 %13, i32* %31, align 4
  store i32 (i32*, i32*, i32, i32, i32, i32)** %14, i32 (i32*, i32*, i32, i32, i32, i32)*** %32, align 8
  store i32 %15, i32* %33, align 4
  store i32 %16, i32* %34, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %35, align 4
  %46 = load i32, i32* %35, align 4
  %47 = call i32 @FFMIN(i32 %46, i32 3)
  store i32 %47, i32* %36, align 4
  %48 = load i32, i32* %35, align 4
  %49 = shl i32 2, %48
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %17
  %56 = load i32, i32* %33, align 4
  %57 = sdiv i32 %56, 2
  store i32 %57, i32* %33, align 4
  %58 = load i32, i32* %34, align 4
  %59 = sdiv i32 %58, 2
  store i32 %59, i32* %34, align 4
  br label %60

60:                                               ; preds = %55, %17
  %61 = load i32, i32* %33, align 4
  %62 = load i32, i32* %37, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %39, align 4
  %64 = load i32, i32* %34, align 4
  %65 = load i32, i32* %37, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %40, align 4
  %67 = load i32, i32* %33, align 4
  %68 = load i32, i32* %35, align 4
  %69 = add nsw i32 %68, 1
  %70 = ashr i32 %67, %69
  %71 = load i32, i32* %23, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %23, align 4
  %73 = load i32, i32* %34, align 4
  %74 = load i32, i32* %35, align 4
  %75 = add nsw i32 %74, 1
  %76 = ashr i32 %73, %75
  %77 = load i32, i32* %24, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %24, align 4
  %79 = load i32, i32* %24, align 4
  %80 = load i32, i32* %27, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %23, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32*, i32** %20, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %20, align 8
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %28, align 4
  %89 = load i32, i32* %39, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = sub nsw i32 %88, %93
  %95 = load i32, i32* %30, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @FFMAX(i32 %96, i32 0)
  %98 = icmp ugt i32 %87, %97
  br i1 %98, label %114, label %99

99:                                               ; preds = %60
  %100 = load i32, i32* %24, align 4
  %101 = load i32, i32* %29, align 4
  %102 = load i32, i32* %21, align 4
  %103 = ashr i32 %101, %102
  %104 = load i32, i32* %40, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = sub nsw i32 %103, %108
  %110 = load i32, i32* %31, align 4
  %111 = sub nsw i32 %109, %110
  %112 = call i32 @FFMAX(i32 %111, i32 0)
  %113 = icmp ugt i32 %100, %112
  br i1 %113, label %114, label %147

114:                                              ; preds = %99, %60
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %117, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %20, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %30, align 4
  %131 = add nsw i32 %130, 1
  %132 = load i32, i32* %31, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* %21, align 4
  %135 = shl i32 %133, %134
  %136 = load i32, i32* %23, align 4
  %137 = load i32, i32* %24, align 4
  %138 = load i32, i32* %21, align 4
  %139 = shl i32 %137, %138
  %140 = load i32, i32* %28, align 4
  %141 = load i32, i32* %29, align 4
  %142 = call i32 %118(i32* %122, i32* %123, i32 %126, i32 %129, i32 %131, i32 %135, i32 %136, i32 %139, i32 %140, i32 %141)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  store i32* %146, i32** %20, align 8
  store i32 1, i32* %38, align 4
  br label %147

147:                                              ; preds = %114, %99
  %148 = load i32, i32* %39, align 4
  %149 = shl i32 %148, 2
  %150 = load i32, i32* %35, align 4
  %151 = ashr i32 %149, %150
  store i32 %151, i32* %39, align 4
  %152 = load i32, i32* %40, align 4
  %153 = shl i32 %152, 2
  %154 = load i32, i32* %35, align 4
  %155 = ashr i32 %153, %154
  store i32 %155, i32* %40, align 4
  %156 = load i32, i32* %22, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %147
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** %20, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %20, align 8
  br label %165

165:                                              ; preds = %158, %147
  %166 = load i32 (i32*, i32*, i32, i32, i32, i32)**, i32 (i32*, i32*, i32, i32, i32, i32)*** %32, align 8
  %167 = load i32, i32* %36, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %166, i64 %168
  %170 = load i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %169, align 8
  %171 = load i32*, i32** %19, align 8
  %172 = load i32*, i32** %20, align 8
  %173 = load i32, i32* %27, align 4
  %174 = load i32, i32* %31, align 4
  %175 = load i32, i32* %39, align 4
  %176 = load i32, i32* %40, align 4
  %177 = call i32 %170(i32* %171, i32* %172, i32 %173, i32 %174, i32 %175, i32 %176)
  %178 = load i32, i32* %38, align 4
  ret i32 %178
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
