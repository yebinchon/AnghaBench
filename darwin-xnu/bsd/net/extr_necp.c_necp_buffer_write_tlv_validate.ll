; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_buffer_write_tlv_validate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_buffer_write_tlv_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot write TLV in buffer (invalid cursor)\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Cannot write TLV in buffer (TLV length %u, buffer length %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i32*, i64)* @necp_buffer_write_tlv_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_buffer_write_tlv_validate(i32* %0, i32 %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp ult i32* %13, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %5
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = ptrtoint i32* %17 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  %23 = load i64, i64* %11, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16, %5
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = call i32 @NECPLOG0(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %52

28:                                               ; preds = %16
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = getelementptr inbounds i32, i32* %30, i64 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ule i32* %34, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %28
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = load i64, i64* %11, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %37, %28
  %47 = load i32, i32* @LOG_ERR, align 4
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @NECPLOG(i32 %47, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %48, i64 %49)
  store i32 0, i32* %6, align 4
  br label %52

51:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %46, %25
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local i32 @NECPLOG(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
