; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_crypto.c_crypto_open2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_crypto.c_crypto_open2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i8*, %struct.TYPE_10__*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"crypto+\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"crypto:\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Unsupported url %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"decryption key\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"decryption IV\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"encryption key\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"encryption IV\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Unable to open resource: %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, i32**)* @crypto_open2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_open2(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @av_strstart(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @av_strstart(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = load i32, i32* @AV_LOG_ERROR, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @av_log(%struct.TYPE_8__* %26, i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = call i32 @AVERROR(i32 %30)
  store i32 %31, i32* %10, align 4
  br label %208

32:                                               ; preds = %21, %4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @AVIO_FLAG_READ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 15
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @set_aes_arg(%struct.TYPE_8__* %38, i32* %40, i32* %42, i32 %45, i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %49, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %208

52:                                               ; preds = %37
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 14
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 13
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @set_aes_arg(%struct.TYPE_8__* %53, i32* %55, i32* %57, i32 %60, i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %64, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %208

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %32
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %68
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 12
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @set_aes_arg(%struct.TYPE_8__* %74, i32* %76, i32* %78, i32 %81, i32 %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 %85, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %73
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %208

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91, %73
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 9
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @set_aes_arg(%struct.TYPE_8__* %93, i32* %95, i32* %97, i32 %100, i32 %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 %104, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %208

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %68
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i8*, i8** %9, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i32**, i32*** %8, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = call i32 @ffurl_open_whitelist(%struct.TYPE_10__** %110, i8* %111, i32 %112, i32* %114, i32** %115, i32 %118, i32 %121, %struct.TYPE_8__* %122)
  store i32 %123, i32* %10, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %108
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @av_log(%struct.TYPE_8__* %126, i32 %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %128)
  br label %208

130:                                              ; preds = %108
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @AVIO_FLAG_READ, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %175

135:                                              ; preds = %130
  %136 = call i8* (...) @av_aes_alloc()
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 5
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %135
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = call i32 @AVERROR(i32 %144)
  store i32 %145, i32* %10, align 4
  br label %208

146:                                              ; preds = %135
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 5
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @BLOCKSIZE, align 4
  %154 = mul nsw i32 %153, 8
  %155 = call i32 @av_aes_init(i8* %149, i32 %152, i32 %154, i32 1)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %146
  br label %208

159:                                              ; preds = %146
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %159
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %166, %159
  br label %175

175:                                              ; preds = %174, %130
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %207

180:                                              ; preds = %175
  %181 = call i8* (...) @av_aes_alloc()
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 2
  store i8* %181, i8** %183, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %180
  %189 = load i32, i32* @ENOMEM, align 4
  %190 = call i32 @AVERROR(i32 %189)
  store i32 %190, i32* %10, align 4
  br label %208

191:                                              ; preds = %180
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @BLOCKSIZE, align 4
  %199 = mul nsw i32 %198, 8
  %200 = call i32 @av_aes_init(i8* %194, i32 %197, i32 %199, i32 0)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %191
  br label %208

204:                                              ; preds = %191
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  store i32 1, i32* %206, align 8
  br label %207

207:                                              ; preds = %204, %175
  br label %208

208:                                              ; preds = %207, %203, %188, %158, %143, %125, %106, %90, %66, %51, %25
  %209 = load i32, i32* %10, align 4
  ret i32 %209
}

declare dso_local i32 @av_strstart(i8*, i8*, i8**) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @set_aes_arg(%struct.TYPE_8__*, i32*, i32*, i32, i32, i8*) #1

declare dso_local i32 @ffurl_open_whitelist(%struct.TYPE_10__**, i8*, i32, i32*, i32**, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i8* @av_aes_alloc(...) #1

declare dso_local i32 @av_aes_init(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
