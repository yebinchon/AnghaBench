; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_srtp.c_ff_srtp_set_crypto.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_srtp.c_ff_srtp_set_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SRTPContext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"AES_CM_128_HMAC_SHA1_80\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"SRTP_AES128_CM_HMAC_SHA1_80\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"AES_CM_128_HMAC_SHA1_32\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SRTP_AES128_CM_HMAC_SHA1_32\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"SRTP Crypto suite %s not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Incorrect amount of SRTP params\0A\00", align 1
@AV_HMAC_SHA1 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_srtp_set_crypto(%struct.SRTPContext* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SRTPContext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [30 x i32], align 16
  store %struct.SRTPContext* %0, %struct.SRTPContext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %10 = call i32 @ff_srtp_free(%struct.SRTPContext* %9)
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %20 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %19, i32 0, i32 1
  store i32 10, i32* %20, align 4
  %21 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %22 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %21, i32 0, i32 0
  store i32 10, i32* %22, align 4
  br label %49

23:                                               ; preds = %14
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %29 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %28, i32 0, i32 1
  store i32 4, i32* %29, align 4
  %30 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %31 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %30, i32 0, i32 0
  store i32 4, i32* %31, align 4
  br label %48

32:                                               ; preds = %23
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %38 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %37, i32 0, i32 0
  store i32 4, i32* %38, align 4
  %39 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %40 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %39, i32 0, i32 1
  store i32 10, i32* %40, align 4
  br label %47

41:                                               ; preds = %32
  %42 = load i32, i32* @AV_LOG_WARNING, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %4, align 4
  br label %159

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %27
  br label %49

49:                                               ; preds = %48, %18
  %50 = getelementptr inbounds [30 x i32], [30 x i32]* %8, i64 0, i64 0
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @av_base64_decode(i32* %50, i8* %51, i32 120)
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 120
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @AV_LOG_WARNING, align 4
  %57 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = call i32 @AVERROR(i32 %58)
  store i32 %59, i32* %4, align 4
  br label %159

60:                                               ; preds = %49
  %61 = call i32 (...) @av_aes_alloc()
  %62 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %63 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @AV_HMAC_SHA1, align 4
  %65 = call i32 @av_hmac_alloc(i32 %64)
  %66 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %67 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 4
  %68 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %69 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %60
  %73 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %74 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72, %60
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %4, align 4
  br label %159

80:                                               ; preds = %72
  %81 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %82 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [30 x i32], [30 x i32]* %8, i64 0, i64 0
  %85 = call i32 @memcpy(i32 %83, i32* %84, i32 16)
  %86 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %87 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [30 x i32], [30 x i32]* %8, i64 0, i64 0
  %90 = getelementptr inbounds i32, i32* %89, i64 16
  %91 = call i32 @memcpy(i32 %88, i32* %90, i32 14)
  %92 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %93 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %96 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @av_aes_init(i32 %94, i32 %97, i32 128, i32 0)
  %99 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %100 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %103 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %106 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @derive_key(i32 %101, i32 %104, i32 0, i32 %107, i32 4)
  %109 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %110 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %113 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %116 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @derive_key(i32 %111, i32 %114, i32 2, i32 %117, i32 4)
  %119 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %120 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %123 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %126 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @derive_key(i32 %121, i32 %124, i32 1, i32 %127, i32 4)
  %129 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %130 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %133 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %136 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @derive_key(i32 %131, i32 %134, i32 3, i32 %137, i32 4)
  %139 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %140 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %143 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %146 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @derive_key(i32 %141, i32 %144, i32 5, i32 %147, i32 4)
  %149 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %150 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %153 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.SRTPContext*, %struct.SRTPContext** %5, align 8
  %156 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @derive_key(i32 %151, i32 %154, i32 4, i32 %157, i32 4)
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %80, %77, %55, %41
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @ff_srtp_free(%struct.SRTPContext*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_base64_decode(i32*, i8*, i32) #1

declare dso_local i32 @av_aes_alloc(...) #1

declare dso_local i32 @av_hmac_alloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @av_aes_init(i32, i32, i32, i32) #1

declare dso_local i32 @derive_key(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
