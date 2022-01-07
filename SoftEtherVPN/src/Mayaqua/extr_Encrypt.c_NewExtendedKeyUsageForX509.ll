; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_NewExtendedKeyUsageForX509.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_NewExtendedKeyUsageForX509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_server_auth = common dso_local global i32 0, align 4
@NID_client_auth = common dso_local global i32 0, align 4
@NID_code_sign = common dso_local global i32 0, align 4
@NID_email_protect = common dso_local global i32 0, align 4
@NID_ipsecEndSystem = common dso_local global i32 0, align 4
@NID_ipsecTunnel = common dso_local global i32 0, align 4
@NID_ipsecUser = common dso_local global i32 0, align 4
@NID_time_stamp = common dso_local global i32 0, align 4
@NID_OCSP_sign = common dso_local global i32 0, align 4
@NID_ext_key_usage = common dso_local global i32 0, align 4
@ASN1_OBJECT_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NewExtendedKeyUsageForX509() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* (...) @sk_ASN1_OBJECT_new_null()
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = load i32, i32* @NID_server_auth, align 4
  %6 = call i32 @AddKeyUsageX509(i32* %4, i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* @NID_client_auth, align 4
  %9 = call i32 @AddKeyUsageX509(i32* %7, i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @NID_code_sign, align 4
  %12 = call i32 @AddKeyUsageX509(i32* %10, i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = load i32, i32* @NID_email_protect, align 4
  %15 = call i32 @AddKeyUsageX509(i32* %13, i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = load i32, i32* @NID_ipsecEndSystem, align 4
  %18 = call i32 @AddKeyUsageX509(i32* %16, i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @NID_ipsecTunnel, align 4
  %21 = call i32 @AddKeyUsageX509(i32* %19, i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = load i32, i32* @NID_ipsecUser, align 4
  %24 = call i32 @AddKeyUsageX509(i32* %22, i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = load i32, i32* @NID_time_stamp, align 4
  %27 = call i32 @AddKeyUsageX509(i32* %25, i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = load i32, i32* @NID_OCSP_sign, align 4
  %30 = call i32 @AddKeyUsageX509(i32* %28, i32 %29)
  %31 = load i32, i32* @NID_ext_key_usage, align 4
  %32 = load i32*, i32** %1, align 8
  %33 = call i32* @X509V3_EXT_i2d(i32 %31, i32 0, i32* %32)
  store i32* %33, i32** %2, align 8
  %34 = load i32*, i32** %1, align 8
  %35 = load i32, i32* @ASN1_OBJECT_free, align 4
  %36 = call i32 @sk_ASN1_OBJECT_pop_free(i32* %34, i32 %35)
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

declare dso_local i32* @sk_ASN1_OBJECT_new_null(...) #1

declare dso_local i32 @AddKeyUsageX509(i32*, i32) #1

declare dso_local i32* @X509V3_EXT_i2d(i32, i32, i32*) #1

declare dso_local i32 @sk_ASN1_OBJECT_pop_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
