; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_crypto.c_crypto_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_crypto.c_crypto_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Crypto: seek not supported for write\0D\0A\00", align 1
@ESPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Crypto: seek_end - can't get file size (pos=%lld)\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Crypto: no support for seek where 'whence' is %d\0D\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BLOCKSIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"Crypto: nested protocol no support for seek or seek failed\0A\00", align 1
@__const.crypto_seek.errbuf = private unnamed_addr constant [100 x i8] c"unknown error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.4 = private unnamed_addr constant [84 x i8] c"Crypto: discard read did not get all the bytes (%d remain) - read returned (%d)-%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i64, i32)* @crypto_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crypto_seek(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [100 x i8], align 16
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %8, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = load i32, i32* @AV_LOG_ERROR, align 4
  %31 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %29, i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ESPIPE, align 4
  %33 = call i64 @AVERROR(i32 %32)
  store i64 %33, i64* %4, align 8
  br label %187

34:                                               ; preds = %3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 11
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %70 [
    i32 128, label %38
    i32 130, label %39
    i32 129, label %45
    i32 131, label %63
  ]

38:                                               ; preds = %34
  br label %77

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  store i64 %44, i64* %6, align 8
  br label %77

45:                                               ; preds = %34
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @ffurl_seek(i32 %48, i64 %49, i32 131)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = load i64, i64* %6, align 8
  %57 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %54, i32 %55, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* %11, align 8
  store i64 %58, i64* %4, align 8
  br label %187

59:                                               ; preds = %45
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub nsw i64 %60, %61
  store i64 %62, i64* %6, align 8
  br label %77

63:                                               ; preds = %34
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @ffurl_seek(i32 %66, i64 %67, i32 131)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  store i64 %69, i64* %4, align 8
  br label %187

70:                                               ; preds = %34
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %71, i32 %72, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = call i64 @AVERROR(i32 %75)
  store i64 %76, i64* %4, align 8
  br label %187

77:                                               ; preds = %59, %39, %38
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 10
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 9
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 8
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @BLOCKSIZE, align 8
  %91 = sdiv i64 %89, %90
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %77
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i32 %97, i32 %100, i32 %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  br label %115

107:                                              ; preds = %77
  %108 = load i64, i64* %9, align 8
  %109 = add nsw i64 %108, -1
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* @BLOCKSIZE, align 8
  %112 = mul nsw i64 %110, %111
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %107, %94
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @ffurl_seek(i32 %118, i64 %121, i32 128)
  store i64 %122, i64* %10, align 8
  %123 = load i64, i64* %10, align 8
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %115
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %126, i32 %127, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i64, i64* %10, align 8
  store i64 %129, i64* %4, align 8
  br label %187

130:                                              ; preds = %115
  %131 = load i64, i64* %6, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %131, %134
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %183

137:                                              ; preds = %130
  %138 = load i64, i64* @BLOCKSIZE, align 8
  %139 = mul nsw i64 %138, 2
  %140 = call i8* @llvm.stacksave()
  store i8* %140, i8** %13, align 8
  %141 = alloca i32, i64 %139, align 16
  store i64 %139, i64* %14, align 8
  %142 = load i64, i64* %6, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = sub nsw i64 %142, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %15, align 4
  br label %148

148:                                              ; preds = %158, %137
  %149 = load i32, i32* %15, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @crypto_read(%struct.TYPE_6__* %152, i32* %141, i32 %153)
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %162

158:                                              ; preds = %151
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %15, align 4
  %161 = sub nsw i32 %160, %159
  store i32 %161, i32* %15, align 4
  br label %148

162:                                              ; preds = %157, %148
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %162
  %166 = bitcast [100 x i8]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %166, i8* align 16 getelementptr inbounds ([100 x i8], [100 x i8]* @__const.crypto_seek.errbuf, i32 0, i32 0), i64 100, i1 false)
  %167 = load i32, i32* %16, align 4
  %168 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %169 = call i32 @av_strerror(i32 %167, i8* %168, i32 100)
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %171 = load i32, i32* @AV_LOG_ERROR, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %16, align 4
  %174 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %175 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %170, i32 %171, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 %172, i32 %173, i8* %174)
  %176 = load i32, i32* @EINVAL, align 4
  %177 = call i64 @AVERROR(i32 %176)
  store i64 %177, i64* %4, align 8
  store i32 1, i32* %18, align 4
  br label %179

178:                                              ; preds = %162
  store i32 0, i32* %18, align 4
  br label %179

179:                                              ; preds = %178, %165
  %180 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %180)
  %181 = load i32, i32* %18, align 4
  switch i32 %181, label %189 [
    i32 0, label %182
    i32 1, label %187
  ]

182:                                              ; preds = %179
  br label %183

183:                                              ; preds = %182, %130
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %4, align 8
  br label %187

187:                                              ; preds = %183, %179, %125, %70, %63, %53, %28
  %188 = load i64, i64* %4, align 8
  ret i64 %188

189:                                              ; preds = %179
  unreachable
}

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i64 @AVERROR(i32) #1

declare dso_local i64 @ffurl_seek(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @crypto_read(%struct.TYPE_6__*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @av_strerror(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
