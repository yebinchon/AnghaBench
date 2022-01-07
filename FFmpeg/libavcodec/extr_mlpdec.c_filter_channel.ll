; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_filter_channel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_filter_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32**, %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 (i32*, i32*, i32, i32, i32, i32, i32, i32*)* }
%struct.TYPE_9__ = type { i32, i64, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_11__*, i32** }
%struct.TYPE_11__ = type { i32, i32*, i32 }

@FIR = common dso_local global i64 0, align 8
@NUM_FILTERS = common dso_local global i32 0, align 4
@MAX_BLOCKSIZE = common dso_local global i32 0, align 4
@MAX_FIR_ORDER = common dso_local global i32 0, align 4
@IIR = common dso_local global i64 0, align 8
@MAX_IIR_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32)* @filter_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_channel(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 %22
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %7, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* @FIR, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* @NUM_FILTERS, align 4
  %36 = zext i32 %35 to i64
  %37 = load i32, i32* @MAX_BLOCKSIZE, align 4
  %38 = load i32, i32* @MAX_FIR_ORDER, align 4
  %39 = add nsw i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %9, align 8
  %42 = mul nuw i64 %36, %40
  %43 = alloca i32, i64 %42, align 16
  store i64 %36, i64* %10, align 8
  store i64 %40, i64* %11, align 8
  %44 = load i64, i64* @FIR, align 8
  %45 = mul nsw i64 %44, %40
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* @MAX_BLOCKSIZE, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32* %49, i32** %12, align 8
  %50 = load i64, i64* @IIR, align 8
  %51 = mul nsw i64 %50, %40
  %52 = getelementptr inbounds i32, i32* %43, i64 %51
  %53 = load i32, i32* @MAX_BLOCKSIZE, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32* %55, i32** %13, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = load i64, i64* @FIR, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i64 %64
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %14, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = load i64, i64* @IIR, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %74
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %15, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %16, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @MSB_MASK(i32 %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @MAX_FIR_ORDER, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(i32* %87, i32* %90, i32 %94)
  %96 = load i32*, i32** %13, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @MAX_IIR_ORDER, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memcpy(i32* %96, i32* %99, i32 %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32*)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32*)** %107, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32**, i32*** %123, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32*, i32** %124, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = call i32 %108(i32* %109, i32* %110, i32 %113, i32 %116, i32 %117, i32 %118, i32 %121, i32* %132)
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = sub i64 0, %141
  %143 = getelementptr inbounds i32, i32* %137, i64 %142
  %144 = load i32, i32* @MAX_FIR_ORDER, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = trunc i64 %146 to i32
  %148 = call i32 @memcpy(i32* %136, i32* %143, i32 %147)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = sub i64 0, %156
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  %159 = load i32, i32* @MAX_IIR_ORDER, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = call i32 @memcpy(i32* %151, i32* %158, i32 %162)
  %164 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %164)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MSB_MASK(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
