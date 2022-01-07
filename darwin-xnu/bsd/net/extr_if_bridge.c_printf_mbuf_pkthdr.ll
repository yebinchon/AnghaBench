; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_printf_mbuf_pkthdr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_printf_mbuf_pkthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [60 x i8] c"%spktlen: %u rcvif: 0x%llx header: 0x%llx nextpkt: 0x%llx%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s<NULL>%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printf_mbuf_pkthdr(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %3
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i8*, i8** %5, align 8
  br label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i8* [ %13, %12 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %14 ]
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @mbuf_pkthdr_len(i64 %17)
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @mbuf_pkthdr_rcvif(i64 %20)
  %22 = call i64 @VM_KERNEL_ADDRPERM(i32 %21)
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @mbuf_pkthdr_header(i64 %24)
  %26 = call i64 @VM_KERNEL_ADDRPERM(i32 %25)
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @mbuf_nextpkt(i64 %28)
  %30 = call i64 @VM_KERNEL_ADDRPERM(i32 %29)
  %31 = trunc i64 %30 to i32
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %15
  %35 = load i8*, i8** %6, align 8
  br label %37

36:                                               ; preds = %15
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i8* [ %35, %34 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %36 ]
  %39 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19, i32 %23, i32 %27, i32 %31, i8* %38)
  br label %44

40:                                               ; preds = %3
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %41, i8* %42)
  br label %44

44:                                               ; preds = %40, %37
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @mbuf_pkthdr_len(i64) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(i32) #1

declare dso_local i32 @mbuf_pkthdr_rcvif(i64) #1

declare dso_local i32 @mbuf_pkthdr_header(i64) #1

declare dso_local i32 @mbuf_nextpkt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
