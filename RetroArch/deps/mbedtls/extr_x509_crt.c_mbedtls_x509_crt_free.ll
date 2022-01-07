; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_mbedtls_x509_crt_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_mbedtls_x509_crt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_17__*, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_17__*, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_12__ = type { %struct.TYPE_17__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_x509_crt_free(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %3, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = icmp eq %struct.TYPE_17__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %132

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %110, %13
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 7
  %17 = call i32 @mbedtls_pk_free(i32* %16)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %5, align 8
  br label %22

22:                                               ; preds = %25, %14
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %6, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %5, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = call i32 @mbedtls_zeroize(%struct.TYPE_17__* %30, i32 72)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = call i32 @mbedtls_free(%struct.TYPE_17__* %32)
  br label %22

34:                                               ; preds = %22
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %5, align 8
  br label %39

39:                                               ; preds = %42, %34
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = icmp ne %struct.TYPE_17__* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %43, %struct.TYPE_17__** %6, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %5, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %48 = call i32 @mbedtls_zeroize(%struct.TYPE_17__* %47, i32 72)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = call i32 @mbedtls_free(%struct.TYPE_17__* %49)
  br label %39

51:                                               ; preds = %39
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %7, align 8
  br label %56

56:                                               ; preds = %59, %51
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = icmp ne %struct.TYPE_17__* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %8, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %7, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %65 = call i32 @mbedtls_zeroize(%struct.TYPE_17__* %64, i32 72)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %67 = call i32 @mbedtls_free(%struct.TYPE_17__* %66)
  br label %56

68:                                               ; preds = %56
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %7, align 8
  br label %73

73:                                               ; preds = %76, %68
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %75 = icmp ne %struct.TYPE_17__* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %77, %struct.TYPE_17__** %8, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %7, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = call i32 @mbedtls_zeroize(%struct.TYPE_17__* %81, i32 72)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %84 = call i32 @mbedtls_free(%struct.TYPE_17__* %83)
  br label %73

85:                                               ; preds = %73
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = icmp ne %struct.TYPE_17__* %89, null
  br i1 %90, label %91, label %106

91:                                               ; preds = %85
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @mbedtls_zeroize(%struct.TYPE_17__* %95, i32 %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = call i32 @mbedtls_free(%struct.TYPE_17__* %104)
  br label %106

106:                                              ; preds = %91, %85
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  store %struct.TYPE_17__* %109, %struct.TYPE_17__** %3, align 8
  br label %110

110:                                              ; preds = %106
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %112 = icmp ne %struct.TYPE_17__* %111, null
  br i1 %112, label %14, label %113

113:                                              ; preds = %110
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  store %struct.TYPE_17__* %114, %struct.TYPE_17__** %3, align 8
  br label %115

115:                                              ; preds = %129, %113
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %4, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  store %struct.TYPE_17__* %119, %struct.TYPE_17__** %3, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %121 = call i32 @mbedtls_zeroize(%struct.TYPE_17__* %120, i32 72)
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %124 = icmp ne %struct.TYPE_17__* %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %127 = call i32 @mbedtls_free(%struct.TYPE_17__* %126)
  br label %128

128:                                              ; preds = %125, %115
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %131 = icmp ne %struct.TYPE_17__* %130, null
  br i1 %131, label %115, label %132

132:                                              ; preds = %12, %129
  ret void
}

declare dso_local i32 @mbedtls_pk_free(i32*) #1

declare dso_local i32 @mbedtls_zeroize(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @mbedtls_free(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
