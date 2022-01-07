; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_osfp.c_pf_osfp_fingerprint.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_osfp.c_pf_osfp_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_osfp_enlist = type { i32 }
%struct.pf_pdesc = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.ip6_hdr* }
%struct.ip6_hdr = type { i32 }
%struct.tcphdr = type { i32 }
%struct.ip = type opaque

@PF_INET = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pf_osfp_enlist* @pf_osfp_fingerprint(%struct.pf_pdesc* %0, %struct.TYPE_4__* %1, i32 %2, %struct.tcphdr* %3) #0 {
  %5 = alloca %struct.pf_osfp_enlist*, align 8
  %6 = alloca %struct.pf_pdesc*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.ip*, align 8
  %11 = alloca %struct.ip6_hdr*, align 8
  %12 = alloca [60 x i8], align 16
  store %struct.pf_pdesc* %0, %struct.pf_pdesc** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.tcphdr* %3, %struct.tcphdr** %9, align 8
  %13 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %14 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PF_INET, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %20 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PF_INET6, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %18, %4
  %25 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %26 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IPPROTO_TCP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %32 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 2
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %24, %18
  store %struct.pf_osfp_enlist* null, %struct.pf_osfp_enlist** %5, align 8
  br label %73

37:                                               ; preds = %30
  %38 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %39 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PF_INET, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.ip6_hdr*, %struct.ip6_hdr** %45, align 8
  %47 = bitcast %struct.ip6_hdr* %46 to %struct.ip*
  store %struct.ip* %47, %struct.ip** %10, align 8
  store %struct.ip6_hdr* null, %struct.ip6_hdr** %11, align 8
  br label %52

48:                                               ; preds = %37
  store %struct.ip* null, %struct.ip** %10, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.ip6_hdr*, %struct.ip6_hdr** %50, align 8
  store %struct.ip6_hdr* %51, %struct.ip6_hdr** %11, align 8
  br label %52

52:                                               ; preds = %48, %43
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = getelementptr inbounds [60 x i8], [60 x i8]* %12, i64 0, i64 0
  %56 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %57 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 2
  %60 = load %struct.pf_pdesc*, %struct.pf_pdesc** %6, align 8
  %61 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @pf_pull_hdr(%struct.TYPE_4__* %53, i32 %54, i8* %55, i32 %59, i32* null, i32* null, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %52
  store %struct.pf_osfp_enlist* null, %struct.pf_osfp_enlist** %5, align 8
  br label %73

66:                                               ; preds = %52
  %67 = load %struct.ip*, %struct.ip** %10, align 8
  %68 = bitcast %struct.ip* %67 to %struct.ip6_hdr*
  %69 = load %struct.ip6_hdr*, %struct.ip6_hdr** %11, align 8
  %70 = getelementptr inbounds [60 x i8], [60 x i8]* %12, i64 0, i64 0
  %71 = bitcast i8* %70 to %struct.tcphdr*
  %72 = call %struct.pf_osfp_enlist* @pf_osfp_fingerprint_hdr(%struct.ip6_hdr* %68, %struct.ip6_hdr* %69, %struct.tcphdr* %71)
  store %struct.pf_osfp_enlist* %72, %struct.pf_osfp_enlist** %5, align 8
  br label %73

73:                                               ; preds = %66, %65, %36
  %74 = load %struct.pf_osfp_enlist*, %struct.pf_osfp_enlist** %5, align 8
  ret %struct.pf_osfp_enlist* %74
}

declare dso_local i32 @pf_pull_hdr(%struct.TYPE_4__*, i32, i8*, i32, i32*, i32*, i32) #1

declare dso_local %struct.pf_osfp_enlist* @pf_osfp_fingerprint_hdr(%struct.ip6_hdr*, %struct.ip6_hdr*, %struct.tcphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
