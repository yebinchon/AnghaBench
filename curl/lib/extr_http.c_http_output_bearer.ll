; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_http_output_bearer.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_http_output_bearer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Authorization: Bearer %s\0D\0A\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @http_output_bearer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_output_bearer(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %5 = load i32, i32* @CURLE_OK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %7 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i8** %8, i8*** %3, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @free(i8* %10)
  %12 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @aprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i8**, i8*** %3, align 8
  store i8* %15, i8** %16, align 8
  %17 = load i8**, i8*** %3, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %21, i32* %4, align 4
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @aprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
