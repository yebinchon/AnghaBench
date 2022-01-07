; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smacker.c_smacker_decode_bigtree.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_smacker.c_smacker_decode_bigtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32* }
%struct.TYPE_10__ = type { i32*, i32*, i32*, i64*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@SMKTREE_DECODE_BIG_MAX_RECURSION = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Maximum bigtree recursion level exceeded.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Tree size exceeded!\0A\00", align 1
@SMKTREE_BITS = common dso_local global i32 0, align 4
@SMK_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32)* @smacker_decode_bigtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smacker_decode_bigtree(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SMKTREE_DECODE_BIG_MAX_RECURSION, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @AV_LOG_ERROR, align 4
  %21 = call i32 @av_log(i32* null, i32 %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %22, i32* %5, align 4
  br label %202

23:                                               ; preds = %4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = call i32 @av_log(i32* null, i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %5, align 4
  br label %202

36:                                               ; preds = %23
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @get_bits1(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %160, label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @SMKTREE_BITS, align 4
  %55 = call i32 @get_vlc2(i32* %48, i64 %53, i32 %54, i32 3)
  br label %57

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %47
  %58 = phi i32 [ %55, %47 ], [ 0, %56 ]
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @SMKTREE_BITS, align 4
  %73 = call i32 @get_vlc2(i32* %66, i64 %71, i32 %72, i32 3)
  br label %75

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %65
  %76 = phi i32 [ %73, %65 ], [ 0, %74 ]
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %75
  %83 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %83, i32* %5, align 4
  br label %202

84:                                               ; preds = %79
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 8
  %100 = or i32 %91, %99
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %101, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %84
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  store i64 %111, i64* %115, align 8
  store i32 0, i32* %10, align 4
  br label %150

116:                                              ; preds = %84
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %117, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %116
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 1
  store i64 %127, i64* %131, align 8
  store i32 0, i32* %10, align 4
  br label %149

132:                                              ; preds = %116
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %133, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %132
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 3
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 2
  store i64 %143, i64* %147, align 8
  store i32 0, i32* %10, align 4
  br label %148

148:                                              ; preds = %140, %132
  br label %149

149:                                              ; preds = %148, %124
  br label %150

150:                                              ; preds = %149, %108
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %156, align 8
  %159 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 %151, i32* %159, align 4
  store i32 1, i32* %5, align 4
  br label %202

160:                                              ; preds = %36
  store i32 0, i32* %13, align 4
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %162, align 8
  %165 = trunc i64 %163 to i32
  store i32 %165, i32* %15, align 4
  %166 = load i32*, i32** %6, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  %171 = call i32 @smacker_decode_bigtree(i32* %166, %struct.TYPE_9__* %167, %struct.TYPE_10__* %168, i32 %170)
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %160
  %175 = load i32, i32* %13, align 4
  store i32 %175, i32* %5, align 4
  br label %202

176:                                              ; preds = %160
  %177 = load i32, i32* @SMK_NODE, align 4
  %178 = load i32, i32* %13, align 4
  %179 = or i32 %177, %178
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %13, align 4
  %188 = load i32*, i32** %6, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 1
  %193 = call i32 @smacker_decode_bigtree(i32* %188, %struct.TYPE_9__* %189, %struct.TYPE_10__* %190, i32 %192)
  store i32 %193, i32* %14, align 4
  %194 = load i32, i32* %14, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %176
  %197 = load i32, i32* %14, align 4
  store i32 %197, i32* %5, align 4
  br label %202

198:                                              ; preds = %176
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %199, %200
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %198, %196, %174, %150, %82, %32, %19
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_vlc2(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
