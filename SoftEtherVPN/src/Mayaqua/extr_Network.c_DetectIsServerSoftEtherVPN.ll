; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_DetectIsServerSoftEtherVPN.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_DetectIsServerSoftEtherVPN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"X-VPN\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Keep-Alive\00", align 1
@HTTP_KEEP_ALIVE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Accept-Language\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ja\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"User-Agent\00", align 1
@DEFAULT_USER_AGENT = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"Pragma\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"no-cache\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Cache-Control\00", align 1
@http_detect_server_startwith = common dso_local global i32 0, align 4
@http_detect_server_tag_future = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DetectIsServerSoftEtherVPN(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [1024 x i8], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %17 = load i32, i32* @MAX_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  store i32 32768, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = icmp eq %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %153

24:                                               ; preds = %1
  %25 = trunc i64 %18 to i32
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = call i32 @IPToStr(i8* %20, i32 %25, i32* %27)
  %29 = call i32* @NewHttpHeaderEx(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @NewHttpValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @AddHttpValue(i32* %30, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @NewHttpValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %20)
  %35 = call i32 @AddHttpValue(i32* %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i8*, i8** @HTTP_KEEP_ALIVE, align 8
  %38 = call i32 @NewHttpValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %37)
  %39 = call i32 @AddHttpValue(i32* %36, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @NewHttpValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %42 = call i32 @AddHttpValue(i32* %40, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @NewHttpValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %45 = call i32 @AddHttpValue(i32* %43, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i8*, i8** @DEFAULT_USER_AGENT, align 8
  %48 = call i32 @NewHttpValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %47)
  %49 = call i32 @AddHttpValue(i32* %46, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @NewHttpValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %52 = call i32 @AddHttpValue(i32* %50, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @NewHttpValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %55 = call i32 @AddHttpValue(i32* %53, i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call i8* @HttpHeaderToStr(i32* %56)
  store i8* %57, i8** %7, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @FreeHttpHeader(i32* %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @StrLen(i8* %62)
  %64 = call i32 @SendAll(%struct.TYPE_11__* %60, i8* %61, i32 %63, i32 1)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %24
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @Free(i8* %67)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %153

69:                                               ; preds = %24
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @Free(i8* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = call i32* @RecvHttpHeader(%struct.TYPE_11__* %72)
  store i32* %73, i32** %4, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %153

77:                                               ; preds = %69
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @GetContentLength(i32* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @FreeHttpHeader(i32* %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %8, align 4
  %86 = icmp sge i32 %85, 1048576
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %77
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %153

88:                                               ; preds = %84
  %89 = call %struct.TYPE_12__* (...) @NewBuf()
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %9, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i8* @Malloc(i32 %90)
  store i8* %91, i8** %10, align 8
  br label %92

92:                                               ; preds = %112, %88
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = call i32 @MIN(i32 %94, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  store i32 1, i32* %12, align 4
  br label %117

104:                                              ; preds = %93
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @Recv(%struct.TYPE_11__* %105, i8* %106, i32 %107, i32 1)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %117

112:                                              ; preds = %104
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @WriteBuf(%struct.TYPE_12__* %113, i8* %114, i32 %115)
  br label %92

117:                                              ; preds = %111, %103
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %119 = call i32 @SeekBuf(%struct.TYPE_12__* %118, i32 0, i32 0)
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @Free(i8* %120)
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %117
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %126 = call i32 @Zero(i8* %125, i32 1024)
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @MIN(i32 %133, i32 1023)
  %135 = call i32 @Copy(i8* %127, i32 %130, i32 %134)
  store i32 0, i32* %12, align 4
  %136 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %137 = load i32, i32* @http_detect_server_startwith, align 4
  %138 = call i64 @StartWith(i8* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %124
  store i32 1, i32* %12, align 4
  br label %148

141:                                              ; preds = %124
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %143 = load i32, i32* @http_detect_server_tag_future, align 4
  %144 = call i64 @InStr(i8* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i32 1, i32* %12, align 4
  br label %147

147:                                              ; preds = %146, %141
  br label %148

148:                                              ; preds = %147, %140
  br label %149

149:                                              ; preds = %148, %117
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %151 = call i32 @FreeBuf(%struct.TYPE_12__* %150)
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %153

153:                                              ; preds = %149, %87, %76, %66, %23
  %154 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IPToStr(i8*, i32, i32*) #2

declare dso_local i32* @NewHttpHeaderEx(i8*, i8*, i8*, i32) #2

declare dso_local i32 @AddHttpValue(i32*, i32) #2

declare dso_local i32 @NewHttpValue(i8*, i8*) #2

declare dso_local i8* @HttpHeaderToStr(i32*) #2

declare dso_local i32 @FreeHttpHeader(i32*) #2

declare dso_local i32 @SendAll(%struct.TYPE_11__*, i8*, i32, i32) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i32 @Free(i8*) #2

declare dso_local i32* @RecvHttpHeader(%struct.TYPE_11__*) #2

declare dso_local i32 @GetContentLength(i32*) #2

declare dso_local %struct.TYPE_12__* @NewBuf(...) #2

declare dso_local i8* @Malloc(i32) #2

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @Recv(%struct.TYPE_11__*, i8*, i32, i32) #2

declare dso_local i32 @WriteBuf(%struct.TYPE_12__*, i8*, i32) #2

declare dso_local i32 @SeekBuf(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @Zero(i8*, i32) #2

declare dso_local i32 @Copy(i8*, i32, i32) #2

declare dso_local i64 @StartWith(i8*, i32) #2

declare dso_local i64 @InStr(i8*, i32) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_12__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
