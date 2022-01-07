; ModuleID = '/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/core/extr_pbuf.c_pbuf_strstr.c'
source_filename = "/home/carl/AnghaBench/Arduino/tools/sdk/lwip/src/core/extr_pbuf.c_pbuf_strstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pbuf_strstr(%struct.pbuf* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.pbuf* %0, %struct.pbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 65535
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %9, %2
  store i32 65535, i32* %3, align 4
  br label %33

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @os_strlen(i8* %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp uge i64 %24, 65535
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 65535, i32* %3, align 4
  br label %33

27:                                               ; preds = %21
  %28 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @pbuf_memfind(%struct.pbuf* %28, i8* %29, i32 %31, i32 0)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %26, %20
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @pbuf_memfind(%struct.pbuf*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
