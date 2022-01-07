; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/test_afl_fuzz_host/extr_test.c_mdns_test_query.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/test_afl_fuzz_host/extr_test.c_mdns_test_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MDNS_TYPE_PTR = common dso_local global i32 0, align 4
@search = common dso_local global i32 0, align 4
@ACTION_SEARCH_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*)* @mdns_test_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mdns_test_query(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* @MDNS_TYPE_PTR, align 4
  %9 = call i32 @mdns_test_search_init(i32* null, i8* %6, i8* %7, i32 %8, i32 3000, i32 20)
  store i32 %9, i32* @search, align 4
  %10 = load i32, i32* @search, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (...) @abort() #3
  unreachable

14:                                               ; preds = %2
  %15 = load i32, i32* @ACTION_SEARCH_ADD, align 4
  %16 = load i32, i32* @search, align 4
  %17 = call i64 @mdns_test_send_search_action(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @search, align 4
  %21 = call i32 @mdns_test_search_free(i32 %20)
  %22 = call i32 (...) @abort() #3
  unreachable

23:                                               ; preds = %14
  store i32* null, i32** %5, align 8
  %24 = call i32 @GetLastItem(i32** %5)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @mdns_test_execute_action(i32* %25)
  ret i32* null
}

declare dso_local i32 @mdns_test_search_init(i32*, i8*, i8*, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @mdns_test_send_search_action(i32, i32) #1

declare dso_local i32 @mdns_test_search_free(i32) #1

declare dso_local i32 @GetLastItem(i32**) #1

declare dso_local i32 @mdns_test_execute_action(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
