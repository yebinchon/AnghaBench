; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_easysrc.c_easysrc_add.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_easysrc.c_easysrc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slist_wc = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @easysrc_add(%struct.slist_wc** %0, i8* %1) #0 {
  %3 = alloca %struct.slist_wc**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.slist_wc*, align 8
  store %struct.slist_wc** %0, %struct.slist_wc*** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @CURLE_OK, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.slist_wc**, %struct.slist_wc*** %3, align 8
  %9 = load %struct.slist_wc*, %struct.slist_wc** %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct.slist_wc* @slist_wc_append(%struct.slist_wc* %9, i8* %10)
  store %struct.slist_wc* %11, %struct.slist_wc** %6, align 8
  %12 = load %struct.slist_wc*, %struct.slist_wc** %6, align 8
  %13 = icmp ne %struct.slist_wc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = call i32 (...) @easysrc_free()
  %16 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %16, i32* %5, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.slist_wc*, %struct.slist_wc** %6, align 8
  %19 = load %struct.slist_wc**, %struct.slist_wc*** %3, align 8
  store %struct.slist_wc* %18, %struct.slist_wc** %19, align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local %struct.slist_wc* @slist_wc_append(%struct.slist_wc*, i8*) #1

declare dso_local i32 @easysrc_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
