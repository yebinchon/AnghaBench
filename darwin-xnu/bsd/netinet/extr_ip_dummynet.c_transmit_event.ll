; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_transmit_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_transmit_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_pipe = type { %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }
%struct.dn_pkt_tag = type { i64 }

@dn_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@serialize = common dso_local global i64 0, align 8
@curr_time = common dso_local global i64 0, align 8
@extract_heap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_pipe*, %struct.mbuf**, %struct.mbuf**)* @transmit_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_event(%struct.dn_pipe* %0, %struct.mbuf** %1, %struct.mbuf** %2) #0 {
  %4 = alloca %struct.dn_pipe*, align 8
  %5 = alloca %struct.mbuf**, align 8
  %6 = alloca %struct.mbuf**, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.dn_pkt_tag*, align 8
  %9 = alloca i64, align 8
  store %struct.dn_pipe* %0, %struct.dn_pipe** %4, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %5, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %6, align 8
  store %struct.dn_pkt_tag* null, %struct.dn_pkt_tag** %8, align 8
  %10 = load i32, i32* @dn_mutex, align 4
  %11 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %12 = call i32 @LCK_MTX_ASSERT(i32 %10, i32 %11)
  %13 = load i64, i64* @serialize, align 8
  %14 = icmp sge i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i64, i64* @serialize, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %52, %19
  %21 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %22 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %21, i32 0, i32 0
  %23 = load %struct.mbuf*, %struct.mbuf** %22, align 8
  store %struct.mbuf* %23, %struct.mbuf** %7, align 8
  %24 = icmp ne %struct.mbuf* %23, null
  br i1 %24, label %25, label %55

25:                                               ; preds = %20
  %26 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %27 = call %struct.dn_pkt_tag* @dn_tag_get(%struct.mbuf* %26)
  store %struct.dn_pkt_tag* %27, %struct.dn_pkt_tag** %8, align 8
  %28 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %8, align 8
  %29 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @curr_time, align 8
  %32 = call i64 @DN_KEY_LEQ(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %55

35:                                               ; preds = %25
  %36 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 0
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  %39 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %40 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %39, i32 0, i32 0
  store %struct.mbuf* %38, %struct.mbuf** %40, align 8
  %41 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %41, align 8
  %43 = icmp ne %struct.mbuf* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %46 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %46, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 0
  store %struct.mbuf* %45, %struct.mbuf** %48, align 8
  br label %52

49:                                               ; preds = %35
  %50 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %51 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* %50, %struct.mbuf** %51, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %54 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %53, %struct.mbuf** %54, align 8
  br label %20

55:                                               ; preds = %34, %20
  %56 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %56, align 8
  %58 = icmp ne %struct.mbuf* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %60, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %3
  %65 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %8, align 8
  %66 = icmp eq %struct.dn_pkt_tag* %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %8, align 8
  %69 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @curr_time, align 8
  %72 = call i64 @DN_KEY_LEQ(i64 %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67, %64
  %75 = load i64, i64* @curr_time, align 8
  %76 = add nsw i64 %75, 1
  br label %81

77:                                               ; preds = %67
  %78 = load %struct.dn_pkt_tag*, %struct.dn_pkt_tag** %8, align 8
  %79 = getelementptr inbounds %struct.dn_pkt_tag, %struct.dn_pkt_tag* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  br label %81

81:                                               ; preds = %77, %74
  %82 = phi i64 [ %76, %74 ], [ %80, %77 ]
  store i64 %82, i64* %9, align 8
  %83 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %84 = getelementptr inbounds %struct.dn_pipe, %struct.dn_pipe* %83, i32 0, i32 0
  %85 = load %struct.mbuf*, %struct.mbuf** %84, align 8
  store %struct.mbuf* %85, %struct.mbuf** %7, align 8
  %86 = icmp ne %struct.mbuf* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %89 = call %struct.dn_pkt_tag* @dn_tag_get(%struct.mbuf* %88)
  store %struct.dn_pkt_tag* %89, %struct.dn_pkt_tag** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.dn_pipe*, %struct.dn_pipe** %4, align 8
  %92 = call i32 @heap_insert(i32* @extract_heap, i64 %90, %struct.dn_pipe* %91)
  br label %93

93:                                               ; preds = %87, %81
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.dn_pkt_tag* @dn_tag_get(%struct.mbuf*) #1

declare dso_local i64 @DN_KEY_LEQ(i64, i64) #1

declare dso_local i32 @heap_insert(i32*, i64, %struct.dn_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
