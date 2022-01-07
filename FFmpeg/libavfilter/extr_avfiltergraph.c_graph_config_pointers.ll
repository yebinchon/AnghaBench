; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_graph_config_pointers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_graph_config_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__**, %struct.TYPE_10__** }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__**, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }

@INT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @graph_config_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @graph_config_pointers(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_8__**, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %104, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %107

18:                                               ; preds = %12
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %21, i64 %23
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %10, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %50, %18
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %36, i64 %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %44, i64 %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  br label %50

50:                                               ; preds = %32
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %26

53:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %78, %53
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %54
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %64, i64 %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %72, i64 %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 -1, i32* %77, align 8
  br label %78

78:                                               ; preds = %60
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %54

81:                                               ; preds = %54
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %103, label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @INT_MAX, align 4
  %91 = load i32, i32* %8, align 4
  %92 = sub nsw i32 %90, %91
  %93 = icmp ugt i32 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* @EINVAL, align 4
  %96 = call i32 @AVERROR(i32 %95)
  store i32 %96, i32* %3, align 4
  br label %183

97:                                               ; preds = %86
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %97, %81
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %12

107:                                              ; preds = %12
  %108 = load i32, i32* %8, align 4
  %109 = call %struct.TYPE_8__** @av_calloc(i32 %108, i32 8)
  store %struct.TYPE_8__** %109, %struct.TYPE_8__*** %11, align 8
  %110 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %111 = icmp ne %struct.TYPE_8__** %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = call i32 @AVERROR(i32 %113)
  store i32 %114, i32* %3, align 4
  br label %183

115:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %168, %115
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ult i32 %117, %120
  br i1 %121, label %122, label %171

122:                                              ; preds = %116
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %125, i64 %127
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  store %struct.TYPE_10__* %129, %struct.TYPE_10__** %10, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %167, label %134

134:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %163, %134
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ult i32 %136, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %135
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %144, i64 %146
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %149, i64 %151
  store %struct.TYPE_8__* %148, %struct.TYPE_8__** %152, align 8
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %157, i64 %159
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  store i32 %153, i32* %162, align 8
  br label %163

163:                                              ; preds = %141
  %164 = load i32, i32* %7, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %135

166:                                              ; preds = %135
  br label %167

167:                                              ; preds = %166, %122
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %6, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %116

171:                                              ; preds = %116
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @av_assert0(i32 %175)
  %177 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  store %struct.TYPE_8__** %177, %struct.TYPE_8__*** %179, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %171, %112, %94
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_8__** @av_calloc(i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
