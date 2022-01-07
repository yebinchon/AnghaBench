; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ape.c_ape_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ape.c_ape_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid packet size: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @ape_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ape_read_packet(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %8, align 8
  store i64 8, i64* %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @avio_feof(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %19, i32* %3, align 4
  br label %196

20:                                               ; preds = %2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %29, i32* %3, align 4
  br label %196

30:                                               ; preds = %20
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SEEK_SET, align 4
  %44 = call i64 @avio_seek(i32 %33, i32 %42, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load i32, i32* @EIO, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %196

49:                                               ; preds = %30
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, 1
  %57 = icmp eq i64 %52, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %7, align 4
  br label %66

62:                                               ; preds = %49
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sle i64 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %66
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @INT_MAX, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub nsw i64 %87, %88
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %77, %66
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = load i32, i32* @AV_LOG_ERROR, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @av_log(%struct.TYPE_12__* %92, i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %105, align 8
  %108 = load i32, i32* @EIO, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %3, align 4
  br label %196

110:                                              ; preds = %77
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i64 @av_new_packet(%struct.TYPE_11__* %111, i64 %122)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %110
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = call i32 @AVERROR(i32 %126)
  store i32 %127, i32* %3, align 4
  br label %196

128:                                              ; preds = %110
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @AV_WL32(i64 %131, i32 %132)
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @AV_WL32(i64 %137, i32 %146)
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %9, align 8
  %155 = add nsw i64 %153, %154
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @avio_read(i32 %150, i64 %155, i64 %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %128
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %170 = call i32 @av_packet_unref(%struct.TYPE_11__* %169)
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %3, align 4
  br label %196

172:                                              ; preds = %128
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %9, align 8
  %189 = add nsw i64 %187, %188
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %193, align 8
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %172, %168, %125, %91, %46, %28, %18
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i64 @avio_feof(i32) #1

declare dso_local i64 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i64) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @AV_WL32(i64, i32) #1

declare dso_local i32 @avio_read(i32, i64, i64) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
