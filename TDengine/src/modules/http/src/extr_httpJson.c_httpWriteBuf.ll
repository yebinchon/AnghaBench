; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpJson.c_httpWriteBuf.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpJson.c_httpWriteBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HttpContext = type { i32, i32 }

@.str = private unnamed_addr constant [81 x i8] c"context:%p, fd:%d, ip:%s, dataSize:%d, writeSize:%d, failed to send response:\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"context:%p, fd:%d, ip:%s, dataSize:%d, writeSize:%d, response:\0A%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpWriteBuf(%struct.HttpContext* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.HttpContext*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.HttpContext* %0, %struct.HttpContext** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.HttpContext*, %struct.HttpContext** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @httpWriteBufByFd(%struct.HttpContext* %8, i8* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.HttpContext*, %struct.HttpContext** %4, align 8
  %17 = load %struct.HttpContext*, %struct.HttpContext** %4, align 8
  %18 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.HttpContext*, %struct.HttpContext** %4, align 8
  %21 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @httpError(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), %struct.HttpContext* %16, i32 %19, i32 %22, i32 %23, i32 %24, i8* %25)
  br label %39

27:                                               ; preds = %3
  %28 = load %struct.HttpContext*, %struct.HttpContext** %4, align 8
  %29 = load %struct.HttpContext*, %struct.HttpContext** %4, align 8
  %30 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.HttpContext*, %struct.HttpContext** %4, align 8
  %33 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @httpTrace(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), %struct.HttpContext* %28, i32 %31, i32 %34, i32 %35, i32 %36, i8* %37)
  br label %39

39:                                               ; preds = %27, %15
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @httpWriteBufByFd(%struct.HttpContext*, i8*, i32) #1

declare dso_local i32 @httpError(i8*, %struct.HttpContext*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @httpTrace(i8*, %struct.HttpContext*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
