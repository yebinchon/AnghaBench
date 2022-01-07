; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_formdata.c_curl_formfree.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_formdata.c_curl_formfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_httppost = type { i32, %struct.curl_httppost*, %struct.curl_httppost*, %struct.curl_httppost*, %struct.curl_httppost*, %struct.curl_httppost*, %struct.curl_httppost* }

@HTTPPOST_PTRNAME = common dso_local global i32 0, align 4
@HTTPPOST_PTRCONTENTS = common dso_local global i32 0, align 4
@HTTPPOST_BUFFER = common dso_local global i32 0, align 4
@HTTPPOST_CALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @curl_formfree(%struct.curl_httppost* %0) #0 {
  %2 = alloca %struct.curl_httppost*, align 8
  %3 = alloca %struct.curl_httppost*, align 8
  store %struct.curl_httppost* %0, %struct.curl_httppost** %2, align 8
  %4 = load %struct.curl_httppost*, %struct.curl_httppost** %2, align 8
  %5 = icmp ne %struct.curl_httppost* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %57

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %54, %7
  %9 = load %struct.curl_httppost*, %struct.curl_httppost** %2, align 8
  %10 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %9, i32 0, i32 6
  %11 = load %struct.curl_httppost*, %struct.curl_httppost** %10, align 8
  store %struct.curl_httppost* %11, %struct.curl_httppost** %3, align 8
  %12 = load %struct.curl_httppost*, %struct.curl_httppost** %2, align 8
  %13 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %12, i32 0, i32 5
  %14 = load %struct.curl_httppost*, %struct.curl_httppost** %13, align 8
  call void @curl_formfree(%struct.curl_httppost* %14)
  %15 = load %struct.curl_httppost*, %struct.curl_httppost** %2, align 8
  %16 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HTTPPOST_PTRNAME, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %8
  %22 = load %struct.curl_httppost*, %struct.curl_httppost** %2, align 8
  %23 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %22, i32 0, i32 4
  %24 = load %struct.curl_httppost*, %struct.curl_httppost** %23, align 8
  %25 = call i32 @free(%struct.curl_httppost* %24)
  br label %26

26:                                               ; preds = %21, %8
  %27 = load %struct.curl_httppost*, %struct.curl_httppost** %2, align 8
  %28 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @HTTPPOST_PTRCONTENTS, align 4
  %31 = load i32, i32* @HTTPPOST_BUFFER, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @HTTPPOST_CALLBACK, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %29, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = load %struct.curl_httppost*, %struct.curl_httppost** %2, align 8
  %39 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %38, i32 0, i32 3
  %40 = load %struct.curl_httppost*, %struct.curl_httppost** %39, align 8
  %41 = call i32 @free(%struct.curl_httppost* %40)
  br label %42

42:                                               ; preds = %37, %26
  %43 = load %struct.curl_httppost*, %struct.curl_httppost** %2, align 8
  %44 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %43, i32 0, i32 2
  %45 = load %struct.curl_httppost*, %struct.curl_httppost** %44, align 8
  %46 = call i32 @free(%struct.curl_httppost* %45)
  %47 = load %struct.curl_httppost*, %struct.curl_httppost** %2, align 8
  %48 = getelementptr inbounds %struct.curl_httppost, %struct.curl_httppost* %47, i32 0, i32 1
  %49 = load %struct.curl_httppost*, %struct.curl_httppost** %48, align 8
  %50 = call i32 @free(%struct.curl_httppost* %49)
  %51 = load %struct.curl_httppost*, %struct.curl_httppost** %2, align 8
  %52 = call i32 @free(%struct.curl_httppost* %51)
  %53 = load %struct.curl_httppost*, %struct.curl_httppost** %3, align 8
  store %struct.curl_httppost* %53, %struct.curl_httppost** %2, align 8
  br label %54

54:                                               ; preds = %42
  %55 = load %struct.curl_httppost*, %struct.curl_httppost** %2, align 8
  %56 = icmp ne %struct.curl_httppost* %55, null
  br i1 %56, label %8, label %57

57:                                               ; preds = %6, %54
  ret void
}

declare dso_local i32 @free(%struct.curl_httppost*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
