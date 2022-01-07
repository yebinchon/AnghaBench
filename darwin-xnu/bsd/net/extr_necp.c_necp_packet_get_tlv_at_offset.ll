; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_packet_get_tlv_at_offset.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_packet_get_tlv_at_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Got a bad TLV, length (%u) + offset (%d) < total length (%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i8*, i64*)* @necp_packet_get_tlv_at_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_packet_get_tlv_at_offset(i32 %0, i32 %1, i64 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %6, align 4
  br label %91

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = bitcast i64* %13 to i8*
  %27 = call i32 @mbuf_copydata(i32 %21, i32 %25, i64 8, i8* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %91

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @m_length2(i32 %33, i32* null)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = add i64 %38, 8
  %40 = load i64, i64* %13, align 8
  %41 = add i64 %39, %40
  %42 = icmp ult i64 %35, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %32
  %44 = load i32, i32* @LOG_ERR, align 4
  %45 = load i64, i64* %13, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 4
  %49 = add i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @NECPLOG(i32 %44, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %45, i32 %50, i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %6, align 4
  br label %91

54:                                               ; preds = %32
  %55 = load i64*, i64** %11, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i64, i64* %13, align 8
  %59 = load i64*, i64** %11, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %90

63:                                               ; preds = %60
  %64 = load i64, i64* %9, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %63
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %13, align 8
  br label %74

72:                                               ; preds = %66
  %73 = load i64, i64* %9, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i64 [ %71, %70 ], [ %73, %72 ]
  store i64 %75, i64* %15, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, 4
  %80 = add i64 %79, 8
  %81 = trunc i64 %80 to i32
  %82 = load i64, i64* %15, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = call i32 @mbuf_copydata(i32 %76, i32 %81, i64 %82, i8* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %6, align 4
  br label %91

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %63, %60
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %87, %43, %30, %18
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @mbuf_copydata(i32, i32, i64, i8*) #1

declare dso_local i64 @m_length2(i32, i32*) #1

declare dso_local i32 @NECPLOG(i32, i8*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
