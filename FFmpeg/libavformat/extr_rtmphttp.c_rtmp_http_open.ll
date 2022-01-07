; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmphttp.c_rtmp_http_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmphttp.c_rtmp_http_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i8*, i32, %struct.TYPE_10__*, i32, i64 }
%struct.TYPE_10__ = type { i64, i32 }

@RTMPTS_DEFAULT_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/open/1\00", align 1
@RTMPT_DEFAULT_PORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@AVIO_FLAG_READ_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [88 x i8] c"Cache-Control: no-cache\0D\0AContent-type: application/x-fcs\0D\0AUser-Agent: Shockwave Flash\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"headers\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"multiple_requests\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"post_data\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32)* @rtmp_http_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtmp_http_open(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @av_url_split(i32* null, i32 0, i32* null, i32 0, i32 %18, i32 4, i64* %20, i32* null, i32 0, i8* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i64, i64* @RTMPTS_DEFAULT_PORT, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %27
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ff_url_join(i8* %37, i32 1024, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %40, i64 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %63

45:                                               ; preds = %3
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i64, i64* @RTMPT_DEFAULT_PORT, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %45
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @ff_url_join(i8* %55, i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %58, i64 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %54, %36
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %67 = load i32, i32* @AVIO_FLAG_READ_WRITE, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = call i32 @ffurl_alloc(%struct.TYPE_10__** %65, i8* %66, i32 %67, i32* %69)
  store i32 %70, i32* %11, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %199

73:                                               ; preds = %63
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %75 = call i32 @snprintf(i8* %74, i32 1024, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %82 = call i32 @av_opt_set(i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %81, i32 0)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @av_opt_set(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @av_opt_set_bin(i32 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i32 1, i32 0)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %125, label %101

101:                                              ; preds = %73
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %101
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @av_strdup(i64 %109)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store i64 %110, i64* %114, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %106
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = call i32 @AVERROR(i32 %122)
  store i32 %123, i32* %11, align 4
  br label %199

124:                                              ; preds = %106
  br label %125

125:                                              ; preds = %124, %101, %73
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = call i32 @ffurl_connect(%struct.TYPE_10__* %128, i32* null)
  store i32 %129, i32* %11, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %199

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %169, %132
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = sub i64 8, %144
  %146 = trunc i64 %145 to i32
  %147 = call i32 @ffurl_read(%struct.TYPE_10__* %136, i8* %142, i32 %146)
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %133
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @AVERROR_EOF, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %133
  br label %170

155:                                              ; preds = %150
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %199

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = icmp eq i64 %164, 8
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load i32, i32* @EIO, align 4
  %168 = call i32 @AVERROR(i32 %167)
  store i32 %168, i32* %11, align 4
  br label %199

169:                                              ; preds = %159
  br label %133

170:                                              ; preds = %154
  br label %171

171:                                              ; preds = %187, %170
  %172 = load i32, i32* %12, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %171
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sub nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = call i64 @av_isspace(i8 signext %182)
  %184 = icmp ne i64 %183, 0
  br label %185

185:                                              ; preds = %174, %171
  %186 = phi i1 [ false, %171 ], [ %184, %174 ]
  br i1 %186, label %187, label %190

187:                                              ; preds = %185
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %12, align 4
  br label %171

190:                                              ; preds = %185
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  store i8 0, i8* %196, align 1
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  store i32 1, i32* %198, align 8
  store i32 0, i32* %4, align 4
  br label %203

199:                                              ; preds = %166, %158, %131, %121, %72
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %201 = call i32 @rtmp_http_close(%struct.TYPE_8__* %200)
  %202 = load i32, i32* %11, align 4
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %199, %190
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i32 @av_url_split(i32*, i32, i32*, i32, i32, i32, i64*, i32*, i32, i8*) #1

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i32, i64, i8*) #1

declare dso_local i32 @ffurl_alloc(%struct.TYPE_10__**, i8*, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @av_opt_set(i32, i8*, i8*, i32) #1

declare dso_local i32 @av_opt_set_bin(i32, i8*, i8*, i32, i32) #1

declare dso_local i64 @av_strdup(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ffurl_connect(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ffurl_read(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @av_isspace(i8 signext) #1

declare dso_local i32 @rtmp_http_close(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
