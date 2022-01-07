; ModuleID = '/home/carl/AnghaBench/curl/lib/vtls/extr_vtls.c_Curl_clone_primary_ssl_config.c'
source_filename = "/home/carl/AnghaBench/curl/lib/vtls/extr_vtls.c_Curl_clone_primary_ssl_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_primary_config = type { i32, i32, i32, i32, i32, i32 }

@CApath = common dso_local global i32 0, align 4
@CAfile = common dso_local global i32 0, align 4
@clientcert = common dso_local global i32 0, align 4
@random_file = common dso_local global i32 0, align 4
@egdsocket = common dso_local global i32 0, align 4
@cipher_list = common dso_local global i32 0, align 4
@cipher_list13 = common dso_local global i32 0, align 4
@pinned_key = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_clone_primary_ssl_config(%struct.ssl_primary_config* %0, %struct.ssl_primary_config* %1) #0 {
  %3 = alloca %struct.ssl_primary_config*, align 8
  %4 = alloca %struct.ssl_primary_config*, align 8
  store %struct.ssl_primary_config* %0, %struct.ssl_primary_config** %3, align 8
  store %struct.ssl_primary_config* %1, %struct.ssl_primary_config** %4, align 8
  %5 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %3, align 8
  %6 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %9 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %3, align 8
  %11 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %14 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %3, align 8
  %16 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %19 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %3, align 8
  %21 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %24 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %3, align 8
  %26 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %29 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %3, align 8
  %31 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ssl_primary_config*, %struct.ssl_primary_config** %4, align 8
  %34 = getelementptr inbounds %struct.ssl_primary_config, %struct.ssl_primary_config* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @CApath, align 4
  %36 = call i32 @CLONE_STRING(i32 %35)
  %37 = load i32, i32* @CAfile, align 4
  %38 = call i32 @CLONE_STRING(i32 %37)
  %39 = load i32, i32* @clientcert, align 4
  %40 = call i32 @CLONE_STRING(i32 %39)
  %41 = load i32, i32* @random_file, align 4
  %42 = call i32 @CLONE_STRING(i32 %41)
  %43 = load i32, i32* @egdsocket, align 4
  %44 = call i32 @CLONE_STRING(i32 %43)
  %45 = load i32, i32* @cipher_list, align 4
  %46 = call i32 @CLONE_STRING(i32 %45)
  %47 = load i32, i32* @cipher_list13, align 4
  %48 = call i32 @CLONE_STRING(i32 %47)
  %49 = load i32, i32* @pinned_key, align 4
  %50 = call i32 @CLONE_STRING(i32 %49)
  %51 = load i32, i32* @TRUE, align 4
  ret i32 %51
}

declare dso_local i32 @CLONE_STRING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
