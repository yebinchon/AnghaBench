; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_formparse.c_slist_append.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_formparse.c_slist_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.curl_slist**, i8*)* @slist_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slist_append(%struct.curl_slist** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.curl_slist**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.curl_slist*, align 8
  store %struct.curl_slist** %0, %struct.curl_slist*** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.curl_slist**, %struct.curl_slist*** %4, align 8
  %8 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %8, i8* %9)
  store %struct.curl_slist* %10, %struct.curl_slist** %6, align 8
  %11 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %12 = icmp ne %struct.curl_slist* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %16 = load %struct.curl_slist**, %struct.curl_slist*** %4, align 8
  store %struct.curl_slist* %15, %struct.curl_slist** %16, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %13
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
