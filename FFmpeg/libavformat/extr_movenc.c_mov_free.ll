; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_free.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.eac3_info*, i64 }
%struct.eac3_info = type { i64, i32, %struct.eac3_info*, i64, %struct.eac3_info*, i32, i32, %struct.eac3_info*, %struct.eac3_info*, %struct.eac3_info*, %struct.eac3_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @mov_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mov_free(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eac3_info*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.eac3_info*, %struct.eac3_info** %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %16, i64 %20
  %22 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %21, i32 0, i32 9
  %23 = load %struct.eac3_info*, %struct.eac3_info** %22, align 8
  %24 = icmp ne %struct.eac3_info* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %13
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load %struct.eac3_info*, %struct.eac3_info** %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %28, i64 %32
  %34 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %33, i32 0, i32 9
  %35 = load %struct.eac3_info*, %struct.eac3_info** %34, align 8
  %36 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %35, i32 0, i32 10
  %37 = call i32 @av_freep(%struct.eac3_info** %36)
  br label %38

38:                                               ; preds = %25, %13
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load %struct.eac3_info*, %struct.eac3_info** %40, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %41, i64 %45
  %47 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %46, i32 0, i32 9
  %48 = call i32 @av_freep(%struct.eac3_info** %47)
  br label %49

49:                                               ; preds = %38, %1
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %183, %49
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %186

56:                                               ; preds = %50
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load %struct.eac3_info*, %struct.eac3_info** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %59, i64 %61
  %63 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @MKTAG(i8 signext 114, i8 signext 116, i8 signext 112, i8 signext 32)
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load %struct.eac3_info*, %struct.eac3_info** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %70, i64 %72
  %74 = call i32 @ff_mov_close_hinting(%struct.eac3_info* %73)
  br label %101

75:                                               ; preds = %56
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load %struct.eac3_info*, %struct.eac3_info** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %78, i64 %80
  %82 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @MKTAG(i8 signext 116, i8 signext 109, i8 signext 99, i8 signext 100)
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %75
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load %struct.eac3_info*, %struct.eac3_info** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %94, i64 %96
  %98 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %97, i32 0, i32 9
  %99 = call i32 @av_freep(%struct.eac3_info** %98)
  br label %100

100:                                              ; preds = %91, %86, %75
  br label %101

101:                                              ; preds = %100, %67
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load %struct.eac3_info*, %struct.eac3_info** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %104, i64 %106
  %108 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %107, i32 0, i32 8
  %109 = call i32 @av_freep(%struct.eac3_info** %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load %struct.eac3_info*, %struct.eac3_info** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %112, i64 %114
  %116 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %115, i32 0, i32 7
  %117 = call i32 @av_freep(%struct.eac3_info** %116)
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load %struct.eac3_info*, %struct.eac3_info** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %120, i64 %122
  %124 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %123, i32 0, i32 6
  %125 = call i32 @av_packet_unref(i32* %124)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load %struct.eac3_info*, %struct.eac3_info** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %128, i64 %130
  %132 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %131, i32 0, i32 4
  %133 = load %struct.eac3_info*, %struct.eac3_info** %132, align 8
  %134 = icmp ne %struct.eac3_info* %133, null
  br i1 %134, label %135, label %155

135:                                              ; preds = %101
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load %struct.eac3_info*, %struct.eac3_info** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %138, i64 %140
  %142 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %141, i32 0, i32 4
  %143 = load %struct.eac3_info*, %struct.eac3_info** %142, align 8
  store %struct.eac3_info* %143, %struct.eac3_info** %5, align 8
  %144 = load %struct.eac3_info*, %struct.eac3_info** %5, align 8
  %145 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %144, i32 0, i32 5
  %146 = call i32 @av_packet_unref(i32* %145)
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load %struct.eac3_info*, %struct.eac3_info** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %149, i64 %151
  %153 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %152, i32 0, i32 4
  %154 = call i32 @av_freep(%struct.eac3_info** %153)
  br label %155

155:                                              ; preds = %135, %101
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load %struct.eac3_info*, %struct.eac3_info** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %158, i64 %160
  %162 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %155
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 2
  %168 = load %struct.eac3_info*, %struct.eac3_info** %167, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %168, i64 %170
  %172 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %171, i32 0, i32 2
  %173 = call i32 @av_freep(%struct.eac3_info** %172)
  br label %174

174:                                              ; preds = %165, %155
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  %177 = load %struct.eac3_info*, %struct.eac3_info** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %177, i64 %179
  %181 = getelementptr inbounds %struct.eac3_info, %struct.eac3_info* %180, i32 0, i32 1
  %182 = call i32 @ff_mov_cenc_free(i32* %181)
  br label %183

183:                                              ; preds = %174
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %4, align 4
  br label %50

186:                                              ; preds = %50
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 2
  %189 = call i32 @av_freep(%struct.eac3_info** %188)
  ret void
}

declare dso_local i32 @av_freep(%struct.eac3_info**) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ff_mov_close_hinting(%struct.eac3_info*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @ff_mov_cenc_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
