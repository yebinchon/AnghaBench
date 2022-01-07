; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/extr_pbuf.c_pbuf_memfind.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/lwip-1.4.1/src/core/extr_pbuf.c_pbuf_memfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pbuf_memfind(%struct.pbuf* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.pbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pbuf* %0, %struct.pbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %8, align 8
  %17 = sub nsw i64 %15, %16
  store i64 %17, i64* %11, align 8
  %18 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add nsw i64 %21, %22
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %10, align 8
  br label %27

27:                                               ; preds = %45, %25
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @pbuf_memcmp(%struct.pbuf* %32, i64 %33, i8* %34, i64 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* %10, align 8
  store i64 %40, i64* %5, align 8
  br label %48

41:                                               ; preds = %31
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %10, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %41
  br label %27

46:                                               ; preds = %27
  br label %47

47:                                               ; preds = %46, %4
  store i64 65535, i64* %5, align 8
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

declare dso_local i64 @pbuf_memcmp(%struct.pbuf*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
