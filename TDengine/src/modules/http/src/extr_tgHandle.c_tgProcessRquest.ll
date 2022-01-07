; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgHandle.c_tgProcessRquest.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgHandle.c_tgProcessRquest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HttpContext = type { i32, i32 }

@HTTP_PARSE_USR_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tgProcessRquest(%struct.HttpContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.HttpContext*, align 8
  %4 = alloca i8*, align 8
  store %struct.HttpContext* %0, %struct.HttpContext** %3, align 8
  %5 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %6 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @strlen(i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %12 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strlen(i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10, %1
  %17 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %18 = load i32, i32* @HTTP_PARSE_USR_ERROR, align 4
  %19 = call i32 @httpSendErrorResp(%struct.HttpContext* %17, i32 %18)
  store i32 0, i32* %2, align 4
  br label %30

20:                                               ; preds = %10
  %21 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %22 = call i8* @tgGetDbFromUrl(%struct.HttpContext* %21)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %30

26:                                               ; preds = %20
  %27 = load %struct.HttpContext*, %struct.HttpContext** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @tgProcessQueryRequest(%struct.HttpContext* %27, i8* %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %25, %16
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @httpSendErrorResp(%struct.HttpContext*, i32) #1

declare dso_local i8* @tgGetDbFromUrl(%struct.HttpContext*) #1

declare dso_local i32 @tgProcessQueryRequest(%struct.HttpContext*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
