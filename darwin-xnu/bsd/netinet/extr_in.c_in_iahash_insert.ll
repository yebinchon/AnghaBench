; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_in_iahash_insert.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_in_iahash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_ifaddr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@in_ifaddr_rwlock = common dso_local global i32 0, align 4
@LCK_RW_ASSERT_EXCLUSIVE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"attempt to insert wrong ia %p into hash table\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"attempt to double-insert ia %p into hash table\0A\00", align 1
@ia_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in_ifaddr*)* @in_iahash_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_iahash_insert(%struct.in_ifaddr* %0) #0 {
  %2 = alloca %struct.in_ifaddr*, align 8
  store %struct.in_ifaddr* %0, %struct.in_ifaddr** %2, align 8
  %3 = load i32, i32* @in_ifaddr_rwlock, align 4
  %4 = load i32, i32* @LCK_RW_ASSERT_EXCLUSIVE, align 4
  %5 = call i32 @LCK_RW_ASSERT(i32 %3, i32 %4)
  %6 = load %struct.in_ifaddr*, %struct.in_ifaddr** %2, align 8
  %7 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %6, i32 0, i32 0
  %8 = call i32 @IFA_LOCK_ASSERT_HELD(i32* %7)
  %9 = load %struct.in_ifaddr*, %struct.in_ifaddr** %2, align 8
  %10 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_INET, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.in_ifaddr*, %struct.in_ifaddr** %2, align 8
  %17 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.in_ifaddr* %16)
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.in_ifaddr*, %struct.in_ifaddr** %2, align 8
  %20 = call i64 @IA_IS_HASHED(%struct.in_ifaddr* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.in_ifaddr*, %struct.in_ifaddr** %2, align 8
  %24 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), %struct.in_ifaddr* %23)
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %15
  %27 = load %struct.in_ifaddr*, %struct.in_ifaddr** %2, align 8
  %28 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @INADDR_HASH(i32 %31)
  %33 = load %struct.in_ifaddr*, %struct.in_ifaddr** %2, align 8
  %34 = load i32, i32* @ia_hash, align 4
  %35 = call i32 @TAILQ_INSERT_HEAD(i32 %32, %struct.in_ifaddr* %33, i32 %34)
  %36 = load %struct.in_ifaddr*, %struct.in_ifaddr** %2, align 8
  %37 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %36, i32 0, i32 0
  %38 = call i32 @IFA_ADDREF_LOCKED(i32* %37)
  ret void
}

declare dso_local i32 @LCK_RW_ASSERT(i32, i32) #1

declare dso_local i32 @IFA_LOCK_ASSERT_HELD(i32*) #1

declare dso_local i32 @panic(i8*, %struct.in_ifaddr*) #1

declare dso_local i64 @IA_IS_HASHED(%struct.in_ifaddr*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32, %struct.in_ifaddr*, i32) #1

declare dso_local i32 @INADDR_HASH(i32) #1

declare dso_local i32 @IFA_ADDREF_LOCKED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
