; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_esp_core.c_esp_cbc_mature.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_esp_core.c_esp_cbc_mature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.esp_algorithm = type { i32, i32, i32 }

@SADB_X_EXT_OLD = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"esp_cbc_mature: algorithm incompatible with esp-old\0A\00", align 1
@SADB_X_EXT_DERIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"esp_cbc_mature: algorithm incompatible with derived\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"esp_cbc_mature: no key is given.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"esp_cbc_mature: unsupported algorithm.\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"esp_cbc_mature %s: invalid key length %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"esp_cbc_mature %s: weak key was passed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secasvar*)* @esp_cbc_mature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_cbc_mature(%struct.secasvar* %0) #0 {
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
  br label %126

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
  br label %126

25:                                               ; preds = %15
  %26 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %27 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @LOG_ERR, align 4
  %32 = call i32 @ipseclog(i32 ptrtoint ([34 x i8]* @.str.2 to i32))
  store i32 1, i32* %2, align 4
  br label %126

33:                                               ; preds = %25
  %34 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %35 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.esp_algorithm* @esp_algorithm_lookup(i32 %36)
  store %struct.esp_algorithm* %37, %struct.esp_algorithm** %5, align 8
  %38 = load %struct.esp_algorithm*, %struct.esp_algorithm** %5, align 8
  %39 = icmp ne %struct.esp_algorithm* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @LOG_ERR, align 4
  %42 = call i32 @ipseclog(i32 ptrtoint ([40 x i8]* @.str.3 to i32))
  store i32 1, i32* %2, align 4
  br label %126

43:                                               ; preds = %33
  %44 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %45 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.esp_algorithm*, %struct.esp_algorithm** %5, align 8
  %51 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %43
  %55 = load %struct.esp_algorithm*, %struct.esp_algorithm** %5, align 8
  %56 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54, %43
  %61 = load i32, i32* @LOG_ERR, align 4
  %62 = load %struct.esp_algorithm*, %struct.esp_algorithm** %5, align 8
  %63 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %66 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ipseclog(i32 %69)
  store i32 1, i32* %2, align 4
  br label %126

71:                                               ; preds = %54
  %72 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %73 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %125 [
    i32 129, label %75
    i32 128, label %108
  ]

75:                                               ; preds = %71
  %76 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %77 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = call i64 @_KEYBUF(%struct.TYPE_2__* %78)
  %80 = inttoptr i64 %79 to i32*
  %81 = call i32 @des_is_weak_key(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %101, label %83

83:                                               ; preds = %75
  %84 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %85 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = call i64 @_KEYBUF(%struct.TYPE_2__* %86)
  %88 = add nsw i64 %87, 8
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @des_is_weak_key(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %83
  %93 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %94 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = call i64 @_KEYBUF(%struct.TYPE_2__* %95)
  %97 = add nsw i64 %96, 16
  %98 = inttoptr i64 %97 to i32*
  %99 = call i32 @des_is_weak_key(i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %92, %83, %75
  %102 = load i32, i32* @LOG_ERR, align 4
  %103 = load %struct.esp_algorithm*, %struct.esp_algorithm** %5, align 8
  %104 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ipseclog(i32 %105)
  store i32 1, i32* %2, align 4
  br label %126

107:                                              ; preds = %92
  br label %125

108:                                              ; preds = %71
  %109 = load i32, i32* %4, align 4
  %110 = icmp eq i32 %109, 128
  br i1 %110, label %124, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %112, 192
  br i1 %113, label %124, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %4, align 4
  %116 = icmp eq i32 %115, 256
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* @LOG_ERR, align 4
  %119 = load %struct.esp_algorithm*, %struct.esp_algorithm** %5, align 8
  %120 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @ipseclog(i32 %122)
  store i32 1, i32* %2, align 4
  br label %126

124:                                              ; preds = %114, %111, %108
  br label %125

125:                                              ; preds = %71, %124, %107
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %117, %101, %60, %40, %30, %22, %12
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @ipseclog(i32) #1

declare dso_local %struct.esp_algorithm* @esp_algorithm_lookup(i32) #1

declare dso_local i32 @des_is_weak_key(i32*) #1

declare dso_local i64 @_KEYBUF(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
