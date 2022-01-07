; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_esp_core.c_esp_schedule.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_esp_core.c_esp_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_algorithm = type { i64, i64, {}*, i64 (%struct.esp_algorithm*)*, i32 }
%struct.secasvar = type { i64, i32, i64, i32*, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"esp_schedule %s: unsupported key length %d: needs %d to %d bits\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@sadb_mutex = common dso_local global i32 0, align 4
@SADB_X_EXT_IIV = common dso_local global i32 0, align 4
@SADB_X_EALG_AES_GCM = common dso_local global i64 0, align 8
@SADB_X_EALG_CHACHA20POLY1305 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"esp_schedule %s: implicit IV not allowed\0A\00", align 1
@M_SECA = common dso_local global i32 0, align 4
@M_DONTWAIT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"esp_schedule %s: error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_schedule(%struct.esp_algorithm* %0, %struct.secasvar* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esp_algorithm*, align 8
  %5 = alloca %struct.secasvar*, align 8
  %6 = alloca i32, align 4
  store %struct.esp_algorithm* %0, %struct.esp_algorithm** %4, align 8
  store %struct.secasvar* %1, %struct.secasvar** %5, align 8
  %7 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %8 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @_KEYBITS(i32 %9)
  %11 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %12 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %17 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @_KEYBITS(i32 %18)
  %20 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %21 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %15, %2
  %25 = load i32, i32* @LOG_ERR, align 4
  %26 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %27 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %30 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @_KEYBITS(i32 %31)
  %33 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %34 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %37 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @ipseclog(i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %3, align 4
  br label %172

42:                                               ; preds = %15
  %43 = load i32, i32* @sadb_mutex, align 4
  %44 = call i32 @lck_mtx_lock(i32 %43)
  %45 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %46 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %51 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @sadb_mutex, align 4
  %56 = call i32 @lck_mtx_unlock(i32 %55)
  store i32 0, i32* %3, align 4
  br label %172

57:                                               ; preds = %49, %42
  %58 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %59 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SADB_X_EXT_IIV, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %57
  %65 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %66 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SADB_X_EALG_AES_GCM, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %64
  %71 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %72 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SADB_X_EALG_CHACHA20POLY1305, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load i32, i32* @LOG_ERR, align 4
  %78 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %79 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ipseclog(i32 %80)
  %82 = load i32, i32* @sadb_mutex, align 4
  %83 = call i32 @lck_mtx_unlock(i32 %82)
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %3, align 4
  br label %172

85:                                               ; preds = %70, %64, %57
  %86 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %87 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %86, i32 0, i32 2
  %88 = bitcast {}** %87 to i32 (%struct.esp_algorithm*, %struct.secasvar*)**
  %89 = load i32 (%struct.esp_algorithm*, %struct.secasvar*)*, i32 (%struct.esp_algorithm*, %struct.secasvar*)** %88, align 8
  %90 = icmp ne i32 (%struct.esp_algorithm*, %struct.secasvar*)* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %93 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %92, i32 0, i32 3
  %94 = load i64 (%struct.esp_algorithm*)*, i64 (%struct.esp_algorithm*)** %93, align 8
  %95 = icmp ne i64 (%struct.esp_algorithm*)* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %91, %85
  %97 = load i32, i32* @sadb_mutex, align 4
  %98 = call i32 @lck_mtx_unlock(i32 %97)
  store i32 0, i32* %3, align 4
  br label %172

99:                                               ; preds = %91
  %100 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %101 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %100, i32 0, i32 3
  %102 = load i64 (%struct.esp_algorithm*)*, i64 (%struct.esp_algorithm*)** %101, align 8
  %103 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %104 = call i64 %102(%struct.esp_algorithm* %103)
  %105 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %106 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %108 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %99
  %113 = load i32, i32* @sadb_mutex, align 4
  %114 = call i32 @lck_mtx_unlock(i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  store i32 %115, i32* %3, align 4
  br label %172

116:                                              ; preds = %99
  %117 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %118 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @M_SECA, align 4
  %121 = load i32, i32* @M_DONTWAIT, align 4
  %122 = call i32* @_MALLOC(i64 %119, i32 %120, i32 %121)
  %123 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %124 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %123, i32 0, i32 3
  store i32* %122, i32** %124, align 8
  %125 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %126 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %116
  %130 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %131 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %130, i32 0, i32 0
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* @sadb_mutex, align 4
  %133 = call i32 @lck_mtx_unlock(i32 %132)
  %134 = load i32, i32* @ENOBUFS, align 4
  store i32 %134, i32* %3, align 4
  br label %172

135:                                              ; preds = %116
  %136 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %137 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %136, i32 0, i32 2
  %138 = bitcast {}** %137 to i32 (%struct.esp_algorithm*, %struct.secasvar*)**
  %139 = load i32 (%struct.esp_algorithm*, %struct.secasvar*)*, i32 (%struct.esp_algorithm*, %struct.secasvar*)** %138, align 8
  %140 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %141 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %142 = call i32 %139(%struct.esp_algorithm* %140, %struct.secasvar* %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %168

145:                                              ; preds = %135
  %146 = load i32, i32* @LOG_ERR, align 4
  %147 = load %struct.esp_algorithm*, %struct.esp_algorithm** %4, align 8
  %148 = getelementptr inbounds %struct.esp_algorithm, %struct.esp_algorithm* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @ipseclog(i32 %150)
  %152 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %153 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %156 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @bzero(i32* %154, i64 %157)
  %159 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %160 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* @M_SECA, align 4
  %163 = call i32 @FREE(i32* %161, i32 %162)
  %164 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %165 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %164, i32 0, i32 3
  store i32* null, i32** %165, align 8
  %166 = load %struct.secasvar*, %struct.secasvar** %5, align 8
  %167 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %166, i32 0, i32 0
  store i64 0, i64* %167, align 8
  br label %168

168:                                              ; preds = %145, %135
  %169 = load i32, i32* @sadb_mutex, align 4
  %170 = call i32 @lck_mtx_unlock(i32 %169)
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %168, %129, %112, %96, %76, %54, %24
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @_KEYBITS(i32) #1

declare dso_local i32 @ipseclog(i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32* @_MALLOC(i64, i32, i32) #1

declare dso_local i32 @bzero(i32*, i64) #1

declare dso_local i32 @FREE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
