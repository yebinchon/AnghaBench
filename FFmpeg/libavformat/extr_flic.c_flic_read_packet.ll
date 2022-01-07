; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flic.c_flic_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flic.c_flic_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i8*, i32, i64 }

@FLIC_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FLIC_CHUNK_MAGIC_1 = common dso_local global i32 0, align 4
@FLIC_CHUNK_MAGIC_2 = common dso_local global i32 0, align 4
@FLIC_TFTD_CHUNK_AUDIO = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*)* @flic_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flic_read_packet(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @FLIC_PREAMBLE_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  br label %23

23:                                               ; preds = %155, %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @avio_feof(i32* %27)
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ false, %23 ], [ %30, %26 ]
  br i1 %32, label %33, label %156

33:                                               ; preds = %31
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @FLIC_PREAMBLE_SIZE, align 4
  %36 = call i32 @avio_read(i32* %34, i8* %22, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @FLIC_PREAMBLE_SIZE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EIO, align 4
  %41 = call i32 @AVERROR(i32 %40)
  store i32 %41, i32* %10, align 4
  br label %156

42:                                               ; preds = %33
  %43 = getelementptr inbounds i8, i8* %22, i64 0
  %44 = call i32 @AV_RL32(i8* %43)
  store i32 %44, i32* %8, align 4
  %45 = getelementptr inbounds i8, i8* %22, i64 4
  %46 = call i32 @AV_RL16(i8* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @FLIC_CHUNK_MAGIC_1, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @FLIC_CHUNK_MAGIC_2, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %110

54:                                               ; preds = %50, %42
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @FLIC_PREAMBLE_SIZE, align 4
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %58, label %110

58:                                               ; preds = %54
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @av_new_packet(%struct.TYPE_9__* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EIO, align 4
  %65 = call i32 @AVERROR(i32 %64)
  store i32 %65, i32* %10, align 4
  br label %156

66:                                               ; preds = %58
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = sext i32 %74 to i64
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = call i8* @avio_tell(i32* %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @FLIC_PREAMBLE_SIZE, align 4
  %87 = call i32 @memcpy(i8* %85, i8* %22, i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* @FLIC_PREAMBLE_SIZE, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @FLIC_PREAMBLE_SIZE, align 4
  %97 = sub i32 %95, %96
  %98 = call i32 @avio_read(i32* %88, i8* %94, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @FLIC_PREAMBLE_SIZE, align 4
  %102 = sub i32 %100, %101
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %66
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = call i32 @av_packet_unref(%struct.TYPE_9__* %105)
  %107 = load i32, i32* @EIO, align 4
  %108 = call i32 @AVERROR(i32 %107)
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %104, %66
  store i32 1, i32* %7, align 4
  br label %155

110:                                              ; preds = %54, %50
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @FLIC_TFTD_CHUNK_AUDIO, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %149

114:                                              ; preds = %110
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @av_new_packet(%struct.TYPE_9__* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* @EIO, align 4
  %121 = call i32 @AVERROR(i32 %120)
  store i32 %121, i32* %10, align 4
  br label %156

122:                                              ; preds = %114
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @avio_skip(i32* %123, i32 10)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = call i8* @avio_tell(i32* %130)
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @avio_read(i32* %134, i8* %137, i32 %138)
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %122
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %145 = call i32 @av_packet_unref(%struct.TYPE_9__* %144)
  %146 = load i32, i32* @EIO, align 4
  %147 = call i32 @AVERROR(i32 %146)
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %143, %122
  store i32 1, i32* %7, align 4
  br label %154

149:                                              ; preds = %110
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sub i32 %151, 6
  %153 = call i32 @avio_skip(i32* %150, i32 %152)
  br label %154

154:                                              ; preds = %149, %148
  br label %155

155:                                              ; preds = %154, %109
  br label %23

156:                                              ; preds = %119, %63, %39, %31
  %157 = load i32*, i32** %6, align 8
  %158 = call i64 @avio_feof(i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* @AVERROR_EOF, align 4
  br label %164

162:                                              ; preds = %156
  %163 = load i32, i32* %10, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  %166 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %166)
  ret i32 %165
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @avio_feof(i32*) #2

declare dso_local i32 @avio_read(i32*, i8*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @AV_RL32(i8*) #2

declare dso_local i32 @AV_RL16(i8*) #2

declare dso_local i64 @av_new_packet(%struct.TYPE_9__*, i32) #2

declare dso_local i8* @avio_tell(i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_9__*) #2

declare dso_local i32 @avio_skip(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
