; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_esp_core.c_esp_descbc_mature.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_esp_core.c_esp_descbc_mature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i32, i32, i32 }
%struct.esp_algorithm = type { i64, i64 }

@SADB_X_EXT_OLD = common dso_local global i32 0, align 4
@SADB_X_EXT_IV4B = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"esp_cbc_mature: algorithm incompatible with 4 octets IV length\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"esp_descbc_mature: no key is given.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"esp_descbc_mature: unsupported algorithm.\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"esp_descbc_mature: invalid key length %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"esp_descbc_mature: weak key was passed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secasvar*)* @esp_descbc_mature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_descbc_mature(%struct.secasvar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.secasvar*, align 8
  %4 = alloca %struct.esp_algorithm*, align 8
  store %struct.secasvar* %0, %struct.secasvar** %3, align 8
  %5 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %6 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SADB_X_EXT_OLD, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %13 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SADB_X_EXT_IV4B, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = call i32 @ipseclog(i32 ptrtoint ([64 x i8]* @.str to i32))
  store i32 1, i32* %2, align 4
  br label %77

21:                                               ; preds = %11, %1
  %22 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %23 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = call i32 @ipseclog(i32 ptrtoint ([37 x i8]* @.str.1 to i32))
  store i32 1, i32* %2, align 4
  br label %77

29:                                               ; preds = %21
  %30 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %31 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.esp_algorithm* @esp_algorithm_lookup(i32 %32)
  store %struct.esp_algorithm* %33, %struct.esp_algorithm** %4, align 8
  %34 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %35 = icmp ne %struct.esp_algorithm* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = call i32 @ipseclog(i32 ptrtoint ([43 x i8]* @.str.2 to i32))
  store i32 1, i32* %2, align 4
  br label %77

39:                                               ; preds = %29
  %40 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %41 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @_KEYBITS(i32 %42)
  %44 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %45 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %39
  %49 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %50 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @_KEYBITS(i32 %51)
  %53 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %54 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %48, %39
  %58 = load i32, i32* @LOG_ERR, align 4
  %59 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %60 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @_KEYBITS(i32 %61)
  %63 = trunc i64 %62 to i32
  %64 = call i32 @ipseclog(i32 %63)
  store i32 1, i32* %2, align 4
  br label %77

65:                                               ; preds = %48
  %66 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %67 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @_KEYBUF(i32 %68)
  %70 = inttoptr i64 %69 to i32*
  %71 = call i64 @des_is_weak_key(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* @LOG_ERR, align 4
  %75 = call i32 @ipseclog(i32 ptrtoint ([41 x i8]* @.str.4 to i32))
  store i32 1, i32* %2, align 4
  br label %77

76:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %73, %57, %36, %26, %18
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ipseclog(i32) #1

declare dso_local %struct.esp_algorithm* @esp_algorithm_lookup(i32) #1

declare dso_local i64 @_KEYBITS(i32) #1

declare dso_local i64 @des_is_weak_key(i32*) #1

declare dso_local i64 @_KEYBUF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
