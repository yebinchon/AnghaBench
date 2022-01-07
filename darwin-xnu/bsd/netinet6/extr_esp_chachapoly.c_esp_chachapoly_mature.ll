; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_esp_chachapoly.c_esp_chachapoly_mature.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_esp_chachapoly.c_esp_chachapoly_mature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i32, i64, %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.esp_algorithm = type { i32 }

@SADB_X_EXT_OLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"ChaChaPoly is incompatible with SADB_X_EXT_OLD, SPI 0x%08x\00", align 1
@SADB_X_EXT_DERIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"ChaChaPoly is incompatible with SADB_X_EXT_DERIV, SPI 0x%08x\00", align 1
@SADB_X_EALG_CHACHA20POLY1305 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"ChaChaPoly unsupported algorithm %d, SPI 0x%08x\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"ChaChaPoly key is missing, SPI 0x%08x\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"ChaChaPoly lookup failed for algorithm %d, SPI 0x%08x\00", align 1
@ESP_CHACHAPOLY_KEYBITS_WITH_SALT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"ChaChaPoly invalid key length %d bits, SPI 0x%08x\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"ChaChaPoly Mature SPI 0x%08x%s %s dir %u state %u mode %u\00", align 1
@SADB_X_EXT_IIV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c" IIV\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_chachapoly_mature(%struct.secasvar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.secasvar*, align 8
  %4 = alloca %struct.esp_algorithm*, align 8
  store %struct.secasvar* %0, %struct.secasvar** %3, align 8
  %5 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %6 = call i32 @ESP_CHECK_ARG(%struct.secasvar* %5)
  %7 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %8 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SADB_X_EXT_OLD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %15 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ntohl(i32 %16)
  %18 = sext i32 %17 to i64
  %19 = call i32 (i8*, i64, ...) @esp_log_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %18)
  store i32 1, i32* %2, align 4
  br label %142

20:                                               ; preds = %1
  %21 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %22 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SADB_X_EXT_DERIV, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %29 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ntohl(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = call i32 (i8*, i64, ...) @esp_log_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  store i32 1, i32* %2, align 4
  br label %142

34:                                               ; preds = %20
  %35 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %36 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SADB_X_EALG_CHACHA20POLY1305, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %42 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %45 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ntohl(i32 %46)
  %48 = call i32 (i8*, i64, ...) @esp_log_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %43, i32 %47)
  store i32 1, i32* %2, align 4
  br label %142

49:                                               ; preds = %34
  %50 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %51 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp eq %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %56 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ntohl(i32 %57)
  %59 = sext i32 %58 to i64
  %60 = call i32 (i8*, i64, ...) @esp_log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %59)
  store i32 1, i32* %2, align 4
  br label %142

61:                                               ; preds = %49
  %62 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %63 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.esp_algorithm* @esp_algorithm_lookup(i64 %64)
  store %struct.esp_algorithm* %65, %struct.esp_algorithm** %4, align 8
  %66 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %67 = icmp eq %struct.esp_algorithm* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %70 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %73 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ntohl(i32 %74)
  %76 = call i32 (i8*, i64, ...) @esp_log_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i64 %71, i32 %75)
  store i32 1, i32* %2, align 4
  br label %142

77:                                               ; preds = %61
  %78 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %79 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %78, i32 0, i32 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ESP_CHACHAPOLY_KEYBITS_WITH_SALT, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %77
  %86 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %87 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %86, i32 0, i32 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %92 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ntohl(i32 %93)
  %95 = call i32 (i8*, i64, ...) @esp_log_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %90, i32 %94)
  store i32 1, i32* %2, align 4
  br label %142

96:                                               ; preds = %77
  %97 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %98 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ntohl(i32 %99)
  %101 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %102 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SADB_X_EXT_IIV, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %109 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %110 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %109, i32 0, i32 2
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %96
  %116 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %117 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = call i8* @if_name(i32* %120)
  br label %123

122:                                              ; preds = %96
  br label %123

123:                                              ; preds = %122, %115
  %124 = phi i8* [ %121, %115 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %122 ]
  %125 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %126 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %125, i32 0, i32 2
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %131 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %130, i32 0, i32 2
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %136 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %135, i32 0, i32 2
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @esp_log_default(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %100, i8* %108, i8* %124, i32 %129, i32 %134, i32 %140)
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %123, %85, %68, %54, %40, %27, %13
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @ESP_CHECK_ARG(%struct.secasvar*) #1

declare dso_local i32 @esp_log_err(i8*, i64, ...) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.esp_algorithm* @esp_algorithm_lookup(i64) #1

declare dso_local i32 @esp_log_default(i8*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @if_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
