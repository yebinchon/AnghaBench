; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_freesav.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_freesav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"key_freesav: NULL pointer is passed.\0A\00", align 1
@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@KEYDEBUG_IPSEC_STAMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"DP freesav cause refcnt--:%d SA:0x%llx SPI %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_freesav(%struct.secasvar* %0, i32 %1) #0 {
  %3 = alloca %struct.secasvar*, align 8
  %4 = alloca i32, align 4
  store %struct.secasvar* %0, %struct.secasvar** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %6 = icmp eq %struct.secasvar* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @sadb_mutex, align 4
  %14 = call i32 @lck_mtx_lock(i32 %13)
  br label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @sadb_mutex, align 4
  %17 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %18 = call i32 @LCK_MTX_ASSERT(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %21 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @KEYDEBUG_IPSEC_STAMP, align 4
  %25 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %26 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %29 = call i64 @VM_KERNEL_ADDRPERM(%struct.secasvar* %28)
  %30 = trunc i64 %29 to i32
  %31 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %32 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ntohl(i32 %33)
  %35 = trunc i64 %34 to i32
  %36 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30, i32 %35)
  %37 = call i32 @KEYDEBUG(i32 %24, i32 %36)
  %38 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %39 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %19
  %43 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %44 = call i32 @key_delsav(%struct.secasvar* %43)
  br label %45

45:                                               ; preds = %42, %19
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* @sadb_mutex, align 4
  %50 = call i32 @lck_mtx_unlock(i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @KEYDEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.secasvar*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @key_delsav(%struct.secasvar*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
