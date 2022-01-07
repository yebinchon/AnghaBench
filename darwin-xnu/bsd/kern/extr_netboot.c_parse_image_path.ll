; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_parse_image_path.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_parse_image_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.in_addr*, i8**, i8**, i8**)* @parse_image_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_image_path(i8* %0, %struct.in_addr* %1, i8** %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in_addr*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  store i8* %0, i8** %7, align 8
  store %struct.in_addr* %1, %struct.in_addr** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp sge i32 %15, 48
  br i1 %16, label %17, label %30

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sle i32 %21, 57
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %26 = load i8**, i8*** %9, align 8
  %27 = load i8**, i8*** %10, align 8
  %28 = load i8**, i8*** %11, align 8
  %29 = call i32 @parse_booter_path(i8* %24, %struct.in_addr* %25, i8** %26, i8** %27, i8** %28)
  store i32 %29, i32* %6, align 4
  br label %37

30:                                               ; preds = %17, %5
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %33 = load i8**, i8*** %9, align 8
  %34 = load i8**, i8*** %10, align 8
  %35 = load i8**, i8*** %11, align 8
  %36 = call i32 @parse_netboot_path(i8* %31, %struct.in_addr* %32, i8** %33, i8** %34, i8** %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %30, %23
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @parse_booter_path(i8*, %struct.in_addr*, i8**, i8**, i8**) #1

declare dso_local i32 @parse_netboot_path(i8*, %struct.in_addr*, i8**, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
