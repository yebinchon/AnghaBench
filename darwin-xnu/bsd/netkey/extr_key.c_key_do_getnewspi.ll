; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_do_getnewspi.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_do_getnewspi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sadb_spirange = type { i32, i32 }
%struct.secasindex = type { i64 }

@key_spi_trycnt = common dso_local global i32 0, align 4
@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@key_spi_minval = common dso_local global i32 0, align 4
@key_spi_maxval = common dso_local global i32 0, align 4
@IPPROTO_IPCOMP = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"key_do_getnewspi: SPI %u exists already.\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"key_do_getnewspi: to allocate spi is failed.\0A\00", align 1
@keystat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sadb_spirange*, %struct.secasindex*)* @key_do_getnewspi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_do_getnewspi(%struct.sadb_spirange* %0, %struct.secasindex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sadb_spirange*, align 8
  %5 = alloca %struct.secasindex*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sadb_spirange* %0, %struct.sadb_spirange** %4, align 8
  store %struct.secasindex* %1, %struct.secasindex** %5, align 8
  %13 = load i32, i32* @key_spi_trycnt, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @sadb_mutex, align 4
  %15 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %16 = call i32 @LCK_MTX_ASSERT(i32 %14, i32 %15)
  %17 = load %struct.sadb_spirange*, %struct.sadb_spirange** %4, align 8
  %18 = icmp ne %struct.sadb_spirange* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.sadb_spirange*, %struct.sadb_spirange** %4, align 8
  %21 = getelementptr inbounds %struct.sadb_spirange, %struct.sadb_spirange* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.sadb_spirange*, %struct.sadb_spirange** %4, align 8
  %24 = getelementptr inbounds %struct.sadb_spirange, %struct.sadb_spirange* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @key_spi_minval, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @key_spi_maxval, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %31 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IPPROTO_IPCOMP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %36, 65536
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 65535, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 65536
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 65535, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32* @key_checkspidup(%struct.secasindex* %57, i32 %58)
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @LOG_DEBUG, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ipseclog(i32 %63)
  store i32 0, i32* %3, align 4
  br label %116

65:                                               ; preds = %56
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %6, align 4
  br label %108

69:                                               ; preds = %52
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %70, %71
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %97, %69
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %9, align 4
  %77 = icmp ne i32 %75, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = call i32 (...) @key_random()
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  br label %90

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = srem i32 %86, %87
  %89 = add nsw i32 %85, %88
  br label %90

90:                                               ; preds = %84, %82
  %91 = phi i32 [ %83, %82 ], [ %89, %84 ]
  store i32 %91, i32* %6, align 4
  %92 = load %struct.secasindex*, %struct.secasindex** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32* @key_checkspidup(%struct.secasindex* %92, i32 %93)
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %98

97:                                               ; preds = %90
  br label %74

98:                                               ; preds = %96, %74
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101, %98
  %105 = load i32, i32* @LOG_DEBUG, align 4
  %106 = call i32 @ipseclog(i32 ptrtoint ([46 x i8]* @.str.1 to i32))
  store i32 0, i32* %3, align 4
  br label %116

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %65
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keystat, i32 0, i32 0), align 4
  %110 = load i32, i32* @key_spi_trycnt, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 %111, %112
  %114 = sdiv i32 %113, 2
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keystat, i32 0, i32 0), align 4
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %108, %104, %61
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32* @key_checkspidup(%struct.secasindex*, i32) #1

declare dso_local i32 @ipseclog(i32) #1

declare dso_local i32 @key_random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
