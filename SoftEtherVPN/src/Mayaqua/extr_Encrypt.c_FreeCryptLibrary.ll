; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_FreeCryptLibrary.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_FreeCryptLibrary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@openssl_inited = common dso_local global i32 0, align 4
@openssl_lock = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeCryptLibrary() #0 {
  store i32 0, i32* @openssl_inited, align 4
  %1 = load i32*, i32** @openssl_lock, align 8
  %2 = call i32 @DeleteLock(i32* %1)
  store i32* null, i32** @openssl_lock, align 8
  %3 = call i32 (...) @OpenSSL_FreeLock()
  %4 = call i32 (...) @ENGINE_cleanup()
  %5 = call i32 @CONF_modules_unload(i32 1)
  %6 = call i32 (...) @EVP_cleanup()
  %7 = call i32 (...) @FreeOpenSSLThreadState()
  %8 = call i32 (...) @ERR_free_strings()
  %9 = call i32 (...) @SSL_COMP_free_compression_methods()
  ret void
}

declare dso_local i32 @DeleteLock(i32*) #1

declare dso_local i32 @OpenSSL_FreeLock(...) #1

declare dso_local i32 @ENGINE_cleanup(...) #1

declare dso_local i32 @CONF_modules_unload(i32) #1

declare dso_local i32 @EVP_cleanup(...) #1

declare dso_local i32 @FreeOpenSSLThreadState(...) #1

declare dso_local i32 @ERR_free_strings(...) #1

declare dso_local i32 @SSL_COMP_free_compression_methods(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
