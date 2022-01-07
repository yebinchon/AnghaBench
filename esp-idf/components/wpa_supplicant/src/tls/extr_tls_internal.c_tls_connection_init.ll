; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tls_internal.c_tls_connection_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tls_internal.c_tls_connection_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tls_connection = type { i32*, i32* }
%struct.tls_global = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tls_connection* @tls_connection_init(i8* %0) #0 {
  %2 = alloca %struct.tls_connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tls_connection*, align 8
  %5 = alloca %struct.tls_global*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.tls_global*
  store %struct.tls_global* %7, %struct.tls_global** %5, align 8
  %8 = call i64 @os_zalloc(i32 16)
  %9 = inttoptr i64 %8 to %struct.tls_connection*
  store %struct.tls_connection* %9, %struct.tls_connection** %4, align 8
  %10 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  %11 = icmp eq %struct.tls_connection* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.tls_connection* null, %struct.tls_connection** %2, align 8
  br label %15

13:                                               ; preds = %1
  %14 = load %struct.tls_connection*, %struct.tls_connection** %4, align 8
  store %struct.tls_connection* %14, %struct.tls_connection** %2, align 8
  br label %15

15:                                               ; preds = %13, %12
  %16 = load %struct.tls_connection*, %struct.tls_connection** %2, align 8
  ret %struct.tls_connection* %16
}

declare dso_local i64 @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
