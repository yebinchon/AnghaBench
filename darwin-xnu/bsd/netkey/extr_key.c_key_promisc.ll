; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_promisc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mbuf = type { i32 }
%struct.sadb_msghdr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.keycb = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"key_promisc: NULL pointer is passed.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KEY_SENDUP_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.mbuf*, %struct.sadb_msghdr*)* @key_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_promisc(%struct.socket* %0, %struct.mbuf* %1, %struct.sadb_msghdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.sadb_msghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.keycb*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.sadb_msghdr* %2, %struct.sadb_msghdr** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = icmp eq %struct.socket* %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %14 = icmp eq %struct.mbuf* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %17 = icmp eq %struct.sadb_msghdr* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %20 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp eq %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %15, %12, %3
  %24 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %18
  %26 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %27 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @PFKEY_UNUNIT64(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 4
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32 @key_senderror(%struct.socket* %36, %struct.mbuf* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %100

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %92

44:                                               ; preds = %40
  %45 = load %struct.socket*, %struct.socket** %5, align 8
  %46 = call i32 @socket_lock(%struct.socket* %45, i32 1)
  %47 = load %struct.socket*, %struct.socket** %5, align 8
  %48 = call i64 @sotorawcb(%struct.socket* %47)
  %49 = inttoptr i64 %48 to %struct.keycb*
  store %struct.keycb* %49, %struct.keycb** %9, align 8
  %50 = icmp eq %struct.keycb* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.socket*, %struct.socket** %5, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = load i32, i32* @EINVAL, align 4
  %55 = call i32 @key_senderror(%struct.socket* %52, %struct.mbuf* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %100

56:                                               ; preds = %44
  %57 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %58 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %62 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %74 [
    i32 0, label %66
    i32 1, label %66
  ]

66:                                               ; preds = %56, %56
  %67 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %68 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.keycb*, %struct.keycb** %9, align 8
  %73 = getelementptr inbounds %struct.keycb, %struct.keycb* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %81

74:                                               ; preds = %56
  %75 = load %struct.socket*, %struct.socket** %5, align 8
  %76 = call i32 @socket_unlock(%struct.socket* %75, i32 1)
  %77 = load %struct.socket*, %struct.socket** %5, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %79 = load i32, i32* @EINVAL, align 4
  %80 = call i32 @key_senderror(%struct.socket* %77, %struct.mbuf* %78, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %100

81:                                               ; preds = %66
  %82 = load %struct.socket*, %struct.socket** %5, align 8
  %83 = call i32 @socket_unlock(%struct.socket* %82, i32 1)
  %84 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %85 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load %struct.socket*, %struct.socket** %5, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %90 = load i32, i32* @KEY_SENDUP_ALL, align 4
  %91 = call i32 @key_sendup_mbuf(%struct.socket* %88, %struct.mbuf* %89, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %100

92:                                               ; preds = %40
  %93 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %94 = call i32 @PFKEY_ALIGN8(i32 4)
  %95 = call i32 @m_adj(%struct.mbuf* %93, i32 %94)
  %96 = load %struct.socket*, %struct.socket** %5, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %98 = load i32, i32* @KEY_SENDUP_ALL, align 4
  %99 = call i32 @key_sendup_mbuf(%struct.socket* %96, %struct.mbuf* %97, i32 %98)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %92, %81, %74, %51, %35
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @PFKEY_UNUNIT64(i32) #1

declare dso_local i32 @key_senderror(%struct.socket*, %struct.mbuf*, i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i64 @sotorawcb(%struct.socket*) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @key_sendup_mbuf(%struct.socket*, %struct.mbuf*, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @PFKEY_ALIGN8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
