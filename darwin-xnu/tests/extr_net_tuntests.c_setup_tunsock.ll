; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_net_tuntests.c_setup_tunsock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_net_tuntests.c_setup_tunsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }
%struct.in_addr = type { i8* }

@g_tunsock = common dso_local global i32 0, align 4
@cleanup_tunsock = common dso_local global i32 0, align 4
@IFXNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Created interface %s\00", align 1
@g_addr1 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@g_addr2 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@g_is_ipsec_test = common dso_local global i64 0, align 8
@SADB_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_tunsock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_tunsock() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.in_addr, align 8
  %5 = call i32 @create_tunsock(i32 1, i32 0, i32 1)
  store i32 %5, i32* @g_tunsock, align 4
  %6 = call i32 @T_ASSERT_GE(i32 %5, i32 0, i32* null)
  %7 = load i32, i32* @cleanup_tunsock, align 4
  %8 = call i32 @T_ATEND(i32 %7)
  %9 = load i32, i32* @IFXNAMSIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  %13 = load i32, i32* @g_tunsock, align 4
  %14 = call i32 @tunsock_get_ifname(i32 %13, i8* %12)
  %15 = call i32 @T_LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %12)
  %16 = call i64 (...) @getpid()
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65535
  %19 = shl i32 %18, 8
  %20 = or i32 167772160, %19
  %21 = or i32 %20, 160
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i8* @htonl(i32 %22)
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_addr1, i32 0, i32 0), align 8
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i8* @htonl(i32 %25)
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_addr2, i32 0, i32 0), align 8
  %27 = call i8* @htonl(i32 -1)
  %28 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = call i32 @ifnet_add_addr4(i8* %12, %struct.TYPE_7__* @g_addr1, %struct.in_addr* %4, %struct.TYPE_7__* @g_addr2)
  %30 = load i64, i64* @g_is_ipsec_test, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %0
  %33 = load i32, i32* @SADB_ADD, align 4
  %34 = call i32 @create_sa(i8* %12, i32 %33, i32 12345, %struct.TYPE_7__* @g_addr1, %struct.TYPE_7__* @g_addr2)
  %35 = load i32, i32* @SADB_ADD, align 4
  %36 = call i32 @create_sa(i8* %12, i32 %35, i32 12346, %struct.TYPE_7__* @g_addr2, %struct.TYPE_7__* @g_addr1)
  br label %37

37:                                               ; preds = %32, %0
  %38 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %38)
  ret void
}

declare dso_local i32 @T_ASSERT_GE(i32, i32, i32*) #1

declare dso_local i32 @create_tunsock(i32, i32, i32) #1

declare dso_local i32 @T_ATEND(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @tunsock_get_ifname(i32, i8*) #1

declare dso_local i32 @T_LOG(i8*, i8*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @ifnet_add_addr4(i8*, %struct.TYPE_7__*, %struct.in_addr*, %struct.TYPE_7__*) #1

declare dso_local i32 @create_sa(i8*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
