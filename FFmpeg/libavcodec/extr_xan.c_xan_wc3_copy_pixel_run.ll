; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xan.c_xan_wc3_copy_pixel_run.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xan.c_xan_wc3_copy_pixel_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32** }
%struct.TYPE_9__ = type { i32*, i32** }

@.str = private unnamed_addr constant [17 x i8] c"Overlapping copy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i32, i32, i32)* @xan_wc3_copy_pixel_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xan_wc3_copy_pixel_run(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %21, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %30, %31
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %7
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %37, %42
  br i1 %43, label %59, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %45, %46
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %52, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49, %44, %34, %7
  br label %189

60:                                               ; preds = %49
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %22, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %23, align 8
  %73 = load i32*, i32** %23, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %60
  %76 = load i32*, i32** %22, align 8
  store i32* %76, i32** %23, align 8
  br label %77

77:                                               ; preds = %75, %60
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %21, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %15, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %15, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %98, %99
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %20, align 4
  %104 = load i32*, i32** %23, align 8
  %105 = load i32*, i32** %22, align 8
  %106 = icmp eq i32* %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %77
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %14, align 4
  %111 = mul nsw i32 %109, %110
  %112 = add nsw i32 %108, %111
  %113 = call i32 @FFABS(i32 %112)
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %107
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = call i32 @avpriv_request_sample(%struct.TYPE_10__* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %189

121:                                              ; preds = %107, %77
  br label %122

122:                                              ; preds = %188, %121
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load i32, i32* %17, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load i32, i32* %18, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br label %137

137:                                              ; preds = %131, %125, %122
  %138 = phi i1 [ false, %125 ], [ false, %122 ], [ %136, %131 ]
  br i1 %138, label %139, label %189

139:                                              ; preds = %137
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* %19, align 4
  %143 = sub nsw i32 %141, %142
  %144 = load i32, i32* %21, align 4
  %145 = load i32, i32* %20, align 4
  %146 = sub nsw i32 %144, %145
  %147 = call i32 @FFMIN3(i32 %140, i32 %143, i32 %146)
  store i32 %147, i32* %24, align 4
  %148 = load i32*, i32** %22, align 8
  %149 = load i32, i32* %17, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32*, i32** %23, align 8
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %24, align 4
  %157 = call i32 @memcpy(i32* %151, i32* %155, i32 %156)
  %158 = load i32, i32* %24, align 4
  %159 = load i32, i32* %12, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %24, align 4
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %17, align 4
  %164 = load i32, i32* %24, align 4
  %165 = load i32, i32* %18, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* %19, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %19, align 4
  %170 = load i32, i32* %24, align 4
  %171 = load i32, i32* %20, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %20, align 4
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %21, align 4
  %175 = icmp sge i32 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %139
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %180

180:                                              ; preds = %176, %139
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %21, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %188

188:                                              ; preds = %184, %180
  br label %122

189:                                              ; preds = %59, %116, %137
  ret void
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @FFMIN3(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
