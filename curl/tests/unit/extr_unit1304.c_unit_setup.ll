; ModuleID = '/home/carl/AnghaBench/curl/tests/unit/extr_unit1304.c_unit_setup.c'
source_filename = "/home/carl/AnghaBench/curl/tests/unit/extr_unit1304.c_unit_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@password = common dso_local global i32 0, align 4
@login = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @unit_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit_setup() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @password, align 4
  %3 = call i32 @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* @login, align 4
  %4 = load i32, i32* @password, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @login, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @password, align 4
  %11 = call i32 @Curl_safefree(i32 %10)
  %12 = load i32, i32* @login, align 4
  %13 = call i32 @Curl_safefree(i32 %12)
  %14 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %14, i32* %1, align 4
  br label %17

15:                                               ; preds = %6
  %16 = load i32, i32* @CURLE_OK, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @Curl_safefree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
