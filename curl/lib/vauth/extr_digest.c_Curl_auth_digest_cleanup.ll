; ModuleID = '/home/carl/AnghaBench/curl/lib/vauth/extr_digest.c_Curl_auth_digest_cleanup.c'
source_filename = "/home/carl/AnghaBench/curl/lib/vauth/extr_digest.c_Curl_auth_digest_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.digestdata = type { i8*, i8*, i32, i64, i32, i32, i32, i32, i32, i32 }

@CURLDIGESTALGO_MD5 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_auth_digest_cleanup(%struct.digestdata* %0) #0 {
  %2 = alloca %struct.digestdata*, align 8
  store %struct.digestdata* %0, %struct.digestdata** %2, align 8
  %3 = load %struct.digestdata*, %struct.digestdata** %2, align 8
  %4 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %3, i32 0, i32 9
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @Curl_safefree(i32 %5)
  %7 = load %struct.digestdata*, %struct.digestdata** %2, align 8
  %8 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @Curl_safefree(i32 %9)
  %11 = load %struct.digestdata*, %struct.digestdata** %2, align 8
  %12 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @Curl_safefree(i32 %13)
  %15 = load %struct.digestdata*, %struct.digestdata** %2, align 8
  %16 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @Curl_safefree(i32 %17)
  %19 = load %struct.digestdata*, %struct.digestdata** %2, align 8
  %20 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @Curl_safefree(i32 %21)
  %23 = load %struct.digestdata*, %struct.digestdata** %2, align 8
  %24 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @Curl_safefree(i32 %25)
  %27 = load %struct.digestdata*, %struct.digestdata** %2, align 8
  %28 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @CURLDIGESTALGO_MD5, align 4
  %30 = load %struct.digestdata*, %struct.digestdata** %2, align 8
  %31 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** @FALSE, align 8
  %33 = load %struct.digestdata*, %struct.digestdata** %2, align 8
  %34 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @FALSE, align 8
  %36 = load %struct.digestdata*, %struct.digestdata** %2, align 8
  %37 = getelementptr inbounds %struct.digestdata, %struct.digestdata* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  ret void
}

declare dso_local i32 @Curl_safefree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
