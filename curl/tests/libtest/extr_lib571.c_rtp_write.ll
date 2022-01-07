; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib571.c_rtp_write.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib571.c_rtp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"RTP: message size %d, channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"RTP embedded size (%d) does not match the write size (%d).\0A\00", align 1
@RTP_DATA_SIZE = common dso_local global i32 0, align 4
@RTP_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"RTP PAYLOAD CORRUPTED [%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"RTP PAYLOAD END CORRUPTED (%d), [%s]\0A\00", align 1
@rtp_packet_count = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"packet count is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @rtp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtp_write(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @RTP_PKT_CHANNEL(i8* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @RTP_PKT_LENGTH(i8* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %4
  %27 = phi i1 [ false, %4 ], [ %25, %23 ]
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %14, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = mul i64 %32, %33
  %35 = call i32 @curlx_uztosi(i64 %34)
  %36 = sub nsw i32 %35, 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %26
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i64, i64* %14, align 8
  store i64 %47, i64* %5, align 8
  br label %114

48:                                               ; preds = %26
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  store i8* %50, i8** %10, align 8
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %101, %48
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %105

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* @RTP_DATA_SIZE, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %55
  %62 = load i32, i32* @RTP_DATA, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i32, i32* @RTP_DATA_SIZE, align 4
  %68 = call i64 @memcmp(i32 %62, i8* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = load i64, i64* %14, align 8
  store i64 %76, i64* %5, align 8
  br label %114

77:                                               ; preds = %61
  br label %100

78:                                               ; preds = %55
  %79 = load i32, i32* @RTP_DATA, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %15, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i64 @memcmp(i32 %79, i8* %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %78
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %15, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %92, i8* %96)
  %98 = load i64, i64* %14, align 8
  store i64 %98, i64* %5, align 8
  br label %114

99:                                               ; preds = %78
  br label %100

100:                                              ; preds = %99, %77
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* @RTP_DATA_SIZE, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %15, align 4
  br label %51

105:                                              ; preds = %51
  %106 = load i32, i32* @rtp_packet_count, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @rtp_packet_count, align 4
  %108 = load i32, i32* @stderr, align 4
  %109 = load i32, i32* @rtp_packet_count, align 4
  %110 = call i32 @fprintf(i32 %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* %8, align 8
  %113 = mul i64 %111, %112
  store i64 %113, i64* %5, align 8
  br label %114

114:                                              ; preds = %105, %89, %70, %43
  %115 = load i64, i64* %5, align 8
  ret i64 %115
}

declare dso_local i32 @RTP_PKT_CHANNEL(i8*) #1

declare dso_local i32 @RTP_PKT_LENGTH(i8*) #1

declare dso_local i32 @curlx_uztosi(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
