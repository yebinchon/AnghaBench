; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_delsp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_delsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secpolicy = type { i64, %struct.ipsecrequest*, i32*, i32*, %struct.TYPE_2__, i32 }
%struct.ipsecrequest = type { %struct.ipsecrequest* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [36 x i8] c"key_delsp: NULL pointer is passed.\0A\00", align 1
@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@IPSEC_SPSTATE_DEAD = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@ipsec_policy_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.secpolicy*)* @key_delsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_delsp(%struct.secpolicy* %0) #0 {
  %2 = alloca %struct.secpolicy*, align 8
  %3 = alloca %struct.ipsecrequest*, align 8
  %4 = alloca %struct.ipsecrequest*, align 8
  store %struct.secpolicy* %0, %struct.secpolicy** %2, align 8
  %5 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %6 = icmp eq %struct.secpolicy* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i32, i32* @sadb_mutex, align 4
  %11 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %12 = call i32 @LCK_MTX_ASSERT(i32 %10, i32 %11)
  %13 = load i32, i32* @IPSEC_SPSTATE_DEAD, align 4
  %14 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %15 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %17 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %87

21:                                               ; preds = %9
  %22 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %23 = call i64 @__LIST_CHAINED(%struct.secpolicy* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %27 = load i32, i32* @chain, align 4
  %28 = call i32 @LIST_REMOVE(%struct.secpolicy* %26, i32 %27)
  %29 = load i32, i32* @ipsec_policy_count, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* @ipsec_policy_count, align 4
  br label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %33 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %39 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @ifnet_release(i32* %41)
  %43 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %44 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %37, %31
  %47 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %48 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %53 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ifnet_release(i32* %54)
  %56 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %57 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %56, i32 0, i32 3
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %51, %46
  %59 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %60 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %65 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @ifnet_release(i32* %66)
  %68 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %69 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %68, i32 0, i32 2
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %63, %58
  %71 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %72 = getelementptr inbounds %struct.secpolicy, %struct.secpolicy* %71, i32 0, i32 1
  %73 = load %struct.ipsecrequest*, %struct.ipsecrequest** %72, align 8
  store %struct.ipsecrequest* %73, %struct.ipsecrequest** %3, align 8
  br label %74

74:                                               ; preds = %77, %70
  %75 = load %struct.ipsecrequest*, %struct.ipsecrequest** %3, align 8
  %76 = icmp ne %struct.ipsecrequest* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.ipsecrequest*, %struct.ipsecrequest** %3, align 8
  %79 = getelementptr inbounds %struct.ipsecrequest, %struct.ipsecrequest* %78, i32 0, i32 0
  %80 = load %struct.ipsecrequest*, %struct.ipsecrequest** %79, align 8
  store %struct.ipsecrequest* %80, %struct.ipsecrequest** %4, align 8
  %81 = load %struct.ipsecrequest*, %struct.ipsecrequest** %3, align 8
  %82 = call i32 @KFREE(%struct.ipsecrequest* %81)
  %83 = load %struct.ipsecrequest*, %struct.ipsecrequest** %4, align 8
  store %struct.ipsecrequest* %83, %struct.ipsecrequest** %3, align 8
  br label %74

84:                                               ; preds = %74
  %85 = load %struct.secpolicy*, %struct.secpolicy** %2, align 8
  %86 = call i32 @keydb_delsecpolicy(%struct.secpolicy* %85)
  br label %87

87:                                               ; preds = %84, %20
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i64 @__LIST_CHAINED(%struct.secpolicy*) #1

declare dso_local i32 @LIST_REMOVE(%struct.secpolicy*, i32) #1

declare dso_local i32 @ifnet_release(i32*) #1

declare dso_local i32 @KFREE(%struct.ipsecrequest*) #1

declare dso_local i32 @keydb_delsecpolicy(%struct.secpolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
