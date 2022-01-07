; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_do_encrypt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsenc.c_do_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i8*, i32 (%struct.TYPE_9__*, i32**, i32*, i32, i32*)*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }

@KEYSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".key\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"no key URI specified in key info file\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"no key file specified in key info file\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Cannot generate a strong random key\0A\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @do_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_encrypt(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [16 x i32], align 16
  %14 = alloca [33 x i8], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 10
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %6, align 8
  %18 = load i32, i32* @KEYSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 9
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @strlen(i32* %24)
  %26 = add nsw i32 %25, 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32* @av_mallocz(i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 7
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %204

39:                                               ; preds = %2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 7
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 9
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @av_strlcpy(i32* %42, i32* %45, i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 7
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @av_strlcat(i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %39
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 8
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @av_strlcpy(i32* %60, i32* %63, i32 8)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @av_strlcpy(i32* %67, i32* %70, i32 8)
  br label %87

72:                                               ; preds = %39
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @av_strlcpy(i32* %75, i32* %78, i32 8)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 7
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @av_strlcpy(i32* %82, i32* %85, i32 8)
  br label %87

87:                                               ; preds = %72, %57
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %122, label %93

93:                                               ; preds = %87
  %94 = bitcast [16 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %94, i8 0, i64 64, i1 false)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @AV_WB64(i32* %101, i32 %104)
  br label %112

106:                                              ; preds = %93
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @memcpy(i32* %107, i8* %110, i32 64)
  br label %112

112:                                              ; preds = %106, %99
  %113 = getelementptr inbounds [33 x i8], [33 x i8]* %14, i64 0, i64 0
  %114 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %115 = call i32 @ff_data_to_hex(i8* %113, i32* %114, i32 64, i32 0)
  %116 = getelementptr inbounds [33 x i8], [33 x i8]* %14, i64 0, i64 32
  store i8 0, i8* %116, align 16
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds [33 x i8], [33 x i8]* %14, i64 0, i64 0
  %121 = call i32 @memcpy(i32* %119, i8* %120, i32 8)
  br label %122

122:                                              ; preds = %112, %87
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = load i32, i32* @AV_LOG_ERROR, align 4
  %131 = call i32 @av_log(%struct.TYPE_9__* %129, i32 %130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = call i32 @AVERROR(i32 %132)
  store i32 %133, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %204

134:                                              ; preds = %122
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %134
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %142 = load i32, i32* @AV_LOG_ERROR, align 4
  %143 = call i32 @av_log(%struct.TYPE_9__* %141, i32 %142, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = call i32 @AVERROR(i32 %144)
  store i32 %145, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %204

146:                                              ; preds = %134
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load i8, i8* %149, align 1
  %151 = icmp ne i8 %150, 0
  br i1 %151, label %203, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %168, label %157

157:                                              ; preds = %152
  %158 = mul nuw i64 4, %19
  %159 = trunc i64 %158 to i32
  %160 = call i32 @randomize(i32* %21, i32 %159)
  store i32 %160, i32* %7, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %164 = load i32, i32* @AV_LOG_ERROR, align 4
  %165 = call i32 @av_log(%struct.TYPE_9__* %163, i32 %164, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %204

167:                                              ; preds = %157
  br label %175

168:                                              ; preds = %152
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = mul nuw i64 4, %19
  %173 = trunc i64 %172 to i32
  %174 = call i32 @memcpy(i32* %21, i8* %171, i32 %173)
  br label %175

175:                                              ; preds = %168, %167
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = mul nuw i64 4, %19
  %180 = trunc i64 %179 to i32
  %181 = call i32 @ff_data_to_hex(i8* %178, i32* %21, i32 %180, i32 0)
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 3
  %184 = load i32 (%struct.TYPE_9__*, i32**, i32*, i32, i32*)*, i32 (%struct.TYPE_9__*, i32**, i32*, i32, i32*)** %183, align 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %190 = call i32 %184(%struct.TYPE_9__* %185, i32** %9, i32* %188, i32 %189, i32* null)
  store i32 %190, i32* %7, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %175
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %204

194:                                              ; preds = %175
  %195 = load i32*, i32** %9, align 8
  %196 = load i32, i32* @SEEK_CUR, align 4
  %197 = call i32 @avio_seek(i32* %195, i32 0, i32 %196)
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* @KEYSIZE, align 4
  %200 = call i32 @avio_write(i32* %198, i32* %21, i32 %199)
  %201 = load i32*, i32** %9, align 8
  %202 = call i32 @avio_close(i32* %201)
  br label %203

203:                                              ; preds = %194, %146
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %204

204:                                              ; preds = %203, %192, %162, %140, %128, %36
  %205 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i32*) #2

declare dso_local i32* @av_mallocz(i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_strlcpy(i32*, i32*, i32) #2

declare dso_local i32 @av_strlcat(i32*, i8*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @AV_WB64(i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @ff_data_to_hex(i8*, i32*, i32, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*) #2

declare dso_local i32 @randomize(i32*, i32) #2

declare dso_local i32 @avio_seek(i32*, i32, i32) #2

declare dso_local i32 @avio_write(i32*, i32*, i32) #2

declare dso_local i32 @avio_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
