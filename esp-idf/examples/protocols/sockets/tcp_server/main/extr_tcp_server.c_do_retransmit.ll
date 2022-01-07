; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/sockets/tcp_server/main/extr_tcp_server.c_do_retransmit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/sockets/tcp_server/main/extr_tcp_server.c_do_retransmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error occurred during receiving: errno %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Connection closed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Received %d bytes: %s\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Error occurred during sending: errno %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_retransmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_retransmit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %7

7:                                                ; preds = %58, %1
  %8 = load i32, i32* %2, align 4
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %10 = call i32 @recv(i32 %8, i8* %9, i32 127, i32 0)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i32, i32* @TAG, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @ESP_LOGE(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %57

17:                                               ; preds = %7
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 @ESP_LOGW(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %56

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i32, i32* @TAG, align 4
  %28 = load i32, i32* %3, align 4
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %30 = call i32 @ESP_LOGI(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %28, i8* %29)
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %51, %23
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @send(i32 %36, i8* %42, i32 %43, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load i32, i32* @TAG, align 4
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @ESP_LOGE(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %35
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %32

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55, %20
  br label %57

57:                                               ; preds = %56, %13
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %7, label %61

61:                                               ; preds = %58
  ret void
}

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i8*) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
