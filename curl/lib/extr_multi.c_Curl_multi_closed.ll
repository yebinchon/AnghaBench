; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_multi_closed.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_multi_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.Curl_multi* }
%struct.Curl_multi = type { i32, i32, i32 (%struct.Curl_easy.0*, i32, i32, i32, i32)* }
%struct.Curl_easy.0 = type opaque
%struct.Curl_sh_entry = type { i32 }

@CURL_POLL_REMOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_multi_closed(%struct.Curl_easy* %0, i32 %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_multi*, align 8
  %6 = alloca %struct.Curl_sh_entry*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %8 = icmp ne %struct.Curl_easy* %7, null
  br i1 %8, label %9, label %50

9:                                                ; preds = %2
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 0
  %12 = load %struct.Curl_multi*, %struct.Curl_multi** %11, align 8
  store %struct.Curl_multi* %12, %struct.Curl_multi** %5, align 8
  %13 = load %struct.Curl_multi*, %struct.Curl_multi** %5, align 8
  %14 = icmp ne %struct.Curl_multi* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %9
  %16 = load %struct.Curl_multi*, %struct.Curl_multi** %5, align 8
  %17 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.Curl_sh_entry* @sh_getentry(i32* %17, i32 %18)
  store %struct.Curl_sh_entry* %19, %struct.Curl_sh_entry** %6, align 8
  %20 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %6, align 8
  %21 = icmp ne %struct.Curl_sh_entry* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %15
  %23 = load %struct.Curl_multi*, %struct.Curl_multi** %5, align 8
  %24 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %23, i32 0, i32 2
  %25 = load i32 (%struct.Curl_easy.0*, i32, i32, i32, i32)*, i32 (%struct.Curl_easy.0*, i32, i32, i32, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.Curl_easy.0*, i32, i32, i32, i32)* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.Curl_multi*, %struct.Curl_multi** %5, align 8
  %29 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %28, i32 0, i32 2
  %30 = load i32 (%struct.Curl_easy.0*, i32, i32, i32, i32)*, i32 (%struct.Curl_easy.0*, i32, i32, i32, i32)** %29, align 8
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %32 = bitcast %struct.Curl_easy* %31 to %struct.Curl_easy.0*
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @CURL_POLL_REMOVE, align 4
  %35 = load %struct.Curl_multi*, %struct.Curl_multi** %5, align 8
  %36 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %6, align 8
  %39 = getelementptr inbounds %struct.Curl_sh_entry, %struct.Curl_sh_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %30(%struct.Curl_easy.0* %32, i32 %33, i32 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %27, %22
  %43 = load %struct.Curl_sh_entry*, %struct.Curl_sh_entry** %6, align 8
  %44 = load %struct.Curl_multi*, %struct.Curl_multi** %5, align 8
  %45 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %44, i32 0, i32 0
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @sh_delentry(%struct.Curl_sh_entry* %43, i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %15
  br label %49

49:                                               ; preds = %48, %9
  br label %50

50:                                               ; preds = %49, %2
  ret void
}

declare dso_local %struct.Curl_sh_entry* @sh_getentry(i32*, i32) #1

declare dso_local i32 @sh_delentry(%struct.Curl_sh_entry*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
