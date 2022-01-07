; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_spdget.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_spdget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mbuf = type { i32 }
%struct.sadb_msghdr = type { i32*, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32 }
%struct.secpolicy = type { i32 }
%struct.sadb_x_policy = type { i32 }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"key_spdget: NULL pointer is passed.\0A\00", align 1
@SADB_X_EXT_POLICY = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"key_spdget: invalid message is passed.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"key_spdget: no SP found id:%u.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@SADB_X_SPDGET = common dso_local global i32 0, align 4
@KEY_SENDUP_ONE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.mbuf*, %struct.sadb_msghdr*)* @key_spdget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_spdget(%struct.socket* %0, %struct.mbuf* %1, %struct.sadb_msghdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.sadb_msghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.secpolicy*, align 8
  %10 = alloca %struct.mbuf*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.sadb_msghdr* %2, %struct.sadb_msghdr** %7, align 8
  %11 = load i32, i32* @sadb_mutex, align 4
  %12 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %13 = call i32 @LCK_MTX_ASSERT(i32 %11, i32 %12)
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = icmp eq %struct.socket* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %3
  %17 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %18 = icmp eq %struct.mbuf* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %21 = icmp eq %struct.sadb_msghdr* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %24 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp eq %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %19, %16, %3
  %28 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %31 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %30, i32 0, i32 2
  %32 = load i32**, i32*** %31, align 8
  %33 = load i64, i64* @SADB_X_EXT_POLICY, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %29
  %38 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %39 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @SADB_X_EXT_POLICY, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 4
  br i1 %45, label %46, label %53

46:                                               ; preds = %37, %29
  %47 = load i32, i32* @LOG_DEBUG, align 4
  %48 = call i32 @ipseclog(i32 ptrtoint ([40 x i8]* @.str.1 to i32))
  %49 = load %struct.socket*, %struct.socket** %5, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %51 = load i32, i32* @EINVAL, align 4
  %52 = call i32 @key_senderror(%struct.socket* %49, %struct.mbuf* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %104

53:                                               ; preds = %37
  %54 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %55 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = load i64, i64* @SADB_X_EXT_POLICY, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = bitcast i8* %60 to %struct.sadb_x_policy*
  %62 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @sadb_mutex, align 4
  %65 = call i32 @lck_mtx_lock(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call %struct.secpolicy* @__key_getspbyid(i32 %66)
  store %struct.secpolicy* %67, %struct.secpolicy** %9, align 8
  %68 = icmp eq %struct.secpolicy* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %53
  %70 = load i32, i32* @LOG_DEBUG, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ipseclog(i32 %71)
  %73 = load i32, i32* @sadb_mutex, align 4
  %74 = call i32 @lck_mtx_unlock(i32 %73)
  %75 = load %struct.socket*, %struct.socket** %5, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %77 = load i32, i32* @ENOENT, align 4
  %78 = call i32 @key_senderror(%struct.socket* %75, %struct.mbuf* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  br label %104

79:                                               ; preds = %53
  %80 = load i32, i32* @sadb_mutex, align 4
  %81 = call i32 @lck_mtx_unlock(i32 %80)
  %82 = load %struct.secpolicy*, %struct.secpolicy** %9, align 8
  %83 = load i32, i32* @SADB_X_SPDGET, align 4
  %84 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %85 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.mbuf* @key_setdumpsp(%struct.secpolicy* %82, i32 %83, i32 0, i32 %88)
  store %struct.mbuf* %89, %struct.mbuf** %10, align 8
  %90 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %91 = icmp ne %struct.mbuf* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %79
  %93 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %94 = call i32 @m_freem(%struct.mbuf* %93)
  %95 = load %struct.socket*, %struct.socket** %5, align 8
  %96 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %97 = load i32, i32* @KEY_SENDUP_ONE, align 4
  %98 = call i32 @key_sendup_mbuf(%struct.socket* %95, %struct.mbuf* %96, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %104

99:                                               ; preds = %79
  %100 = load %struct.socket*, %struct.socket** %5, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %102 = load i32, i32* @ENOBUFS, align 4
  %103 = call i32 @key_senderror(%struct.socket* %100, %struct.mbuf* %101, i32 %102)
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %99, %92, %69, %46
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ipseclog(i32) #1

declare dso_local i32 @key_senderror(%struct.socket*, %struct.mbuf*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.secpolicy* @__key_getspbyid(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local %struct.mbuf* @key_setdumpsp(%struct.secpolicy*, i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @key_sendup_mbuf(%struct.socket*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
