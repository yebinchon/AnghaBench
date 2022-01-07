; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_printf_mbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bridge.c_printf_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [95 x i8] c"%s0x%llx type: %u flags: 0x%x len: %u data: 0x%llx maxlen: %u datastart: 0x%llx next: 0x%llx%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MBUF_PKTHDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s<NULL>%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printf_mbuf(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %66

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
  %18 = call i64 @VM_KERNEL_ADDRPERM(i64 %17)
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @mbuf_type(i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @mbuf_flags(i64 %22)
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @mbuf_len(i64 %24)
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @mbuf_data(i64 %27)
  %29 = call i64 @VM_KERNEL_ADDRPERM(i64 %28)
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @mbuf_maxlen(i64 %31)
  %33 = trunc i64 %32 to i32
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @mbuf_datastart(i64 %34)
  %36 = call i64 @VM_KERNEL_ADDRPERM(i64 %35)
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @mbuf_next(i64 %38)
  %40 = call i64 @VM_KERNEL_ADDRPERM(i64 %39)
  %41 = trunc i64 %40 to i32
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %15
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @mbuf_flags(i64 %45)
  %47 = load i32, i32* @MBUF_PKTHDR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %15
  br label %53

51:                                               ; preds = %44
  %52 = load i8*, i8** %6, align 8
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %50 ], [ %52, %51 ]
  %55 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19, i32 %21, i32 %23, i32 %26, i32 %30, i32 %33, i32 %37, i32 %41, i8* %54)
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @mbuf_flags(i64 %56)
  %58 = load i32, i32* @MBUF_PKTHDR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i64, i64* %4, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @printf_mbuf_pkthdr(i64 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %61, %53
  br label %70

66:                                               ; preds = %3
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %66, %65
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(i64) #1

declare dso_local i32 @mbuf_type(i64) #1

declare dso_local i32 @mbuf_flags(i64) #1

declare dso_local i64 @mbuf_len(i64) #1

declare dso_local i64 @mbuf_data(i64) #1

declare dso_local i64 @mbuf_maxlen(i64) #1

declare dso_local i64 @mbuf_datastart(i64) #1

declare dso_local i64 @mbuf_next(i64) #1

declare dso_local i32 @printf_mbuf_pkthdr(i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
