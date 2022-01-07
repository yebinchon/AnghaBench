; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_main.c_free_globalconfig.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_main.c_free_globalconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { i32, i32*, i64, i32*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.GlobalConfig*)* @free_globalconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_globalconfig(%struct.GlobalConfig* %0) #0 {
  %2 = alloca %struct.GlobalConfig*, align 8
  store %struct.GlobalConfig* %0, %struct.GlobalConfig** %2, align 8
  %3 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %4 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @Curl_safefree(i32 %5)
  %7 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %8 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %13 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %18 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @fclose(i32* %19)
  br label %21

21:                                               ; preds = %16, %11, %1
  %22 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %23 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %25 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %30 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %35 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @fclose(i32* %36)
  br label %38

38:                                               ; preds = %33, %28, %21
  %39 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %40 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.GlobalConfig*, %struct.GlobalConfig** %2, align 8
  %42 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @Curl_safefree(i32 %43)
  ret void
}

declare dso_local i32 @Curl_safefree(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
