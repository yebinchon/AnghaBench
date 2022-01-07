; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_validate_address_pair.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_validate_address_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sadb_address = type { i64, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"key_parse: upper layer protocol mismatched.\0A\00", align 1
@pfkeystat = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"key_parse: address family mismatched.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"key_parse: address struct size mismatched.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"key_parse: unsupported address family.\0A\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"key_parse: illegal prefixlen.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sadb_address*, %struct.sadb_address*)* @key_validate_address_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_validate_address_pair(%struct.sadb_address* %0, %struct.sadb_address* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sadb_address*, align 8
  %5 = alloca %struct.sadb_address*, align 8
  %6 = alloca i64, align 8
  store %struct.sadb_address* %0, %struct.sadb_address** %4, align 8
  store %struct.sadb_address* %1, %struct.sadb_address** %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.sadb_address*, %struct.sadb_address** %4, align 8
  %8 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.sadb_address*, %struct.sadb_address** %5, align 8
  %11 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @LOG_DEBUG, align 4
  %16 = call i32 @ipseclog(i32 ptrtoint ([45 x i8]* @.str to i32))
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pfkeystat, i32 0, i32 0), align 4
  %18 = call i32 @PFKEY_STAT_INCREMENT(i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %112

20:                                               ; preds = %2
  %21 = load %struct.sadb_address*, %struct.sadb_address** %4, align 8
  %22 = call %struct.TYPE_4__* @PFKEY_ADDR_SADDR(%struct.sadb_address* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sadb_address*, %struct.sadb_address** %5, align 8
  %26 = call %struct.TYPE_4__* @PFKEY_ADDR_SADDR(%struct.sadb_address* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %24, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load i32, i32* @LOG_DEBUG, align 4
  %32 = call i32 @ipseclog(i32 ptrtoint ([39 x i8]* @.str.1 to i32))
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pfkeystat, i32 0, i32 0), align 4
  %34 = call i32 @PFKEY_STAT_INCREMENT(i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %112

36:                                               ; preds = %20
  %37 = load %struct.sadb_address*, %struct.sadb_address** %4, align 8
  %38 = call %struct.TYPE_4__* @PFKEY_ADDR_SADDR(%struct.sadb_address* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sadb_address*, %struct.sadb_address** %5, align 8
  %42 = call %struct.TYPE_4__* @PFKEY_ADDR_SADDR(%struct.sadb_address* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load i32, i32* @LOG_DEBUG, align 4
  %48 = call i32 @ipseclog(i32 ptrtoint ([44 x i8]* @.str.2 to i32))
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pfkeystat, i32 0, i32 0), align 4
  %50 = call i32 @PFKEY_STAT_INCREMENT(i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %3, align 4
  br label %112

52:                                               ; preds = %36
  %53 = load %struct.sadb_address*, %struct.sadb_address** %4, align 8
  %54 = call %struct.TYPE_4__* @PFKEY_ADDR_SADDR(%struct.sadb_address* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %79 [
    i32 129, label %57
    i32 128, label %68
  ]

57:                                               ; preds = %52
  %58 = load %struct.sadb_address*, %struct.sadb_address** %4, align 8
  %59 = call %struct.TYPE_4__* @PFKEY_ADDR_SADDR(%struct.sadb_address* %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 4
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pfkeystat, i32 0, i32 0), align 4
  %65 = call i32 @PFKEY_STAT_INCREMENT(i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %3, align 4
  br label %112

67:                                               ; preds = %57
  br label %85

68:                                               ; preds = %52
  %69 = load %struct.sadb_address*, %struct.sadb_address** %4, align 8
  %70 = call %struct.TYPE_4__* @PFKEY_ADDR_SADDR(%struct.sadb_address* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 4
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pfkeystat, i32 0, i32 0), align 4
  %76 = call i32 @PFKEY_STAT_INCREMENT(i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %3, align 4
  br label %112

78:                                               ; preds = %68
  br label %85

79:                                               ; preds = %52
  %80 = load i32, i32* @LOG_DEBUG, align 4
  %81 = call i32 @ipseclog(i32 ptrtoint ([40 x i8]* @.str.3 to i32))
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pfkeystat, i32 0, i32 0), align 4
  %83 = call i32 @PFKEY_STAT_INCREMENT(i32 %82)
  %84 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %84, i32* %3, align 4
  br label %112

85:                                               ; preds = %78, %67
  %86 = load %struct.sadb_address*, %struct.sadb_address** %4, align 8
  %87 = call %struct.TYPE_4__* @PFKEY_ADDR_SADDR(%struct.sadb_address* %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %92 [
    i32 129, label %90
    i32 128, label %91
  ]

90:                                               ; preds = %85
  store i64 32, i64* %6, align 8
  br label %93

91:                                               ; preds = %85
  store i64 32, i64* %6, align 8
  br label %93

92:                                               ; preds = %85
  store i64 0, i64* %6, align 8
  br label %93

93:                                               ; preds = %92, %91, %90
  %94 = load %struct.sadb_address*, %struct.sadb_address** %4, align 8
  %95 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load %struct.sadb_address*, %struct.sadb_address** %5, align 8
  %101 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99, %93
  %106 = load i32, i32* @LOG_DEBUG, align 4
  %107 = call i32 @ipseclog(i32 ptrtoint ([31 x i8]* @.str.4 to i32))
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pfkeystat, i32 0, i32 0), align 4
  %109 = call i32 @PFKEY_STAT_INCREMENT(i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %3, align 4
  br label %112

111:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %105, %79, %74, %63, %46, %30, %14
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @ipseclog(i32) #1

declare dso_local i32 @PFKEY_STAT_INCREMENT(i32) #1

declare dso_local %struct.TYPE_4__* @PFKEY_ADDR_SADDR(%struct.sadb_address*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
