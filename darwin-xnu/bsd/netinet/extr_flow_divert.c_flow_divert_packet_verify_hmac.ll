; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_packet_verify_hmac.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_packet_verify_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_group = type { i32, i32* }

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@g_flow_divert_group_lck = common dso_local global i32 0, align 4
@g_flow_divert_groups = common dso_local global %struct.flow_divert_group** null, align 8
@g_active_group_count = common dso_local global i64 0, align 8
@ENOPROTOOPT = common dso_local global i32 0, align 4
@FLOW_DIVERT_TLV_HMAC = common dso_local global i32 0, align 4
@MBUF_WAITOK = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@nil_pcb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"HMAC in token does not match computed HMAC\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @flow_divert_packet_verify_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_packet_verify_hmac(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flow_divert_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.flow_divert_group* null, %struct.flow_divert_group** %7, align 8
  %14 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %21 = call i32 @lck_rw_lock_shared(i32* @g_flow_divert_group_lck)
  %22 = load %struct.flow_divert_group**, %struct.flow_divert_group*** @g_flow_divert_groups, align 8
  %23 = icmp ne %struct.flow_divert_group** %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load i64, i64* @g_active_group_count, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.flow_divert_group**, %struct.flow_divert_group*** @g_flow_divert_groups, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.flow_divert_group*, %struct.flow_divert_group** %28, i64 %29
  %31 = load %struct.flow_divert_group*, %struct.flow_divert_group** %30, align 8
  store %struct.flow_divert_group* %31, %struct.flow_divert_group** %7, align 8
  br label %32

32:                                               ; preds = %27, %24, %2
  %33 = load %struct.flow_divert_group*, %struct.flow_divert_group** %7, align 8
  %34 = icmp eq %struct.flow_divert_group* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 @lck_rw_done(i32* @g_flow_divert_group_lck)
  %37 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %98

38:                                               ; preds = %32
  %39 = load %struct.flow_divert_group*, %struct.flow_divert_group** %7, align 8
  %40 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %39, i32 0, i32 0
  %41 = call i32 @lck_rw_lock_shared(i32* %40)
  %42 = load %struct.flow_divert_group*, %struct.flow_divert_group** %7, align 8
  %43 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %47, i32* %6, align 4
  br label %92

48:                                               ; preds = %38
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @FLOW_DIVERT_TLV_HMAC, align 4
  %51 = call i32 @flow_divert_packet_find_tlv(i32 %49, i32 0, i32 %50, i32* %6, i32 0)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %92

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @FLOW_DIVERT_TLV_HMAC, align 4
  %59 = mul nuw i64 4, %15
  %60 = trunc i64 %59 to i32
  %61 = call i32 @flow_divert_packet_get_tlv(i32 %56, i32 %57, i32 %58, i32 %60, i32* %17, i32* null)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %92

65:                                               ; preds = %55
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @MBUF_WAITOK, align 4
  %69 = call i32 @mbuf_split(i32 %66, i32 %67, i32 %68, i32* %12)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %92

73:                                               ; preds = %65
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @mbuf_free(i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.flow_divert_group*, %struct.flow_divert_group** %7, align 8
  %78 = call i32 @flow_divert_packet_compute_hmac(i32 %76, %struct.flow_divert_group* %77, i32* %20)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %92

82:                                               ; preds = %73
  %83 = mul nuw i64 4, %15
  %84 = trunc i64 %83 to i32
  %85 = call i64 @memcmp(i32* %17, i32* %20, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @LOG_WARNING, align 4
  %89 = call i32 @FDLOG0(i32 %88, i32* @nil_pcb, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %6, align 4
  br label %92

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %87, %81, %72, %64, %54, %46
  %93 = load %struct.flow_divert_group*, %struct.flow_divert_group** %7, align 8
  %94 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %93, i32 0, i32 0
  %95 = call i32 @lck_rw_done(i32* %94)
  %96 = call i32 @lck_rw_done(i32* @g_flow_divert_group_lck)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %98

98:                                               ; preds = %92, %35
  %99 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #2

declare dso_local i32 @lck_rw_done(i32*) #2

declare dso_local i32 @flow_divert_packet_find_tlv(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @flow_divert_packet_get_tlv(i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @mbuf_split(i32, i32, i32, i32*) #2

declare dso_local i32 @mbuf_free(i32) #2

declare dso_local i32 @flow_divert_packet_compute_hmac(i32, %struct.flow_divert_group*, i32*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @FDLOG0(i32, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
