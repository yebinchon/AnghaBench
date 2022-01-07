; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_packet_mangler.c_chksm_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_packet_mangler.c_chksm_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i8* }
%struct.ip = type { i32, i32, i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @chksm_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chksm_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ip*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @mbuf_data(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.ip*
  store %struct.ip* %13, %struct.ip** %8, align 8
  %14 = load %struct.ip*, %struct.ip** %8, align 8
  %15 = getelementptr inbounds %struct.ip, %struct.ip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %78

19:                                               ; preds = %1
  %20 = load %struct.ip*, %struct.ip** %8, align 8
  %21 = getelementptr inbounds %struct.ip, %struct.ip* %20, i32 0, i32 4
  store i8* null, i8** %21, align 8
  %22 = load i32, i32* %2, align 4
  %23 = load %struct.ip*, %struct.ip** %8, align 8
  %24 = getelementptr inbounds %struct.ip, %struct.ip* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 2
  %27 = call i64 @mbuf_inet_cksum(i32 %22, i32 0, i32 0, i32 %26, i8** %3)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.ip*, %struct.ip** %8, align 8
  %33 = getelementptr inbounds %struct.ip, %struct.ip* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %30, %19
  %35 = load %struct.ip*, %struct.ip** %8, align 8
  %36 = getelementptr inbounds %struct.ip, %struct.ip* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %74 [
    i32 129, label %38
    i32 128, label %71
    i32 131, label %72
    i32 130, label %73
  ]

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.ip*, %struct.ip** %8, align 8
  %41 = getelementptr inbounds %struct.ip, %struct.ip* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %39, i64 %44
  %46 = bitcast i8* %45 to %struct.tcphdr*
  store %struct.tcphdr* %46, %struct.tcphdr** %5, align 8
  %47 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %48 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %47, i32 0, i32 0
  store i8* null, i8** %48, align 8
  %49 = load i32, i32* %2, align 4
  %50 = load %struct.ip*, %struct.ip** %8, align 8
  %51 = getelementptr inbounds %struct.ip, %struct.ip* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 2
  %54 = load %struct.ip*, %struct.ip** %8, align 8
  %55 = getelementptr inbounds %struct.ip, %struct.ip* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ntohs(i32 %56)
  %58 = load %struct.ip*, %struct.ip** %8, align 8
  %59 = getelementptr inbounds %struct.ip, %struct.ip* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 2
  %62 = sub nsw i32 %57, %61
  %63 = call i64 @mbuf_inet_cksum(i32 %49, i32 129, i32 %53, i32 %62, i8** %4)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %38
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %69 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %38
  br label %75

71:                                               ; preds = %34
  br label %75

72:                                               ; preds = %34
  br label %75

73:                                               ; preds = %34
  br label %75

74:                                               ; preds = %34
  br label %75

75:                                               ; preds = %74, %73, %72, %71, %70
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @mbuf_clear_csum_performed(i32 %76)
  br label %78

78:                                               ; preds = %75, %18
  ret void
}

declare dso_local i64 @mbuf_data(i32) #1

declare dso_local i64 @mbuf_inet_cksum(i32, i32, i32, i32, i8**) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @mbuf_clear_csum_performed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
