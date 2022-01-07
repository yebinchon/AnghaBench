; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_gpio.c_prompt_to_continue.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_gpio.c_prompt_to_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"%s , please press \22Enter\22 to go on!\0A\00", align 1
@OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @prompt_to_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prompt_to_continue(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [5 x i8], align 1
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = bitcast [5 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %6, i8 0, i64 5, i1 false)
  br label %7

7:                                                ; preds = %19, %1
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %9 = call i64 @strlen(i8* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %18, %11
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %14 = bitcast i8* %13 to i32*
  %15 = call i64 @uart_rx_one_char(i32* %14)
  %16 = load i64, i64* @OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %12

19:                                               ; preds = %12
  %20 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %21 = bitcast i8* %20 to i32*
  %22 = call i32 @UartRxString(i32* %21, i32 4)
  br label %7

23:                                               ; preds = %7
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @uart_rx_one_char(i32*) #1

declare dso_local i32 @UartRxString(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
