; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avidec.c_guess_ni_flag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avidec.c_guess_ni_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@INT64_MAX = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @guess_ni_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guess_ni_flag(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [2 x i32], align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 0, i64* %5, align 8
  %13 = load i64, i64* @INT64_MAX, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @avio_tell(i32 %16)
  store i64 %17, i64* %7, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %147, %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %150

24:                                               ; preds = %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %8, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %147

38:                                               ; preds = %24
  %39 = load i32, i32* %9, align 4
  %40 = icmp sge i32 %39, 2
  br i1 %40, label %41, label %108

41:                                               ; preds = %38
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* @SEEK_SET, align 4
  %53 = call i32 @avio_seek(i32 %50, i64 %51, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @avio_r8(i32 %56)
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @avio_r8(i32 %61)
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @avio_rl16(i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @avio_rl32(i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %73 = call i32 @get_stream_idx(i32* %72)
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %41
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* %10, align 4
  %79 = zext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %80, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = load i64, i64* @INT64_MAX, align 8
  store i64 %89, i64* %5, align 8
  br label %90

90:                                               ; preds = %88, %76, %41
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %92 = call i32 @get_stream_idx(i32* %91)
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 8
  %104 = icmp eq i32 %96, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i64, i64* @INT64_MAX, align 8
  store i64 %106, i64* %5, align 8
  br label %107

107:                                              ; preds = %105, %95, %90
  br label %108

108:                                              ; preds = %107, %38
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %5, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %108
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %5, align 8
  br label %124

124:                                              ; preds = %117, %108
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %6, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %124
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %6, align 8
  br label %146

146:                                              ; preds = %136, %124
  br label %147

147:                                              ; preds = %146, %37
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %18

150:                                              ; preds = %18
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %7, align 8
  %155 = load i32, i32* @SEEK_SET, align 4
  %156 = call i32 @avio_seek(i32 %153, i64 %154, i32 %155)
  %157 = load i64, i64* %5, align 8
  %158 = load i64, i64* %6, align 8
  %159 = icmp sgt i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %150
  store i32 1, i32* %2, align 4
  br label %164

161:                                              ; preds = %150
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %163 = call i32 @check_stream_max_drift(%struct.TYPE_8__* %162)
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %161, %160
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i64 @avio_tell(i32) #1

declare dso_local i32 @avio_seek(i32, i64, i32) #1

declare dso_local i32 @avio_r8(i32) #1

declare dso_local i32 @avio_rl16(i32) #1

declare dso_local i32 @avio_rl32(i32) #1

declare dso_local i32 @get_stream_idx(i32*) #1

declare dso_local i32 @check_stream_max_drift(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
