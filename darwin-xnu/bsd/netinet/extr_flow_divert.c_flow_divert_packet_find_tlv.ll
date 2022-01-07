; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_packet_find_tlv.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_packet_find_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@FLOW_DIVERT_TLV_NIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32*, i32)* @flow_divert_packet_find_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_packet_find_tlv(i32 %0, i32 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32*, i32** %10, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %56, %5
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = load i64, i64* %12, align 8
  %25 = call i32 @mbuf_copydata(i32 %23, i64 %24, i32 8, i64* %15)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOENT, align 4
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  store i32 -1, i32* %6, align 4
  br label %63

31:                                               ; preds = %22
  br label %34

32:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  %33 = load i64, i64* @FLOW_DIVERT_TLV_NIL, align 8
  store i64 %33, i64* %15, align 8
  br label %34

34:                                               ; preds = %32, %31
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, 8
  store i64 %40, i64* %12, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @mbuf_copydata(i32 %41, i64 %42, i32 8, i64* %14)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  store i32 -1, i32* %6, align 4
  br label %63

49:                                               ; preds = %38
  %50 = load i64, i64* %14, align 8
  %51 = call i64 @ntohl(i64 %50)
  %52 = add i64 8, %51
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %12, align 8
  br label %55

55:                                               ; preds = %49, %34
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %19, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %12, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %46, %28
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @mbuf_copydata(i32, i64, i32, i64*) #1

declare dso_local i64 @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
