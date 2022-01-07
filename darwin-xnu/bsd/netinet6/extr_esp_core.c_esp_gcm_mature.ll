; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_esp_core.c_esp_gcm_mature.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_esp_core.c_esp_gcm_mature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.esp_algorithm = type { i32, i32, i32 }

@SADB_X_EXT_OLD = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"esp_gcm_mature: algorithm incompatible with esp-old\0A\00", align 1
@SADB_X_EXT_DERIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"esp_gcm_mature: algorithm incompatible with derived\0A\00", align 1
@SADB_X_EXT_IIV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"esp_gcm_mature: implicit IV not currently implemented\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"esp_gcm_mature: no key is given.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"esp_gcm_mature: unsupported algorithm.\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"esp_gcm_mature %s: invalid key length %d.\0A\00", align 1
@ESP_AESGCM_KEYLEN128 = common dso_local global i32 0, align 4
@ESP_AESGCM_KEYLEN192 = common dso_local global i32 0, align 4
@ESP_AESGCM_KEYLEN256 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"esp_gcm_mature %s: invalid algo %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secasvar*)* @esp_gcm_mature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_gcm_mature(%struct.secasvar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.secasvar*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.esp_algorithm*, align 8
  store %struct.secasvar* %0, %struct.secasvar** %3, align 8
  %6 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %7 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SADB_X_EXT_OLD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @LOG_ERR, align 4
  %14 = call i32 @ipseclog(i32 ptrtoint ([53 x i8]* @.str to i32))
  store i32 1, i32* %2, align 4
  br label %112

15:                                               ; preds = %1
  %16 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %17 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SADB_X_EXT_DERIV, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @LOG_ERR, align 4
  %24 = call i32 @ipseclog(i32 ptrtoint ([53 x i8]* @.str.1 to i32))
  store i32 1, i32* %2, align 4
  br label %112

25:                                               ; preds = %15
  %26 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %27 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SADB_X_EXT_IIV, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = call i32 @ipseclog(i32 ptrtoint ([55 x i8]* @.str.2 to i32))
  store i32 1, i32* %2, align 4
  br label %112

35:                                               ; preds = %25
  %36 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %37 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = icmp ne %struct.TYPE_2__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @LOG_ERR, align 4
  %42 = call i32 @ipseclog(i32 ptrtoint ([34 x i8]* @.str.3 to i32))
  store i32 1, i32* %2, align 4
  br label %112

43:                                               ; preds = %35
  %44 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %45 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.esp_algorithm* @esp_algorithm_lookup(i32 %46)
  store %struct.esp_algorithm* %47, %struct.esp_algorithm** %5, align 8
  %48 = load %struct.esp_algorithm*, %struct.esp_algorithm** %5, align 8
  %49 = icmp ne %struct.esp_algorithm* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @LOG_ERR, align 4
  %52 = call i32 @ipseclog(i32 ptrtoint ([40 x i8]* @.str.4 to i32))
  store i32 1, i32* %2, align 4
  br label %112

53:                                               ; preds = %43
  %54 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %55 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.esp_algorithm*, %struct.esp_algorithm** %5, align 8
  %61 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %53
  %65 = load %struct.esp_algorithm*, %struct.esp_algorithm** %5, align 8
  %66 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64, %53
  %71 = load i32, i32* @LOG_ERR, align 4
  %72 = load %struct.esp_algorithm*, %struct.esp_algorithm** %5, align 8
  %73 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %76 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ipseclog(i32 %79)
  store i32 1, i32* %2, align 4
  br label %112

81:                                               ; preds = %64
  %82 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %83 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %105 [
    i32 128, label %85
  ]

85:                                               ; preds = %81
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @ESP_AESGCM_KEYLEN128, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %104, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @ESP_AESGCM_KEYLEN192, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %104, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @ESP_AESGCM_KEYLEN256, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %104, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* @LOG_ERR, align 4
  %99 = load %struct.esp_algorithm*, %struct.esp_algorithm** %5, align 8
  %100 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @ipseclog(i32 %102)
  store i32 1, i32* %2, align 4
  br label %112

104:                                              ; preds = %93, %89, %85
  br label %111

105:                                              ; preds = %81
  %106 = load i32, i32* @LOG_ERR, align 4
  %107 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %108 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ipseclog(i32 %109)
  store i32 1, i32* %2, align 4
  br label %112

111:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %105, %97, %70, %50, %40, %32, %22, %12
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @ipseclog(i32) #1

declare dso_local %struct.esp_algorithm* @esp_algorithm_lookup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
