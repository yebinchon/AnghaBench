; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_srtp.c_test_encrypt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/tests/extr_srtp.c_test_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SRTPContext = type { i32 }

@RTP_MAX_PACKET_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Decrypted content matches input\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Decrypted content doesn't match input\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Decryption failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i8*)* @test_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_encrypt(i32* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.SRTPContext, align 4
  %10 = alloca %struct.SRTPContext, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = bitcast %struct.SRTPContext* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = bitcast %struct.SRTPContext* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load i32, i32* @RTP_MAX_PACKET_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @ff_srtp_set_crypto(%struct.SRTPContext* %9, i8* %20, i8* %21)
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @ff_srtp_set_crypto(%struct.SRTPContext* %10, i8* %23, i8* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = trunc i64 %17 to i32
  %29 = call i32 @ff_srtp_encrypt(%struct.SRTPContext* %9, i32* %26, i32 %27, i8* %19, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = call i32 @ff_srtp_decrypt(%struct.SRTPContext* %10, i8* %19, i32* %11)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @memcmp(i8* %19, i32* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %45

43:                                               ; preds = %36, %32
  %44 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %41
  br label %48

46:                                               ; preds = %4
  %47 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %45
  %49 = call i32 @ff_srtp_free(%struct.SRTPContext* %9)
  %50 = call i32 @ff_srtp_free(%struct.SRTPContext* %10)
  %51 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ff_srtp_set_crypto(%struct.SRTPContext*, i8*, i8*) #3

declare dso_local i32 @ff_srtp_encrypt(%struct.SRTPContext*, i32*, i32, i8*, i32) #3

declare dso_local i32 @ff_srtp_decrypt(%struct.SRTPContext*, i8*, i32*) #3

declare dso_local i32 @memcmp(i8*, i32*, i32) #3

declare dso_local i32 @printf(i8*) #3

declare dso_local i32 @ff_srtp_free(%struct.SRTPContext*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
