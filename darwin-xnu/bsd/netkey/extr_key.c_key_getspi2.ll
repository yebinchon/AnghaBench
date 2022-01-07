; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_getspi2.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_getspi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i32 }
%struct.sadb_spirange = type { i32 }
%struct.secasindex = type { i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_getspi2(%struct.sockaddr* %0, %struct.sockaddr* %1, i32 %2, i32 %3, i32 %4, %struct.sadb_spirange* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sadb_spirange*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.secasindex, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.sadb_spirange* %5, %struct.sadb_spirange** %13, align 8
  %16 = load i32, i32* @sadb_mutex, align 4
  %17 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %18 = call i32 @LCK_MTX_ASSERT(i32 %16, i32 %17)
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %23 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %24 = call i32 @KEY_SETSECASIDX(i32 %19, i32 %20, i32 %21, %struct.sockaddr* %22, %struct.sockaddr* %23, i32 0, %struct.secasindex* %15)
  %25 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %15, i32 0, i32 1
  %26 = bitcast i32* %25 to %struct.sockaddr*
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %53 [
    i32 129, label %29
    i32 128, label %41
  ]

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %15, i32 0, i32 1
  %31 = bitcast i32* %30 to %struct.sockaddr*
  %32 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %92

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %15, i32 0, i32 1
  %39 = bitcast i32* %38 to %struct.sockaddr_in*
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %54

41:                                               ; preds = %6
  %42 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %15, i32 0, i32 1
  %43 = bitcast i32* %42 to %struct.sockaddr*
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %92

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %15, i32 0, i32 1
  %51 = bitcast i32* %50 to %struct.sockaddr_in6*
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  br label %54

53:                                               ; preds = %6
  br label %54

54:                                               ; preds = %53, %49, %37
  %55 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %15, i32 0, i32 0
  %56 = bitcast i32* %55 to %struct.sockaddr*
  %57 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %83 [
    i32 129, label %59
    i32 128, label %71
  ]

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %15, i32 0, i32 0
  %61 = bitcast i32* %60 to %struct.sockaddr*
  %62 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ne i64 %64, 4
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %92

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %15, i32 0, i32 0
  %69 = bitcast i32* %68 to %struct.sockaddr_in*
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  br label %84

71:                                               ; preds = %54
  %72 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %15, i32 0, i32 0
  %73 = bitcast i32* %72 to %struct.sockaddr*
  %74 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ne i64 %76, 4
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %92

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %15, i32 0, i32 0
  %81 = bitcast i32* %80 to %struct.sockaddr_in6*
  %82 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  br label %84

83:                                               ; preds = %54
  br label %84

84:                                               ; preds = %83, %79, %67
  %85 = load i32, i32* @sadb_mutex, align 4
  %86 = call i32 @lck_mtx_lock(i32 %85)
  %87 = load %struct.sadb_spirange*, %struct.sadb_spirange** %13, align 8
  %88 = call i32 @key_do_getnewspi(%struct.sadb_spirange* %87, %struct.secasindex* %15)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* @sadb_mutex, align 4
  %90 = call i32 @lck_mtx_unlock(i32 %89)
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %84, %78, %66, %48, %36
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @KEY_SETSECASIDX(i32, i32, i32, %struct.sockaddr*, %struct.sockaddr*, i32, %struct.secasindex*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @key_do_getnewspi(%struct.sadb_spirange*, %struct.secasindex*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
