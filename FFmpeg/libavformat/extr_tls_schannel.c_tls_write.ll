; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_schannel.c_tls_write.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_schannel.c_tls_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@SECPKG_ATTR_STREAM_SIZES = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i64 0, align 8
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SECBUFFER_STREAM_HEADER = common dso_local global i32 0, align 4
@SECBUFFER_DATA = common dso_local global i32 0, align 4
@SECBUFFER_STREAM_TRAILER = common dso_local global i32 0, align 4
@SECBUFFER_EMPTY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Writing encrypted data to socket failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Encrypting data failed\0A\00", align 1
@SEC_E_INSUFFICIENT_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32)* @tls_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [4 x %struct.TYPE_13__], align 16
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %8, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %9, align 8
  store i32 0, i32* %11, align 4
  store i32* null, i32** %13, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* @SECPKG_ATTR_STREAM_SIZES, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = call i64 @QueryContextAttributes(i32* %28, i32 %29, %struct.TYPE_14__* %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @SEC_E_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %37, i32* %4, align 4
  br label %176

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %3
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @FFMIN(i32 %40, i64 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %51, %55
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32* @av_malloc(i32 %57)
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %39
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %4, align 4
  br label %176

64:                                               ; preds = %39
  %65 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 0
  %66 = load i32, i32* @SECBUFFER_STREAM_HEADER, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @init_sec_buffer(%struct.TYPE_13__* %65, i32 %66, i32* %67, i32 %71)
  %73 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 1
  %74 = load i32, i32* @SECBUFFER_DATA, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %75, i64 %80
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @init_sec_buffer(%struct.TYPE_13__* %73, i32 %74, i32* %81, i32 %82)
  %84 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 2
  %85 = load i32, i32* @SECBUFFER_STREAM_TRAILER, align 4
  %86 = load i32*, i32** %13, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %86, i64 %91
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @init_sec_buffer(%struct.TYPE_13__* %84, i32 %85, i32* %95, i32 %99)
  %101 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 3
  %102 = load i32, i32* @SECBUFFER_EMPTY, align 4
  %103 = call i32 @init_sec_buffer(%struct.TYPE_13__* %101, i32 %102, i32* null, i32 0)
  %104 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 0
  %105 = call i32 @init_sec_buffer_desc(i32* %15, %struct.TYPE_13__* %104, i32 4)
  %106 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 1
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @memcpy(i32 %108, i32* %109, i32 %110)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = call i64 @EncryptMessage(i32* %113, i32 0, i32* %15, i32 0)
  store i64 %114, i64* %10, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* @SEC_E_OK, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %64
  %119 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 16
  %122 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 1
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %121, %124
  %126 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 2
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 16
  %129 = add nsw i32 %125, %128
  store i32 %129, i32* %7, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @ffurl_write(i32 %132, i32* %133, i32 %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %118
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %138, %118
  %143 = load i32, i32* @EIO, align 4
  %144 = call i32 @AVERROR(i32 %143)
  store i32 %144, i32* %11, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = load i32, i32* @AV_LOG_ERROR, align 4
  %147 = call i32 @av_log(%struct.TYPE_10__* %145, i32 %146, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %164

148:                                              ; preds = %138
  br label %163

149:                                              ; preds = %64
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = load i32, i32* @AV_LOG_ERROR, align 4
  %152 = call i32 @av_log(%struct.TYPE_10__* %150, i32 %151, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i64, i64* %10, align 8
  %154 = load i64, i64* @SEC_E_INSUFFICIENT_MEMORY, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = call i32 @AVERROR(i32 %157)
  store i32 %158, i32* %11, align 4
  br label %162

159:                                              ; preds = %149
  %160 = load i32, i32* @EIO, align 4
  %161 = call i32 @AVERROR(i32 %160)
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %159, %156
  br label %164

163:                                              ; preds = %148
  br label %164

164:                                              ; preds = %163, %162, %142
  %165 = call i32 @av_freep(i32** %13)
  %166 = load i32, i32* %11, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* %11, align 4
  br label %174

170:                                              ; preds = %164
  %171 = getelementptr inbounds [4 x %struct.TYPE_13__], [4 x %struct.TYPE_13__]* %14, i64 0, i64 1
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  br label %174

174:                                              ; preds = %170, %168
  %175 = phi i32 [ %169, %168 ], [ %173, %170 ]
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %174, %61, %36
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i64 @QueryContextAttributes(i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @FFMIN(i32, i64) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_sec_buffer(%struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i32 @init_sec_buffer_desc(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @EncryptMessage(i32*, i32, i32*, i32) #1

declare dso_local i32 @ffurl_write(i32, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
