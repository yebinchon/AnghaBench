; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mprintf.c_addbyter.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mprintf.c_addbyter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsprintf = type { i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @addbyter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addbyter(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nsprintf*, align 8
  %7 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to %struct.nsprintf*
  store %struct.nsprintf* %9, %struct.nsprintf** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %7, align 1
  %12 = load %struct.nsprintf*, %struct.nsprintf** %6, align 8
  %13 = getelementptr inbounds %struct.nsprintf, %struct.nsprintf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.nsprintf*, %struct.nsprintf** %6, align 8
  %16 = getelementptr inbounds %struct.nsprintf, %struct.nsprintf* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load i8, i8* %7, align 1
  %21 = load %struct.nsprintf*, %struct.nsprintf** %6, align 8
  %22 = getelementptr inbounds %struct.nsprintf, %struct.nsprintf* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 %20, i8* %24, align 1
  %25 = load %struct.nsprintf*, %struct.nsprintf** %6, align 8
  %26 = getelementptr inbounds %struct.nsprintf, %struct.nsprintf* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %26, align 8
  %29 = load %struct.nsprintf*, %struct.nsprintf** %6, align 8
  %30 = getelementptr inbounds %struct.nsprintf, %struct.nsprintf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load i8, i8* %7, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
