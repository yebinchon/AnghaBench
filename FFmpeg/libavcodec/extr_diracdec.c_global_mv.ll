; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_global_mv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_diracdec.c_global_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32**, i32*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, i32)* @global_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @global_mv(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32]*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = bitcast i32** %42 to [2 x i32]*
  store [2 x i32]* %43, [2 x i32]** %13, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %14, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %15, align 8
  %60 = load i32, i32* %12, align 4
  %61 = shl i32 1, %60
  %62 = load i32*, i32** %15, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32*, i32** %15, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 %69, %70
  %72 = add nsw i32 %66, %71
  %73 = sub nsw i32 %61, %72
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load [2 x i32]*, [2 x i32]** %13, align 8
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %75, i64 0
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %76, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load [2 x i32]*, [2 x i32]** %13, align 8
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %81, i64 0
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %82, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = mul nsw i32 %84, %85
  %87 = add nsw i32 %80, %86
  %88 = sext i32 %87 to i64
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = shl i64 1, %90
  %92 = load i32*, i32** %14, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %91, %95
  %97 = add nsw i64 %88, %96
  %98 = trunc i64 %97 to i32
  %99 = mul nsw i32 %74, %98
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load [2 x i32]*, [2 x i32]** %13, align 8
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %101, i64 1
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %102, i64 0, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load [2 x i32]*, [2 x i32]** %13, align 8
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 1
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %108, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = mul nsw i32 %110, %111
  %113 = add nsw i32 %106, %112
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %11, align 4
  %116 = zext i32 %115 to i64
  %117 = shl i64 1, %116
  %118 = load i32*, i32** %14, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = mul nsw i64 %117, %121
  %123 = add nsw i64 %114, %122
  %124 = trunc i64 %123 to i32
  %125 = mul nsw i32 %100, %124
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %127, %128
  %130 = shl i32 1, %129
  %131 = add nsw i32 %126, %130
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %132, %133
  %135 = ashr i32 %131, %134
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32**, i32*** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 %135, i32* %144, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %146, %147
  %149 = shl i32 1, %148
  %150 = add nsw i32 %145, %149
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %151, %152
  %154 = ashr i32 %150, %153
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32**, i32*** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 %154, i32* %163, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
