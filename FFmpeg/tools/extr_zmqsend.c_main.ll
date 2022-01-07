; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_zmqsend.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_zmqsend.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"tcp://localhost:5555\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"b:hi:\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Impossible to open input file '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Could not create ZMQ context: %s\0A\00", align 1
@ZMQ_REQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Could not create ZMQ socket: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Could not bind ZMQ responder to address '%s': %s\0A\00", align 1
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"Could not allocate a buffer for the source string\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Could not send message: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Could not initialize receiving message: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Could not receive message: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Could not allocate receiving message buffer\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32* null, i32** %16, align 8
  br label %18

18:                                               ; preds = %32, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %32 [
    i32 98, label %25
    i32 104, label %27
    i32 105, label %29
    i32 63, label %31
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** %14, align 8
  br label %32

27:                                               ; preds = %23
  %28 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %168

29:                                               ; preds = %23
  %30 = load i8*, i8** @optarg, align 8
  store i8* %30, i8** %15, align 8
  br label %32

31:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %168

32:                                               ; preds = %23, %29, %25
  br label %18

33:                                               ; preds = %18
  %34 = load i8*, i8** %15, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i8*, i8** %15, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36, %33
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  %41 = load i32*, i32** @stdin, align 8
  store i32* %41, i32** %16, align 8
  br label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %15, align 8
  %44 = call i32* @fopen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %44, i32** %16, align 8
  br label %45

45:                                               ; preds = %42, %40
  %46 = load i32*, i32** %16, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load i8*, i8** %15, align 8
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %50, i32 %52)
  store i32 1, i32* %3, align 4
  br label %168

54:                                               ; preds = %45
  %55 = call i8* (...) @zmq_ctx_new()
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @zmq_strerror(i32 %60)
  %62 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  store i32 1, i32* %3, align 4
  br label %168

63:                                               ; preds = %54
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* @ZMQ_REQ, align 4
  %66 = call i8* @zmq_socket(i8* %64, i32 %65)
  store i8* %66, i8** %13, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = load i32, i32* @errno, align 4
  %72 = call i32 @zmq_strerror(i32 %71)
  %73 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  store i32 1, i32* %11, align 4
  br label %162

74:                                               ; preds = %63
  %75 = load i8*, i8** %13, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @zmq_connect(i8* %75, i8* %76)
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = load i8*, i8** %14, align 8
  %82 = load i32, i32* @errno, align 4
  %83 = call i32 @zmq_strerror(i32 %82)
  %84 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %80, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8* %81, i32 %83)
  store i32 1, i32* %11, align 4
  br label %162

85:                                               ; preds = %74
  %86 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %87 = call i32 @av_bprint_init(i32* %6, i32 1, i32 %86)
  br label %88

88:                                               ; preds = %93, %85
  %89 = load i32*, i32** %16, align 8
  %90 = call i32 @fgetc(i32* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @EOF, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @av_bprint_chars(i32* %6, i32 %94, i32 1)
  br label %88

96:                                               ; preds = %88
  %97 = call i32 @av_bprint_chars(i32* %6, i32 0, i32 1)
  %98 = call i32 @av_bprint_is_complete(i32* %6)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @AV_LOG_ERROR, align 4
  %102 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %101, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %103 = call i32 @av_bprint_finalize(i32* %6, i8** null)
  store i32 1, i32* %11, align 4
  br label %162

104:                                              ; preds = %96
  %105 = call i32 @av_bprint_finalize(i32* %6, i8** %7)
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @strlen(i8* %108)
  %110 = call i32 @zmq_send(i8* %106, i8* %107, i32 %109, i32 0)
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = load i32, i32* @AV_LOG_ERROR, align 4
  %114 = load i32, i32* @errno, align 4
  %115 = call i32 @zmq_strerror(i32 %114)
  %116 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %115)
  store i32 1, i32* %11, align 4
  br label %162

117:                                              ; preds = %104
  %118 = call i32 @zmq_msg_init(i32* %17)
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* @AV_LOG_ERROR, align 4
  %122 = load i32, i32* @errno, align 4
  %123 = call i32 @zmq_strerror(i32 %122)
  %124 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %121, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %123)
  store i32 1, i32* %11, align 4
  br label %162

125:                                              ; preds = %117
  %126 = load i8*, i8** %13, align 8
  %127 = call i32 @zmq_msg_recv(i32* %17, i8* %126, i32 0)
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i32, i32* @AV_LOG_ERROR, align 4
  %131 = load i32, i32* @errno, align 4
  %132 = call i32 @zmq_strerror(i32 %131)
  %133 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %132)
  %134 = call i32 @zmq_msg_close(i32* %17)
  store i32 1, i32* %11, align 4
  br label %162

135:                                              ; preds = %125
  %136 = call i32 @zmq_msg_size(i32* %17)
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i8* @av_malloc(i32 %138)
  store i8* %139, i8** %8, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* @AV_LOG_ERROR, align 4
  %144 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %143, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  %145 = call i32 @zmq_msg_close(i32* %17)
  store i32 1, i32* %11, align 4
  br label %162

146:                                              ; preds = %135
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @zmq_msg_data(i32* %17)
  %149 = load i32, i32* %10, align 4
  %150 = sub nsw i32 %149, 1
  %151 = call i32 @memcpy(i8* %147, i32 %148, i32 %150)
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8 0, i8* %156, align 1
  %157 = load i8*, i8** %8, align 8
  %158 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %157)
  %159 = call i32 @zmq_msg_close(i32* %17)
  %160 = load i8*, i8** %8, align 8
  %161 = call i32 @av_free(i8* %160)
  br label %162

162:                                              ; preds = %146, %142, %129, %120, %112, %100, %79, %69
  %163 = load i8*, i8** %13, align 8
  %164 = call i32 @zmq_close(i8* %163)
  %165 = load i8*, i8** %12, align 8
  %166 = call i32 @zmq_ctx_destroy(i8* %165)
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %162, %58, %48, %31, %27
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @zmq_ctx_new(...) #1

declare dso_local i32 @zmq_strerror(i32) #1

declare dso_local i8* @zmq_socket(i8*, i32) #1

declare dso_local i32 @zmq_connect(i8*, i8*) #1

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @av_bprint_chars(i32*, i32, i32) #1

declare dso_local i32 @av_bprint_is_complete(i32*) #1

declare dso_local i32 @av_bprint_finalize(i32*, i8**) #1

declare dso_local i32 @zmq_send(i8*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @zmq_msg_init(i32*) #1

declare dso_local i32 @zmq_msg_recv(i32*, i8*, i32) #1

declare dso_local i32 @zmq_msg_close(i32*) #1

declare dso_local i32 @zmq_msg_size(i32*) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @zmq_msg_data(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @zmq_close(i8*) #1

declare dso_local i32 @zmq_ctx_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
