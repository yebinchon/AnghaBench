; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_checkrequest.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_checkrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipsecrequest = type { i32 }
%struct.secasindex = type { i32, i32 }
%struct.secasvar = type { i32 }
%struct.sockaddr_in = type { i32 }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"key_checkrequest: NULL pointer is passed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"key_checkrequest: Invalid policy defined.\0A\00", align 1
@IPSEC_PORT_ANY = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"key_checkrequest: error %d returned from key_acquire.\0A\00", align 1
@IPSEC_LEVEL_REQUIRE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_checkrequest(%struct.ipsecrequest* %0, %struct.secasindex* %1, %struct.secasvar** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipsecrequest*, align 8
  %6 = alloca %struct.secasindex*, align 8
  %7 = alloca %struct.secasvar**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in*, align 8
  store %struct.ipsecrequest* %0, %struct.ipsecrequest** %5, align 8
  store %struct.secasindex* %1, %struct.secasindex** %6, align 8
  store %struct.secasvar** %2, %struct.secasvar*** %7, align 8
  %11 = load i32, i32* @sadb_mutex, align 4
  %12 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %13 = call i32 @LCK_MTX_ASSERT(i32 %11, i32 %12)
  %14 = load %struct.secasvar**, %struct.secasvar*** %7, align 8
  store %struct.secasvar* null, %struct.secasvar** %14, align 8
  %15 = load %struct.ipsecrequest*, %struct.ipsecrequest** %5, align 8
  %16 = icmp eq %struct.ipsecrequest* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %19 = icmp eq %struct.secasindex* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %3
  %21 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %24 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %28 [
    i32 129, label %26
    i32 128, label %26
    i32 130, label %27
  ]

26:                                               ; preds = %22, %22
  br label %30

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %22, %27
  %29 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.ipsecrequest*, %struct.ipsecrequest** %5, align 8
  %32 = call i64 @ipsec_get_reqlevel(%struct.ipsecrequest* %31)
  store i64 %32, i64* %8, align 8
  %33 = load %struct.secasvar**, %struct.secasvar*** %7, align 8
  %34 = load %struct.secasvar*, %struct.secasvar** %33, align 8
  %35 = icmp eq %struct.secasvar* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %38 = call %struct.secasvar* @key_allocsa_policy(%struct.secasindex* %37)
  %39 = load %struct.secasvar**, %struct.secasvar*** %7, align 8
  store %struct.secasvar* %38, %struct.secasvar** %39, align 8
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.secasvar**, %struct.secasvar*** %7, align 8
  %42 = load %struct.secasvar*, %struct.secasvar** %41, align 8
  %43 = icmp ne %struct.secasvar* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %78

45:                                               ; preds = %40
  %46 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %47 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 129
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %52 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %51, i32 0, i32 1
  %53 = bitcast i32* %52 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %53, %struct.sockaddr_in** %10, align 8
  %54 = load i32, i32* @IPSEC_PORT_ANY, align 4
  %55 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %50, %45
  %58 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %59 = load %struct.ipsecrequest*, %struct.ipsecrequest** %5, align 8
  %60 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @key_acquire(%struct.secasindex* %58, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, i32* @LOG_DEBUG, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ipseclog(i32 %66)
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %78

69:                                               ; preds = %57
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @IPSEC_LEVEL_REQUIRE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @ENOENT, align 4
  br label %76

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %64, %44
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ipsec_get_reqlevel(%struct.ipsecrequest*) #1

declare dso_local %struct.secasvar* @key_allocsa_policy(%struct.secasindex*) #1

declare dso_local i32 @key_acquire(%struct.secasindex*, i32) #1

declare dso_local i32 @ipseclog(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
