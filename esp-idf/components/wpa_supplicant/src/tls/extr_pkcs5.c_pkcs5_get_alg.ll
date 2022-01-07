; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_pkcs5.c_pkcs5_get_alg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_pkcs5.c_pkcs5_get_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_oid = type { i32, i32* }

@PKCS5_ALG_MD5_DES_CBC = common dso_local global i32 0, align 4
@PKCS5_ALG_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asn1_oid*)* @pkcs5_get_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs5_get_alg(%struct.asn1_oid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asn1_oid*, align 8
  store %struct.asn1_oid* %0, %struct.asn1_oid** %3, align 8
  %4 = load %struct.asn1_oid*, %struct.asn1_oid** %3, align 8
  %5 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %8, label %59

8:                                                ; preds = %1
  %9 = load %struct.asn1_oid*, %struct.asn1_oid** %3, align 8
  %10 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %59

15:                                               ; preds = %8
  %16 = load %struct.asn1_oid*, %struct.asn1_oid** %3, align 8
  %17 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %59

22:                                               ; preds = %15
  %23 = load %struct.asn1_oid*, %struct.asn1_oid** %3, align 8
  %24 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 840
  br i1 %28, label %29, label %59

29:                                               ; preds = %22
  %30 = load %struct.asn1_oid*, %struct.asn1_oid** %3, align 8
  %31 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 113549
  br i1 %35, label %36, label %59

36:                                               ; preds = %29
  %37 = load %struct.asn1_oid*, %struct.asn1_oid** %3, align 8
  %38 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %59

43:                                               ; preds = %36
  %44 = load %struct.asn1_oid*, %struct.asn1_oid** %3, align 8
  %45 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 5
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.asn1_oid*, %struct.asn1_oid** %3, align 8
  %52 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @PKCS5_ALG_MD5_DES_CBC, align 4
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %50, %43, %36, %29, %22, %15, %8, %1
  %60 = load i32, i32* @PKCS5_ALG_UNKNOWN, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
